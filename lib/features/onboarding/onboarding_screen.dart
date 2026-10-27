import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/access.dart';
import '../../core/nav.dart' show connectPath;
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../auth/auth_controller.dart';
import '../forecasting/forecasting_providers.dart' show Json;
import '../forecasting/forecasting_widgets.dart'
    show ConfirmRow, Footnote, PlainField, WriteTracking;
import '../setup/setup_wizard_store.dart';
import '../sources/source_providers.dart' show sourceListProvider;
import '../storage/resources_panel.dart' show ThresholdsCard;
import '../storage/retention_cap_panel.dart' show RetentionCapPanel;
import '../system/smtp_settings.dart' show SmtpSettingsCard, smtpSettingsProvider;
import 'onboarding_providers.dart';

/// The steps of onboarding, in order.
enum OnboardingStep {
  /// Create the first admin and sign in as them.
  admin(
    'First admin',
    'Create the first admin',
    'The account that runs this instance. You are '
        'signed in as it when it is made.',
  ),

  /// The SMTP server, with a test send.
  smtp(
    'Email',
    'Set up email',
    'Activation and password-reset links go out by email. Save the '
        'server, then send a test.',
  ),

  /// The starter sources.
  sources(
    'Sources',
    'Turn on starter sources',
    'So the instance collects something from the '
        'start: the core live-tracking set, and optionally every source that needs no key.',
  ),

  /// Disk thresholds and the retention default.
  thresholds(
    'Disk safety',
    'Set disk safety',
    'Warnings before the disk fills, and the history '
        'cap (off: everything is kept).',
  ),

  /// What was done, with links to the full screens.
  summary('Done', 'You are set up', 'Everything here can be changed later on its own screen.');

  const OnboardingStep(this.label, this.title, this.description);

  /// The stepper label.
  final String label;

  /// The step heading.
  final String title;

  /// What the step does.
  final String description;
}

/// The step to resume at for [status] (a `FirstRunStatus`): the first one
/// the backend does not show as done.
OnboardingStep resumeStep(Json status) {
  if (isFirstRun(status)) {
    return OnboardingStep.admin;
  }
  if (status['smtpConfigured'] != true) {
    return OnboardingStep.smtp;
  }
  if ((status['sourcesEnabled'] as num? ?? 0) == 0) {
    return OnboardingStep.sources;
  }
  return OnboardingStep.thresholds;
}

/// First-run onboarding (desktop, `/onboarding`): a fresh instance with no
/// users is guided through the first admin, email, starter sources and disk
/// safety. It chains the real forms (the SMTP card, the thresholds card, the
/// history cap) and owns no business logic. It is resumable: it opens at the
/// first step `getFirstRunStatus` does not show as done, and each step
/// re-reads to confirm.
class OnboardingScreen extends ConsumerStatefulWidget {
  /// Creates the wizard.
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  OnboardingStep? _step;
  bool _smtpTested = false;
  bool _smtpSkipped = false;
  bool _confirmSkip = false;
  final List<Json> _enabledSources = <Json>[];

  Future<void> _finish() async {
    // The older connect-time wizard need not open on top of this one.
    await ref.read(setupWizardStoreProvider).write(SetupWizardStatus.completed);
    if (mounted) {
      context.go(sourcesPath);
    }
  }

  Widget _body(OnboardingStep step, Json status) => switch (step) {
    OnboardingStep.admin => FirstAdminStep(
      status: status,
      onDone: () => setState(() => _step = OnboardingStep.smtp),
    ),
    OnboardingStep.smtp => Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SmtpSettingsCard(onTested: (r) => setState(() => _smtpTested = r['ok'] == true)),
        const SizedBox(height: 16),
        Wrap(
          spacing: 12,
          runSpacing: 8,
          children: <Widget>[
            FilledButton(
              key: const Key('onboarding.smtpNext'),
              onPressed: _smtpTested ? () => setState(() => _step = OnboardingStep.sources) : null,
              child: const Text('Next'),
            ),
            TextButton(
              key: const Key('onboarding.smtpSkip'),
              onPressed: () => setState(() => _confirmSkip = true),
              child: const Text('Skip email for now'),
            ),
          ],
        ),
        if (!_smtpTested) const Footnote('Next is available once a test email has gone out.'),
        if (_confirmSkip) ...<Widget>[
          const SizedBox(height: 12),
          ConfirmRow(
            confirmKey: const Key('onboarding.confirmSmtpSkip'),
            message:
                'Without email, activation and password-reset emails are not delivered: each '
                'link has to be handed to its user by hand. Skip anyway?',
            action: 'Skip Email',
            onConfirm: () => setState(() {
              _confirmSkip = false;
              _smtpSkipped = true;
              _step = OnboardingStep.sources;
            }),
            onCancel: () => setState(() => _confirmSkip = false),
          ),
        ],
      ],
    ),
    OnboardingStep.sources => StarterSourcesStep(
      status: status,
      onEnabled: (r) => setState(() => _enabledSources.add(r)),
      onDone: () => setState(() => _step = OnboardingStep.thresholds),
    ),
    OnboardingStep.thresholds => Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const ThresholdsCard(),
        const SizedBox(height: 20),
        const RetentionCapPanel(),
        const SizedBox(height: 16),
        Align(
          alignment: Alignment.centerLeft,
          child: FilledButton(
            key: const Key('onboarding.thresholdsNext'),
            onPressed: () => setState(() => _step = OnboardingStep.summary),
            child: const Text('Next'),
          ),
        ),
      ],
    ),
    OnboardingStep.summary => OnboardingSummary(
      status: status,
      smtpTested: _smtpTested,
      smtpSkipped: _smtpSkipped,
      enabled: _enabledSources,
      onFinish: _finish,
    ),
  };

  @override
  Widget build(BuildContext context) {
    final status = ref.watch(firstRunStatusProvider);
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        const PageHeader(
          title: 'Welcome to ForeSignal',
          subtitle: 'A few steps make this instance ready to use.',
        ),
        AsyncView<Json>(
          value: status,
          onRetry: () => ref.invalidate(firstRunStatusProvider),
          data: (s) {
            final step = _step ?? resumeStep(s);
            final firstRun = isFirstRun(s);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Wrap(
                  key: const Key('onboarding.stepper'),
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    for (final t in OnboardingStep.values)
                      ChoiceChip(
                        key: Key('onboarding.step.${t.name}'),
                        label: Text('${t.index + 1}. ${t.label}'),
                        selected: t == step,
                        // Until the first admin exists, nothing after it can be done.
                        onSelected: firstRun && t != OnboardingStep.admin
                            ? null
                            : (_) => setState(() => _step = t),
                      ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(step.title, style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 6),
                Text(step.description, style: TextStyle(color: AdminPalette.of(context).muted)),
                const SizedBox(height: 20),
                _body(step, s),
              ],
            );
          },
        ),
      ],
    );
  }
}

/// Step 1: create the first admin (`runSetup`, authorized by the bootstrap
/// admin token), then sign in as them. The password is sent once and
/// cleared.
class FirstAdminStep extends ConsumerStatefulWidget {
  /// Creates the step for [status].
  const FirstAdminStep({super.key, required this.status, required this.onDone});

  /// The first-run status.
  final Json status;

  /// Called once the admin exists and is signed in.
  final VoidCallback onDone;

  @override
  ConsumerState<FirstAdminStep> createState() => _FirstAdminStepState();
}

class _FirstAdminStepState extends ConsumerState<FirstAdminStep>
    with WriteTracking<FirstAdminStep> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _again = TextEditingController();
  Map<String, String> _errors = const <String, String>{};

  @override
  void dispose() {
    _email.dispose();
    _name.dispose();
    _password.dispose();
    _again.dispose();
    super.dispose();
  }

  Future<void> _create() async {
    final email = _email.text.trim();
    final name = _name.text.trim();
    final password = _password.text;
    final errors = <String, String>{
      if (!RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(email)) 'email': 'An email address.',
      if (name.isEmpty) 'name': 'The admin\'s full name.',
      if (password.isEmpty) 'password': 'A password.',
      if (password.isNotEmpty && password != _again.text) 'again': 'The passwords differ.',
    };
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    final dio = ref.read(backendDioProvider);
    final done = await track(() async {
      final result = await jsonObjectCall(
        dio,
        'POST',
        '/v1/setup',
        body: <String, Object?>{
          'admin': <String, Object?>{'email': email, 'fullName': name, 'password': password},
        },
      );
      final session = (result['session'] as Map?)?.cast<String, Object?>();
      final token = session?['token'];
      final expiresAt = DateTime.tryParse('${session?['expiresAt']}');
      if (session != null && token is String && token.isNotEmpty && expiresAt != null) {
        await ref
            .read(sessionControllerProvider.notifier)
            .signedIn(
              StoredSession(
                token: token,
                tokenPrefix: session['tokenPrefix'] as String?,
                userId: '${session['userId'] ?? (result['user'] as Map?)?['id'] ?? ''}',
                email: email,
                expiresAt: expiresAt,
                idleExpiresAt: DateTime.tryParse('${session['idleExpiresAt']}'),
                permissions: <String>[
                  for (final p in (session['permissions'] as List?) ?? const <Object?>[]) '$p',
                ],
                scopes: <String>[
                  for (final s in (session['scopes'] as List?) ?? const <Object?>[]) '$s',
                ],
              ),
            );
      } else {
        // No session in the answer: sign in with what was just set.
        final outcome = await ref
            .read(authControllerProvider)
            .signIn(email: email, password: password);
        if (outcome is! LoginSignedIn) {
          throw const WriteNotConfirmedException(
            'The admin was created, but signing in needs a code. Sign in from the login page.',
          );
        }
      }
      ref.invalidate(firstRunStatusProvider);
      final status = await ref.read(firstRunStatusProvider.future);
      if (isFirstRun(status)) {
        throw const WriteNotConfirmedException('The instance still reports no users.');
      }
      return true;
    });
    _password.clear();
    _again.clear();
    if (done != null && mounted) {
      refreshAccess(ref);
      widget.onDone();
    }
  }

  @override
  Widget build(BuildContext context) {
    final access = ref.watch(accessProvider);
    if (!isFirstRun(widget.status)) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ResultPanel(
            key: const Key('onboarding.adminDone'),
            title: 'The first admin exists',
            tone: StatusTone.ok,
            message: access.kind == AccessKind.session
                ? 'Signed in as ${access.email ?? access.user?.email ?? 'the admin'}.'
                : 'Sign in as the admin to continue with the remaining steps.',
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: access.kind == AccessKind.anonymous
                ? TonalButton(
                    key: const Key('onboarding.signIn'),
                    label: 'Sign in',
                    icon: Icons.login,
                    onPressed: () => context.go(loginPath),
                  )
                : FilledButton(
                    key: const Key('onboarding.adminNext'),
                    onPressed: widget.onDone,
                    child: const Text('Next'),
                  ),
          ),
        ],
      );
    }
    if (access.kind != AccessKind.adminToken) {
      return ResultPanel(
        key: const Key('onboarding.needsAdminToken'),
        title: 'Connect with the bootstrap admin token',
        tone: StatusTone.info,
        message:
            'The first admin is created with the admin token the server printed at install. '
            'Enter it on Connect, then come back here.',
        child: Align(
          alignment: Alignment.centerLeft,
          child: TonalButton(
            key: const Key('onboarding.toConnect'),
            label: 'Open Connect',
            icon: Icons.link,
            onPressed: () => context.go(connectPath),
          ),
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        LabeledField(
          label: 'Email',
          field: PlainField(
            key: const Key('onboarding.email'),
            controller: _email,
            error: _errors['email'],
          ),
        ),
        LabeledField(
          label: 'Full name',
          field: PlainField(
            key: const Key('onboarding.name'),
            controller: _name,
            error: _errors['name'],
          ),
        ),
        for (final (key, label, controller) in <(String, String, TextEditingController)>[
          ('password', 'Password', _password),
          ('again', 'Password again', _again),
        ])
          LabeledField(
            label: label,
            field: TextField(
              key: Key('onboarding.$key'),
              controller: controller,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(isDense: true, errorText: _errors[key]),
            ),
          ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            FilledButton(
              key: const Key('onboarding.createAdmin'),
              onPressed: busy ? null : _create,
              child: const Text('Create Admin and Sign In'),
            ),
            statusLine,
          ],
        ),
      ],
    );
  }
}

/// Step 3: the starter sources (`enableCoreSources`, and optionally
/// `enableFreeSources`), confirmed by `getFirstRunStatus`'s count.
class StarterSourcesStep extends ConsumerStatefulWidget {
  /// Creates the step.
  const StarterSourcesStep({
    super.key,
    required this.status,
    required this.onEnabled,
    required this.onDone,
  });

  /// The first-run status.
  final Json status;

  /// Called with each `Enable*SourcesResult`.
  final ValueChanged<Json> onEnabled;

  /// Moves on.
  final VoidCallback onDone;

  @override
  ConsumerState<StarterSourcesStep> createState() => _StarterSourcesStepState();
}

class _StarterSourcesStepState extends ConsumerState<StarterSourcesStep>
    with WriteTracking<StarterSourcesStep> {
  bool _free = false;
  final List<(String, Json)> _results = <(String, Json)>[];

  Future<void> _enable() async {
    final dio = ref.read(backendDioProvider);
    final done = await track(() async {
      final results = <(String, Json)>[
        ('Core sources', await jsonObjectCall(dio, 'POST', '/v1/sources/enable-core')),
        if (_free) ('Free sources', await jsonObjectCall(dio, 'POST', '/v1/sources/enable-free')),
      ];
      ref.invalidate(firstRunStatusProvider);
      await ref.read(firstRunStatusProvider.future);
      return results;
    });
    if (done != null && mounted) {
      setState(() => _results.addAll(done));
      for (final r in done) {
        widget.onEnabled(r.$2);
      }
      ref.invalidate(sourceListProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final count = widget.status['sourcesEnabled'];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (count is num)
          Text('Sources collecting now: $count', key: const Key('onboarding.sourcesCount')),
        CheckboxListTile(
          key: const Key('onboarding.free'),
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.leading,
          value: _free,
          onChanged: busy ? null : (v) => setState(() => _free = v ?? false),
          title: const Text('Also every source that needs no key or setting'),
          subtitle: const Text(
            'Turned on at their default intervals; each can be turned off later.',
          ),
        ),
        Wrap(
          spacing: 12,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            FilledButton(
              key: const Key('onboarding.enableSources'),
              onPressed: busy ? null : _enable,
              child: Text(_free ? 'Enable Core and Free Sources' : 'Enable Core Sources'),
            ),
            TextButton(
              key: const Key('onboarding.sourcesNext'),
              onPressed: widget.onDone,
              child: Text(_results.isEmpty ? 'Skip' : 'Next'),
            ),
            statusLine,
          ],
        ),
        for (final (label, r) in _results) ...<Widget>[
          const SizedBox(height: 12),
          ResultPanel(
            key: Key('onboarding.enabled.$label'),
            title: '$label: ${r['count'] ?? 0} turned on',
            tone: StatusTone.ok,
            message: <String>[
              if ((r['enabled'] as List?)?.isNotEmpty ?? false) (r['enabled']! as List).join(', '),
              if ((r['skipped'] as num? ?? 0) > 0)
                '${r['skipped']} left off: they need a key or a setting.',
            ].join(' '),
          ),
        ],
      ],
    );
  }
}

/// The last step: what was set up, with links to each full screen.
class OnboardingSummary extends ConsumerWidget {
  /// Creates the summary.
  const OnboardingSummary({
    super.key,
    required this.status,
    required this.smtpTested,
    required this.smtpSkipped,
    required this.enabled,
    required this.onFinish,
  });

  /// The first-run status.
  final Json status;

  /// Whether a test email went out.
  final bool smtpTested;

  /// Whether email was skipped.
  final bool smtpSkipped;

  /// The `Enable*SourcesResult`s of this run.
  final List<Json> enabled;

  /// Leaves the wizard for the app.
  final VoidCallback onFinish;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final access = ref.watch(accessProvider);
    final smtp = ref.watch(smtpSettingsProvider).value;
    final turnedOn = enabled.fold<num>(0, (n, r) => n + (r['count'] as num? ?? 0));
    Widget link(String label, String path) => TextButton(
      key: Key('onboarding.link.$path'),
      onPressed: () => context.go(path),
      child: Text(label),
    );
    return Column(
      key: const Key('onboarding.summary'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        KeyValueList(
          entries: <MapEntry<String, Object>>[
            MapEntry<String, Object>(
              'Admin',
              access.kind == AccessKind.session
                  ? 'Signed in as ${access.email ?? access.user?.email ?? 'the admin'}'
                  : 'Created',
            ),
            MapEntry<String, Object>(
              'Email',
              smtpSkipped
                  ? 'Skipped: links must be handed over by hand'
                  : (smtpTested
                        ? 'Set up; a test email went out'
                        : (smtp?['enabled'] == true ? 'Set up' : 'Not set up')),
            ),
            MapEntry<String, Object>(
              'Sources',
              '${status['sourcesEnabled'] ?? '—'} collecting'
                  '${turnedOn > 0 ? ' ($turnedOn turned on here)' : ''}',
            ),
          ],
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 4,
          children: <Widget>[
            link('Users', usersPath),
            link('Email settings', systemSmtpPath),
            link('Sources', sourcesPath),
            link('Storage', storagePath),
            link('Your profile', profilePath),
          ],
        ),
        const SizedBox(height: 16),
        Align(
          alignment: Alignment.centerLeft,
          child: FilledButton.icon(
            key: const Key('onboarding.finish'),
            onPressed: onFinish,
            icon: const Icon(Icons.check),
            label: const Text('Open ForeSignal'),
          ),
        ),
      ],
    );
  }
}

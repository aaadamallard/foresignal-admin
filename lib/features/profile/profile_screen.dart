import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/access.dart';
import '../../core/form_factor.dart';
import '../../core/format/display_zone.dart';
import '../../core/permissions.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/theme_mode.dart';
import '../../core/ui/ui.dart';
import '../auth/auth_controller.dart';
import '../forecasting/forecasting_providers.dart' show Json;
import '../forecasting/forecasting_widgets.dart'
    show Footnote, PlainField, WireDropdown, WriteTracking, whenText;
import 'account_security.dart';
import 'profile_providers.dart';

/// The signed-in user's own profile (`/profile`, every form factor): who
/// they are and their roles (`getMe`), a password change through the reset
/// email, their preferences, their notification preferences and a glance at
/// their quota, and their account security (MFA, sessions, API tokens). It
/// needs no permission beyond being signed in; each card that needs one says
/// so.
class ProfileScreen extends ConsumerWidget {
  /// Creates the screen.
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final access = ref.watch(accessProvider);
    final desktop = ref.watch(formFactorProvider) == FormFactor.desktop;
    final padding = EdgeInsets.all(desktop ? 28 : 16);
    if (access.kind != AccessKind.session) {
      return ListView(
        padding: padding,
        children: <Widget>[
          const PageHeader(title: 'Profile'),
          ResultPanel(
            key: const Key('profile.signedOut'),
            title: 'Sign in to see your profile',
            tone: StatusTone.info,
            message: access.kind == AccessKind.adminToken
                ? 'The app is using the admin token, which belongs to no user.'
                : 'A profile belongs to a signed-in user.',
            child: Align(
              alignment: Alignment.centerLeft,
              child: TonalButton(
                key: const Key('profile.signIn'),
                label: 'Sign in',
                icon: Icons.login,
                onPressed: () => context.go(loginPath),
              ),
            ),
          ),
        ],
      );
    }
    return ListView(
      padding: padding,
      children: <Widget>[
        const PageHeader(
          title: 'Profile',
          subtitle: 'Your account, your preferences and your limits.',
        ),
        const IdentityCard(),
        const SizedBox(height: 20),
        const PasswordCard(),
        const SizedBox(height: 20),
        if (access.can(Permissions.selfPreferences))
          const PreferencesCard()
        else
          const PermissionDeniedPanel(
            permissions: <String>{Permissions.selfPreferences},
            title: 'Preferences',
          ),
        const SizedBox(height: 20),
        const NotificationPreferencesCard(),
        const SizedBox(height: 20),
        const QuotaCard(),
        const SizedBox(height: 28),
        const AccountSecuritySection(),
      ],
    );
  }
}

/// Who the user is, from `getMe`: name, email, handle, roles, MFA and last
/// sign-in. Read-only: the contract has no self-update for the name or
/// email, and roles are an admin's to change.
class IdentityCard extends ConsumerWidget {
  /// Creates the card.
  const IdentityCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SectionCard(
      key: const Key('profile.identity'),
      title: 'Account',
      child: AsyncView<Me?>(
        value: ref.watch(meProvider),
        onRetry: () => ref.invalidate(meProvider),
        data: (me) {
          final user = me?.user;
          final roles = user?.roles.map((r) => r.name).toList() ?? const <String>[];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              KeyValueList(
                entries: <MapEntry<String, Object>>[
                  MapEntry<String, Object>(
                    'Name',
                    user?.fullName ?? me?.principal.displayName ?? '—',
                  ),
                  MapEntry<String, Object>(
                    'Email',
                    user?.email ?? ref.watch(accessProvider).email ?? '—',
                  ),
                  if (me != null) MapEntry<String, Object>('Handle', me.principal.handle),
                  MapEntry<String, Object>(
                    'Two-factor sign-in',
                    switch (user?.mfaEnabled) {
                      true => 'On',
                      false => 'Off',
                      null => '—',
                    },
                  ),
                  MapEntry<String, Object>(
                    'Last sign-in',
                    user?.lastLoginAt == null
                        ? '—'
                        : whenText(user!.lastLoginAt!.toIso8601String()),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Wrap(
                key: const Key('profile.roles'),
                spacing: 8,
                runSpacing: 8,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  const Text('Roles'),
                  if (roles.isEmpty) const Text('None'),
                  for (final role in roles) StatusChip(label: role, tone: StatusTone.info),
                ],
              ),
              const Footnote(
                'An admin changes your name, email and roles on Users & Roles.',
              ),
            ],
          );
        },
      ),
    );
  }
}

/// Change password, through the reset email: the contract has no signed-in
/// password change, so this sends `requestPasswordReset` for the user's own
/// email and says how to finish.
class PasswordCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const PasswordCard({super.key});

  @override
  ConsumerState<PasswordCard> createState() => _PasswordCardState();
}

class _PasswordCardState extends ConsumerState<PasswordCard> with WriteTracking<PasswordCard> {
  String? _sentTo;

  Future<void> _send(String email) async {
    final done = await track(() async {
      await ref.read(authControllerProvider).requestPasswordReset(email);
      return true;
    });
    if (done != null && mounted) {
      setState(() => _sentTo = email);
    }
  }

  @override
  Widget build(BuildContext context) {
    final access = ref.watch(accessProvider);
    final email = access.user?.email ?? access.email;
    return SectionCard(
      key: const Key('profile.password'),
      title: 'Password',
      subtitle:
          'This server changes a password through an emailed link, not in the app: there is no '
          'old-and-new password form to send.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (_sentTo case final sent?)
            ResultPanel(
              key: const Key('profile.resetSent'),
              title: 'Check your email',
              tone: StatusTone.ok,
              message:
                  'A reset link was sent to $sent. Open it to choose a new password; it opens this '
                  'app\'s Reset password screen. The link works once and expires, and your current '
                  'password keeps working until you use it. If nothing arrives, the server may have '
                  'no email set up; ask an admin.',
            )
          else
            Align(
              alignment: Alignment.centerLeft,
              child: TonalButton(
                key: const Key('profile.changePassword'),
                label: 'Change password',
                icon: Icons.lock_reset,
                onPressed: email == null || busy ? null : () => _send(email),
              ),
            ),
          if (email == null) const Footnote('Your email is not known yet, so no link can be sent.'),
          const SizedBox(height: 8),
          statusLine,
        ],
      ),
    );
  }
}

/// The user's preferences (`getMyPreferences` / `updateMyPreferences`):
/// timezone, language, theme, notification defaults and the free-form UI
/// options, saved and re-read.
class PreferencesCard extends ConsumerWidget {
  /// Creates the card.
  const PreferencesCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SectionCard(
      key: const Key('profile.preferences'),
      title: 'Preferences',
      subtitle: 'Times in this app are shown in your timezone.',
      child: AsyncView<Json>(
        value: ref.watch(myPreferencesProvider),
        onRetry: () => ref.invalidate(myPreferencesProvider),
        data: (read) => PreferencesForm(key: ValueKey<String>(jsonEncode(read)), read: read),
      ),
    );
  }
}

/// The editor of [read], the preferences as the server sent them.
class PreferencesForm extends ConsumerStatefulWidget {
  /// Creates the form.
  const PreferencesForm({super.key, required this.read});

  /// The preferences as read.
  final Json read;

  @override
  ConsumerState<PreferencesForm> createState() => _PreferencesFormState();
}

class _PreferencesFormState extends ConsumerState<PreferencesForm>
    with WriteTracking<PreferencesForm> {
  static const List<String> themes = <String>['system', 'light', 'dark'];

  TextEditingController? _timezone;
  late final TextEditingController _locale = TextEditingController(
    text: widget.read['locale'] as String? ?? '',
  );
  late final TextEditingController _quietHours = TextEditingController(
    text: _notifications['quietHours'] as String? ?? '',
  );
  late final TextEditingController _ui = TextEditingController(
    text: const JsonEncoder.withIndent(
      '  ',
    ).convert(widget.read['ui'] ?? const <String, Object?>{}),
  );
  late String? _theme = widget.read['theme'] as String?;
  late bool? _email = _notifications['emailEnabled'] as bool?;
  late bool? _push = _notifications['pushEnabled'] as bool?;
  String? _uiError;
  String? _quietError;

  Json get _notifications =>
      (widget.read['notifications'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{};

  @override
  void dispose() {
    _locale.dispose();
    _quietHours.dispose();
    _ui.dispose();
    super.dispose();
  }

  String? _orNull(String text) => text.trim().isEmpty ? null : text.trim();

  Future<void> _save() async {
    Json ui;
    try {
      final parsed = _ui.text.trim().isEmpty ? <String, Object?>{} : jsonDecode(_ui.text);
      if (parsed is! Map) {
        throw const FormatException('Not an object');
      }
      ui = parsed.cast<String, Object?>();
    } on FormatException {
      setState(() => _uiError = 'Enter a JSON object, such as {"density": "compact"}.');
      return;
    }
    final quiet = _orNull(_quietHours.text);
    if (quiet != null &&
        !RegExp(r'^([01]\d|2[0-3]):[0-5]\d-([01]\d|2[0-3]):[0-5]\d$').hasMatch(quiet)) {
      setState(() => _quietError = 'Use HH:MM-HH:MM, such as 22:00-07:00.');
      return;
    }
    setState(() {
      _uiError = null;
      _quietError = null;
    });
    final timezone = _orNull(_timezone?.text ?? widget.read['timezone'] as String? ?? '');
    final locale = _orNull(_locale.text);
    final notifications = <String, Object?>{
      if (_email != _notifications['emailEnabled']) 'emailEnabled': _email,
      if (_push != _notifications['pushEnabled']) 'pushEnabled': _push,
      if (quiet != _notifications['quietHours']) 'quietHours': quiet,
    };
    final body = preferencesUpdateBody(
      widget.read,
      timezone: timezone,
      locale: locale,
      theme: _theme,
      ui: ui,
      notifications: notifications,
    );
    final dio = ref.read(backendDioProvider);
    final done = await track(
      () => writeThenConfirm<Json>(
        write: () => jsonObjectCall(dio, 'PUT', '/v1/me/preferences', body: body),
        reread: () => jsonObjectCall(dio, 'GET', '/v1/me/preferences'),
        confirm: (back) {
          // An empty field resets to the server's default, which reads back
          // filled in; only a value the user gave is compared.
          for (final (key, sent) in <(String, String?)>[
            ('timezone', timezone),
            ('locale', locale),
            ('theme', _theme),
          ]) {
            if (sent != null && back[key] != sent) {
              return '${wireText(key)} reads back as ${back[key] ?? 'the default'}, not $sent.';
            }
          }
          return null;
        },
      ),
    );
    if (done != null && mounted) {
      final mode = switch (_theme) {
        'light' => ThemeMode.light,
        'dark' => ThemeMode.dark,
        'system' => ThemeMode.system,
        _ => null,
      };
      if (mode != null && _theme != widget.read['theme']) {
        await ref.read(themeModeProvider.notifier).set(mode);
      }
      ref.invalidate(myPreferencesProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final read = widget.read;
    final readZone = read['timezone'] as String?;
    final readTheme = read['theme'] as String?;
    final zones = <String>['UTC', ...DisplayZone.known];
    final muted = AdminPalette.of(context).muted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        LabeledField(
          label: 'Timezone',
          help: 'Empty uses the server\'s zone.',
          field: Autocomplete<String>(
            initialValue: TextEditingValue(text: readZone ?? ''),
            optionsBuilder: (value) {
              final q = value.text.toLowerCase();
              return q.isEmpty
                  ? const Iterable<String>.empty()
                  : zones.where((z) => z.toLowerCase().contains(q)).take(30);
            },
            fieldViewBuilder: (context, controller, focus, onSubmitted) {
              _timezone = controller;
              return TextField(
                key: const Key('prefs.timezone'),
                controller: controller,
                focusNode: focus,
                decoration: const InputDecoration(
                  isDense: true,
                  hintText: 'Search, such as Chicago',
                ),
                onSubmitted: (_) => onSubmitted(),
              );
            },
          ),
        ),
        if (readZone != null && !DisplayZone.isKnown(readZone))
          Footnote('This build does not know $readZone; it is kept as the server sent it.'),
        LabeledField(
          label: 'Language',
          help: 'A BCP 47 tag; empty uses the instance default.',
          field: PlainField(key: const Key('prefs.locale'), controller: _locale, hint: 'en-US'),
        ),
        LabeledField(
          label: 'Theme',
          field: Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 240,
              child: WireDropdown(
                key: const Key('prefs.theme'),
                value: _theme,
                // A theme a newer server offers stays listed and selected.
                values: <String>[
                  ...themes,
                  if (readTheme != null && !themes.contains(readTheme)) readTheme,
                ],
                hint: 'System',
                onChanged: (v) => setState(() => _theme = v),
              ),
            ),
          ),
        ),
        LabeledField(
          label: 'Email notifications',
          help: 'Turns every email delivery of yours on or off.',
          field: Align(
            alignment: Alignment.centerLeft,
            child: Switch(
              key: const Key('prefs.emailEnabled'),
              value: _email ?? true,
              onChanged: busy ? null : (v) => setState(() => _email = v),
            ),
          ),
        ),
        LabeledField(
          label: 'Push notifications',
          help: 'Turns every push delivery of yours (ntfy, Gotify, Pushover, web push) on or off.',
          field: Align(
            alignment: Alignment.centerLeft,
            child: Switch(
              key: const Key('prefs.pushEnabled'),
              value: _push ?? true,
              onChanged: busy ? null : (v) => setState(() => _push = v),
            ),
          ),
        ),
        LabeledField(
          label: 'Quiet hours',
          help: 'In your timezone, for every delivery; empty clears them.',
          field: PlainField(
            key: const Key('prefs.quietHours'),
            controller: _quietHours,
            hint: '22:00-07:00',
            error: _quietError,
          ),
        ),
        LabeledField(
          label: 'Display options',
          help: 'Free-form options, as a JSON object; saved whole.',
          field: PlainField(
            key: const Key('prefs.ui'),
            controller: _ui,
            maxLines: 5,
            error: _uiError,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: <Widget>[
            PermissionGate(
              permission: Permissions.selfPreferences,
              child: FilledButton(
                key: const Key('prefs.save'),
                onPressed: busy ? null : _save,
                child: const Text('Save Preferences'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(child: statusLine),
          ],
        ),
        Text(
          'A notification default you do not change is left as each delivery has it.',
          style: TextStyle(color: muted, fontSize: 12),
        ),
      ],
    );
  }
}

/// The user's notification preferences (`listMyNotificationPreferences` /
/// `replaceMyNotificationPreferences`): per delivery, whether it is on and
/// which event types it carries. Saving replaces the list and re-reads it;
/// members, event types and channel types this build has not seen are sent
/// back unchanged.
class NotificationPreferencesCard extends ConsumerWidget {
  /// Creates the card.
  const NotificationPreferencesCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SectionCard(
      key: const Key('profile.notifications'),
      title: 'Notification deliveries',
      subtitle: 'Where your personal notifications (mentions, shares, replies…) go.',
      child: AsyncView<List<Json>>(
        value: ref.watch(myNotificationPreferencesProvider),
        onRetry: () => ref.invalidate(myNotificationPreferencesProvider),
        data: (read) =>
            NotificationPreferencesForm(key: ValueKey<String>(jsonEncode(read)), read: read),
      ),
    );
  }
}

/// The editor of [read], the notification preferences as sent.
class NotificationPreferencesForm extends ConsumerStatefulWidget {
  /// Creates the form.
  const NotificationPreferencesForm({super.key, required this.read});

  /// The preferences as read.
  final List<Json> read;

  @override
  ConsumerState<NotificationPreferencesForm> createState() => _NotificationPreferencesFormState();
}

class _NotificationPreferencesFormState extends ConsumerState<NotificationPreferencesForm>
    with WriteTracking<NotificationPreferencesForm> {
  late final List<Json> _items = <Json>[
    for (final p in widget.read) notificationPreferenceInput(p),
  ];
  String? _invalid;

  List<String> _events(Json item) =>
      ((item['eventTypes'] as List?) ?? const <Object?>[]).map((e) => '$e').toList();

  Future<void> _save() async {
    final empty = _items.indexWhere((i) => _events(i).isEmpty);
    if (empty >= 0) {
      setState(
        () => _invalid = 'Delivery ${empty + 1} carries no event type; choose at least one.',
      );
      return;
    }
    setState(() => _invalid = null);
    final dio = ref.read(backendDioProvider);
    final sent = <Json>[for (final i in _items) Map<String, Object?>.of(i)];
    final done = await track(
      () => writeThenConfirm<List<Json>>(
        write: () => jsonCall(
          dio,
          'PUT',
          '/v1/me/notification-preferences',
          body: <String, Object?>{'items': sent},
        ),
        reread: () => jsonArrayCall(dio, '/v1/me/notification-preferences'),
        confirm: (back) {
          if (back.length != sent.length) {
            return '${back.length} deliveries read back, not ${sent.length}.';
          }
          for (var i = 0; i < sent.length; i++) {
            final want = _events(sent[i]).toSet();
            final got = _events(back[i]).toSet();
            if (want.length != got.length ||
                !want.containsAll(got) ||
                back[i]['enabled'] != (sent[i]['enabled'] ?? true)) {
              return 'Delivery ${i + 1} reads back differently.';
            }
          }
          return null;
        },
      ),
    );
    if (done != null && mounted) {
      ref.invalidate(myNotificationPreferencesProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    if (_items.isEmpty) {
      return Text(
        'You have no notification deliveries. Personal notifications show in the app\'s inbox.',
        key: const Key('notif.empty'),
        style: TextStyle(color: muted),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        for (var i = 0; i < _items.length; i++) ...<Widget>[
          _delivery(i, _items[i], muted),
          const Divider(height: 24),
        ],
        if (_invalid != null)
          ResultPanel(title: 'Check the deliveries', tone: StatusTone.error, message: _invalid),
        Row(
          children: <Widget>[
            FilledButton(
              key: const Key('notif.save'),
              onPressed: busy ? null : _save,
              child: const Text('Save Deliveries'),
            ),
            const SizedBox(width: 12),
            Expanded(child: statusLine),
          ],
        ),
      ],
    );
  }

  Widget _delivery(int i, Json item, Color muted) {
    final channel = (item['channel'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{};
    final config =
        (channel['config'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{};
    final events = _events(item);
    final quiet = (item['quietHours'] as Map?)?.cast<String, Object?>();
    // Event types this build has not seen stay listed, selected.
    final types = <String>[
      ...notificationEventTypes.keys,
      ...events.where((e) => !notificationEventTypes.containsKey(e)),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    wireText('${channel['type'] ?? 'channel'}'),
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  if (config.isNotEmpty)
                    Text(
                      config.entries.map((e) => '${e.key}: ${e.value}').join(' · '),
                      style: TextStyle(color: muted, fontSize: 12),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  if (quiet != null)
                    Text(
                      'Quiet ${quiet['start']}–${quiet['end']}',
                      style: TextStyle(color: muted, fontSize: 12),
                    ),
                ],
              ),
            ),
            Switch(
              key: Key('notif.enabled.$i'),
              value: item['enabled'] as bool? ?? true,
              onChanged: busy ? null : (v) => setState(() => item['enabled'] = v),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: <Widget>[
            for (final type in types)
              FilterChip(
                key: Key('notif.event.$i.$type'),
                label: Text(notificationEventTypes[type] ?? type),
                selected: events.contains(type),
                onSelected: busy
                    ? null
                    : (on) => setState(() {
                        item['eventTypes'] = on
                            ? <String>[...events, type]
                            : (events.toList()..remove(type));
                      }),
              ),
          ],
        ),
      ],
    );
  }
}

/// A read-only glance at the user's quota (`getMyQuota`): each limit, or the
/// instance default, and the usage the server reports.
class QuotaCard extends ConsumerWidget {
  /// Creates the card.
  const QuotaCard({super.key});

  /// The limits, in the order shown, with their text.
  static const List<(String, String)> limits = <(String, String)>[
    ('apiRateLimitPerMinute', 'API requests per minute'),
    ('maxStorageBytes', 'Storage'),
    ('maxAlerts', 'Alert rules'),
    ('maxChannels', 'Channels'),
    ('maxSavedViews', 'Saved views'),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SectionCard(
      key: const Key('profile.quota'),
      title: 'My quota',
      subtitle: 'Your limits, so a refusal makes sense when you reach one. An admin sets them.',
      child: AsyncView<Json>(
        value: ref.watch(myQuotaProvider),
        onRetry: () => ref.invalidate(myQuotaProvider),
        data: (q) {
          final quota = (q['quota'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{};
          final usage = (q['usage'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{};
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              KeyValueList(
                keyWidth: 220,
                entries: <MapEntry<String, Object>>[
                  for (final (key, label) in limits)
                    MapEntry<String, Object>(
                      label,
                      switch (quota[key]) {
                        null => 'Instance default',
                        final int bytes when key == 'maxStorageBytes' => _bytesText(bytes),
                        final v => '$v',
                      },
                    ),
                ],
              ),
              if (usage.isNotEmpty) ...<Widget>[
                const SizedBox(height: 12),
                Text('In use', style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 4),
                KeyValueList(
                  key: const Key('profile.quota.usage'),
                  keyWidth: 220,
                  entries: <MapEntry<String, Object>>[
                    for (final e in usage.entries)
                      MapEntry<String, Object>(
                        wireText(e.key),
                        e.value is int && e.key.toLowerCase().contains('bytes')
                            ? _bytesText(e.value! as int)
                            : '${e.value}',
                      ),
                  ],
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}

String _bytesText(int bytes) {
  const units = <String>['B', 'KB', 'MB', 'GB', 'TB'];
  var value = bytes.toDouble();
  var unit = 0;
  while (value >= 1024 && unit < units.length - 1) {
    value /= 1024;
    unit++;
  }
  return unit == 0 ? '$bytes B' : '${value.toStringAsFixed(1)} ${units[unit]}';
}

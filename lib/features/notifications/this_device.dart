import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/device_id.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart';
import '../vetting/vetting_drafts.dart' show fromJsonMap, toJsonMap;
import 'notification_inbox.dart' show PresenceLine;
import 'notifications_drafts.dart';
import 'notifications_providers.dart';
import 'push_native.dart' show FiltersFields, PushDeviceCard;
import 'push_token.dart';

/// The registered device [token] belongs to among [devices]: the same
/// transport, app and token suffix. `null` when it is not registered.
Json? deviceOfToken(List<Json> devices, PushDeviceDraft token) => devices
    .where(
      (d) =>
          d['transport'] == token.transport && d['appId'] == token.appId.trim() && d['tokenSuffix'] == token.tokenSuffix,
    )
    .firstOrNull;

/// The mobile companion's own push registration (`/device`, Screens §H): the
/// phone's token from Firebase, registered with `registerPushDevice` so
/// alerts reach it when the app is closed, then tested, tuned or removed.
/// When the build cannot get a token, one can be entered by hand.
class ThisDeviceScreen extends ConsumerStatefulWidget {
  /// Creates the page.
  const ThisDeviceScreen({super.key});

  @override
  ConsumerState<ThisDeviceScreen> createState() => _ThisDeviceScreenState();
}

class _ThisDeviceScreenState extends ConsumerState<ThisDeviceScreen> with WriteTracking<ThisDeviceScreen> {
  PushDeviceDraft? _token;
  Object? _tokenError;
  bool _obtaining = true;
  bool _manual = false;
  final PushDeviceDraft _draft = PushDeviceDraft();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _manualToken = TextEditingController();
  final TextEditingController _manualApp = TextEditingController();
  Map<String, String> _errors = const <String, String>{};

  @override
  void initState() {
    super.initState();
    unawaited(_obtain());
  }

  @override
  void dispose() {
    _name.dispose();
    _manualToken.dispose();
    _manualApp.dispose();
    super.dispose();
  }

  Future<void> _obtain() async {
    setState(() {
      _obtaining = true;
      _tokenError = null;
    });
    try {
      final t = await ref.read(pushTokenSourceProvider).obtain();
      if (mounted) {
        setState(() {
          _token = PushDeviceDraft(
            transport: t.transport,
            platform: t.platform,
            appId: appIdFor(t.platform),
            environment: t.environment,
            token: t.token,
          );
          _manual = false;
        });
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() {
          _tokenError = e;
          _manualApp.text = appIdFor(_draft.platform);
        });
      }
    } finally {
      if (mounted) {
        setState(() => _obtaining = false);
      }
    }
  }

  /// The token to register: the platform's, or the one typed by hand.
  PushDeviceDraft? get _effective {
    if (_token case final t? when !_manual) {
      return t;
    }
    if (!_manual) {
      return null;
    }
    return PushDeviceDraft(
      transport: _draft.transport,
      platform: _draft.platform,
      appId: _manualApp.text,
      environment: _draft.transport == 'apns' ? (_draft.environment ?? 'sandbox') : null,
      token: _manualToken.text,
    );
  }

  Future<void> _register() async {
    final t = _effective;
    if (t == null) {
      return;
    }
    final d = t
      ..name = _name.text
      ..contentLevel = _draft.contentLevel
      ..filters = _draft.filters;
    setState(() => _errors = d.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final push = api.getPushApi();
    final ok = await track(
      () => writeThenConfirm<Json>(
        write: () => push.registerPushDevice(pushDeviceInput: fromJsonMap<PushDeviceInput>(api.serializers, d.toJson())),
        reread: () async {
          final list = await callApiRequired(push.listPushDevices);
          return deviceOfToken(<Json>[for (final x in list) toJsonMap(api.serializers, x)], d) ??
              (throw const WriteNotConfirmedException('The device does not read back as registered.'));
        },
        confirm: (_) => null,
      ),
    );
    if (ok != null && mounted) {
      if (_manual) {
        setState(() => _token = d);
      }
      ref.invalidate(pushDevicesProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceId = ref.watch(deviceIdProvider).asData?.value;
    final t = _effective;
    return ListView(
      padding: const EdgeInsets.all(16),
      children: <Widget>[
        const PageHeader(title: 'This Phone', subtitle: 'Register for native push so alerts arrive while the app is closed.'),
        SectionCard(
          key: const Key('thisDevice.token'),
          title: 'Push token',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (_obtaining)
                const Padding(padding: EdgeInsets.all(8), child: Center(child: CircularProgressIndicator()))
              else if (_token case final tok? when !_manual)
                KeyValueList(
                  keyWidth: 110,
                  entries: <MapEntry<String, Object>>[
                    MapEntry<String, Object>('Through', tok.transport == 'apns' ? 'APNs (${tok.environment})' : 'FCM'),
                    MapEntry<String, Object>('App', tok.appId),
                    MapEntry<String, Object>('Token', '…${tok.tokenSuffix}'),
                  ],
                )
              else ...<Widget>[
                if (_tokenError case final e?)
                  ResultPanel(
                    key: const Key('thisDevice.token.unavailable'),
                    title: 'No push token',
                    tone: StatusTone.warning,
                    message: e is PushTokenUnavailable ? e.message : '$e',
                  ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    TextButton(onPressed: _obtain, child: const Text('Try Again')),
                    TextButton(
                      key: const Key('thisDevice.manual'),
                      onPressed: () => setState(() => _manual = !_manual),
                      child: Text(_manual ? 'Hide' : 'Enter a Token by Hand'),
                    ),
                  ],
                ),
                if (_manual) ..._manualFields(),
              ],
              if (deviceId != null) ...<Widget>[
                const SizedBox(height: 12),
                Footnote('Device id $deviceId keys this phone\'s read state and presence.'),
              ],
              const SizedBox(height: 8),
              const Align(alignment: Alignment.centerLeft, child: PresenceLine()),
            ],
          ),
        ),
        const SizedBox(height: 16),
        if (t != null)
          AsyncView<List<Json>>(
            value: ref.watch(pushDevicesProvider),
            onRetry: () => ref.invalidate(pushDevicesProvider),
            data: (devices) {
              final registered = deviceOfToken(devices, t);
              if (registered != null) {
                return PushDeviceCard(
                  key: ValueKey<Object?>(registered['id']),
                  device: registered,
                  afterRemove: () => ref.invalidate(pushDevicesProvider),
                );
              }
              return _registerCard();
            },
          ),
      ],
    );
  }

  List<Widget> _manualFields() => <Widget>[
    LabeledField(
      label: 'Through',
      field: WireDropdown(
        key: const Key('thisDevice.manual.transport'),
        value: _draft.transport,
        values: pushTransports,
        labels: const <String, String>{'apns': 'APNs', 'fcm': 'FCM'},
        onChanged: (v) => setState(() {
          _draft
            ..transport = v
            ..platform = v == 'apns' ? 'ios' : 'android'
            ..environment = v == 'apns' ? 'sandbox' : null;
          _manualApp.text = appIdFor(_draft.platform);
        }),
      ),
    ),
    if (_draft.transport == 'apns')
      LabeledField(
        label: 'Environment',
        field: WireDropdown(
          key: const Key('thisDevice.manual.environment'),
          value: _draft.environment ?? 'sandbox',
          values: deviceEnvironments,
          onChanged: (v) => setState(() => _draft.environment = v),
        ),
      ),
    LabeledField(
      label: 'App id',
      field: PlainField(key: const Key('thisDevice.manual.appId'), controller: _manualApp, error: _errors['appId']),
    ),
    LabeledField(
      label: 'Token',
      help: 'From the push SDK on the phone.',
      field: PlainField(key: const Key('thisDevice.manual.token'), controller: _manualToken, error: _errors['token']),
    ),
  ];

  Widget _registerCard() => SectionCard(
    key: const Key('thisDevice.register'),
    title: 'Register',
    subtitle: 'Not registered yet. Native push needs a provider for this app on the backend.',
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        LabeledField(label: 'Name', field: PlainField(key: const Key('thisDevice.name'), controller: _name, hint: 'Duty phone')),
        LabeledField(
          label: 'Content',
          help: 'Minimal sends no alert text through Apple or Google.',
          field: WireDropdown(
            key: const Key('thisDevice.contentLevel'),
            value: _draft.contentLevel,
            values: contentLevels,
            onChanged: (v) => setState(() => _draft.contentLevel = v),
          ),
        ),
        FiltersFields(draft: _draft.filters, prefix: 'thisDevice.filters', errors: _errors),
        if (_errors['environment'] case final e?) Text(e, style: TextStyle(color: Theme.of(context).colorScheme.error)),
        FormActions(busy: busy, onSave: _register, saveLabel: 'Register This Phone', leading: <Widget>[statusLine]),
      ],
    ),
  );
}

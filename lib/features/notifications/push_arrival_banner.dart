import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/theme.dart';
import '../alerts/alert_inbox.dart' show severityTone;
import '../alerts/alerts_providers.dart' show alertProvider;
import 'notifications_providers.dart';
import 'push_arrival.dart';

/// Listens for native pushes on the mobile companion. A tap on one (or the
/// push that launched the app) opens its alert or notification page; one
/// arriving while the app is in front shows as a banner above the page with
/// **Open**, and refreshes the badge and that alert. The inboxes themselves
/// are live on their streams.
class PushArrivalBanner extends ConsumerStatefulWidget {
  /// Creates the listener.
  const PushArrivalBanner({super.key});

  @override
  ConsumerState<PushArrivalBanner> createState() => _PushArrivalBannerState();
}

class _PushArrivalBannerState extends ConsumerState<PushArrivalBanner> {
  StreamSubscription<PushEvent>? _sub;
  PushArrival? _shown;

  @override
  void initState() {
    super.initState();
    final source = ref.read(pushArrivalSourceProvider);
    _sub = source.events().listen(_on);
    unawaited(
      source.launchedBy().then((a) {
        if (a != null) {
          _on((arrival: a, opened: true));
        }
      }),
    );
  }

  @override
  void dispose() {
    unawaited(_sub?.cancel());
    super.dispose();
  }

  void _on(PushEvent e) {
    if (!mounted) {
      return;
    }
    ref.invalidate(notificationBadgeProvider);
    if (e.arrival.alertId case final a?) {
      ref.invalidate(alertProvider(a));
    }
    if (e.opened) {
      setState(() => _shown = null);
      _open(e.arrival);
    } else {
      setState(() => _shown = e.arrival);
    }
  }

  void _open(PushArrival a) {
    final route = a.route;
    if (route != null) {
      GoRouter.of(context).go(route);
    }
  }

  @override
  Widget build(BuildContext context) {
    final a = _shown;
    if (a == null) {
      return const SizedBox.shrink();
    }
    final palette = AdminPalette.of(context);
    final tone = severityTone(a.severity);
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      child: Material(
        key: const Key('push.banner'),
        color: palette.card,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: tone.colorOf(context).withValues(alpha: 0.6)),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: a.route == null
              ? null
              : () {
                  setState(() => _shown = null);
                  _open(a);
                },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 10, 4, 10),
            child: Row(
              children: <Widget>[
                Icon(tone.icon, color: tone.colorOf(context)),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        a.heading,
                        key: const Key('push.banner.title'),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      if (a.body case final b? when b.isNotEmpty)
                        Text(
                          b,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: palette.muted, fontSize: 13),
                        ),
                    ],
                  ),
                ),
                if (a.route != null)
                  TextButton(
                    key: const Key('push.banner.open'),
                    onPressed: () {
                      setState(() => _shown = null);
                      _open(a);
                    },
                    child: const Text('Open'),
                  ),
                IconButton(
                  key: const Key('push.banner.dismiss'),
                  tooltip: 'Dismiss',
                  icon: const Icon(Icons.close, size: 18),
                  onPressed: () => setState(() => _shown = null),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

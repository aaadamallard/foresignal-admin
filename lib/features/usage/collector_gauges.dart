import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';

/// How often the gauges re-read the governor while they are shown. Tests
/// override it.
final collectorStatusIntervalProvider = Provider<Duration>((ref) => const Duration(milliseconds: 2500));

/// The pull governor working (`getCollectorStatus`): its cap, how many
/// polling fetches hold a permit now, and how many wait for one. Re-read
/// every [collectorStatusIntervalProvider] while shown and never after; a
/// failed read keeps the last snapshot and says why.
class CollectorGauges extends ConsumerStatefulWidget {
  /// Creates the gauges.
  const CollectorGauges({super.key});

  @override
  ConsumerState<CollectorGauges> createState() => _CollectorGaugesState();
}

class _CollectorGaugesState extends ConsumerState<CollectorGauges> {
  Timer? _timer;
  CollectorStatus? _status;
  DateTime? _at;
  Object? _error;
  bool _reading = false;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(ref.read(collectorStatusIntervalProvider), (_) => unawaited(_read()));
    unawaited(_read());
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Future<void> _read() async {
    if (_reading) {
      return;
    }
    _reading = true;
    try {
      final api = ref.read(foresignalApiProvider).getSettingsApi();
      final status = await callApiRequired(api.getCollectorStatus);
      if (mounted) {
        setState(() {
          _status = status;
          _at = DateTime.now();
          _error = null;
        });
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _error = e);
      }
    } finally {
      _reading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final status = _status;
    final error = _error;
    return Container(
      key: const Key('collector.gauges'),
      padding: const EdgeInsets.all(14),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: palette.input,
        border: Border.all(color: palette.border),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              const Text('Governor now', style: TextStyle(fontWeight: FontWeight.w600)),
              const Spacer(),
              if (error == null && status != null)
                StatusLabel(
                  key: const Key('collector.live'),
                  label: 'Live · ${_clock(_at!)}',
                  tone: StatusTone.ok,
                  icon: Icons.circle,
                )
              else if (error != null)
                StatusLabel(
                  label: status == null ? 'Unavailable' : 'Stale · ${_clock(_at!)}',
                  tone: StatusTone.warning,
                ),
            ],
          ),
          const SizedBox(height: 12),
          if (status == null && error == null)
            const LinearProgressIndicator()
          else if (status != null) ...<Widget>[
            Wrap(
              spacing: 28,
              runSpacing: 8,
              children: <Widget>[
                _Figure(key: const Key('collector.cap'), label: 'Cap', value: status.cap),
                _Figure(key: const Key('collector.inUse'), label: 'In use', value: status.inUse),
                _Figure(key: const Key('collector.waiting'), label: 'Waiting', value: status.waiting),
              ],
            ),
            const SizedBox(height: 12),
            _PermitBar(cap: status.cap, inUse: status.inUse),
            const SizedBox(height: 8),
            Text(
              collectorStatusLine(status),
              key: const Key('collector.statusLine'),
              style: TextStyle(color: palette.muted, fontSize: 12),
            ),
          ],
          if (error != null) ...<Widget>[
            const SizedBox(height: 8),
            ErrorBanner(error: error, title: 'getCollectorStatus answered', onRetry: () => unawaited(_read())),
          ],
        ],
      ),
    );
  }

  static String _clock(DateTime t) {
    String two(int n) => n.toString().padLeft(2, '0');
    return '${two(t.hour)}:${two(t.minute)}:${two(t.second)}';
  }
}

/// One sentence for [s]: how full the governor is and what queues behind
/// it, noting a cap lowered under running pulls.
String collectorStatusLine(CollectorStatus s) {
  final pulls = s.inUse == 1 ? '1 pull' : '${s.inUse} pulls';
  final queue = switch (s.waiting) {
    0 => 'none waiting',
    1 => '1 waiting for a permit',
    final n => '$n waiting for a permit',
  };
  if (s.inUse > s.cap) {
    return '$pulls running over a cap of ${s.cap}: it was lowered, and no new pull starts until '
        'enough finish; $queue.';
  }
  return '$pulls of ${s.cap} running; $queue.';
}

/// A labeled count.
class _Figure extends StatelessWidget {
  const _Figure({super.key, required this.label, required this.value});

  final String label;
  final int value;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(label, style: TextStyle(color: AdminPalette.of(context).muted, fontSize: 12)),
      Text('$value', style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600)),
    ],
  );
}

/// The permits as slots: one per unit of the cap, filled while held, and
/// held permits beyond a lowered cap in the warning color.
class _PermitBar extends StatelessWidget {
  const _PermitBar({required this.cap, required this.inUse});

  final int cap;
  final int inUse;

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final slots = cap > inUse ? cap : inUse;
    return Semantics(
      label: '$inUse of $cap permits in use',
      child: SizedBox(
        key: const Key('collector.permits'),
        height: 14,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            for (var i = 0; i < slots; i++) ...<Widget>[
              if (i > 0) const SizedBox(width: 2),
              Expanded(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: i >= cap
                        ? palette.warning
                        : i < inUse
                        ? palette.primary
                        : palette.border,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

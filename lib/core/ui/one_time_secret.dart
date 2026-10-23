import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme.dart';
import 'status_chip.dart';

/// A secret the backend returns exactly once (an ingest key, a device key).
///
/// It is shown masked until revealed, can be copied, and lives only in the
/// widget that shows it: the app never stores or logs it, and once this is
/// dismissed it is gone. [onDismiss] clears it from the caller's state.
class OneTimeSecret extends StatefulWidget {
  /// Creates the panel for [secret], labeled [label].
  const OneTimeSecret({
    super.key,
    required this.label,
    required this.secret,
    required this.onDismiss,
    this.extra,
  });

  /// What the secret is ("Ingest key").
  final String label;

  /// The secret.
  final String secret;

  /// Called when the operator has saved it and dismisses the panel.
  final VoidCallback onDismiss;

  /// Builds anything shown beneath it (setup URLs that embed the key);
  /// `revealed` says whether the secret is showing, so text that embeds it
  /// can be masked with [maskSecret] until it is.
  final Widget Function(bool revealed)? extra;

  /// [text] with every occurrence of [secret] masked.
  static String maskSecret(String text, String secret) =>
      secret.isEmpty ? text : text.replaceAll(secret, _mask(secret));

  static String _mask(String secret) =>
      secret.length <= 8 ? '•' * secret.length : '${secret.substring(0, 4)}${'•' * 24}';

  @override
  State<OneTimeSecret> createState() => _OneTimeSecretState();
}

class _OneTimeSecretState extends State<OneTimeSecret> {
  bool _revealed = false;
  bool _copied = false;

  @override
  void initState() {
    super.initState();
    _bringIntoView();
  }

  @override
  void didUpdateWidget(OneTimeSecret oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.secret != widget.secret) {
      _bringIntoView();
    }
  }

  /// Scrolls the panel into view once laid out: a form that collapses after
  /// creating leaves the page scrolled past it, and the secret cannot be
  /// read again.
  void _bringIntoView() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        unawaited(Scrollable.ensureVisible(context, duration: const Duration(milliseconds: 200)));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final masked = OneTimeSecret._mask(widget.secret);
    return Container(
      key: const Key('oneTimeSecret'),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: palette.warning.withValues(alpha: 0.08),
        border: Border.all(color: palette.warning.withValues(alpha: 0.5)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(StatusTone.warning.icon, color: palette.warning, size: 18),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  '${widget.label} — shown once. Copy it now; it cannot be read again.',
                  style: TextStyle(color: palette.warning, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: <Widget>[
              Expanded(
                child: SelectableText(
                  _revealed ? widget.secret : masked,
                  key: const Key('oneTimeSecret.value'),
                  style: const TextStyle(fontFamily: 'monospace'),
                ),
              ),
              IconButton(
                key: const Key('oneTimeSecret.reveal'),
                tooltip: _revealed ? 'Hide' : 'Show',
                icon: Icon(_revealed ? Icons.visibility_off : Icons.visibility),
                onPressed: () => setState(() => _revealed = !_revealed),
              ),
              IconButton(
                key: const Key('oneTimeSecret.copy'),
                tooltip: _copied ? 'Copied' : 'Copy',
                icon: Icon(_copied ? Icons.check : Icons.copy),
                onPressed: () async {
                  await Clipboard.setData(ClipboardData(text: widget.secret));
                  if (mounted) {
                    setState(() => _copied = true);
                  }
                },
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: <Widget>[
              Expanded(
                child: Align(alignment: Alignment.centerLeft, child: widget.extra?.call(_revealed)),
              ),
              TextButton(
                key: const Key('oneTimeSecret.dismiss'),
                onPressed: widget.onDismiss,
                child: const Text('I have saved it'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

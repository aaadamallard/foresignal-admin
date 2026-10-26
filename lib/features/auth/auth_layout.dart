import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/nav.dart';
import '../../core/theme.dart';
import '../../core/theme_mode.dart';

/// The frame of the sign-in pages, which sit outside the shell: the
/// ForeSignal mark, a centered card titled [title], and the theme switch.
class AuthLayout extends StatelessWidget {
  /// Creates the layout.
  const AuthLayout({super.key, required this.title, required this.child, this.subtitle});

  /// The card's heading.
  final String title;

  /// An optional sentence under the heading.
  final String? subtitle;

  /// The card's content.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 48, 20, 28),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 460),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.radio_button_checked, color: palette.primary, size: 26),
                          const SizedBox(width: 8),
                          const Text(
                            'ForeSignal',
                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(28),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(title, style: Theme.of(context).textTheme.headlineSmall),
                              if (subtitle != null) ...<Widget>[
                                const SizedBox(height: 6),
                                Text(subtitle!, style: TextStyle(color: palette.muted)),
                              ],
                              const SizedBox(height: 20),
                              child,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(top: 8, right: 8, child: ThemeModeButton()),
          ],
        ),
      ),
    );
  }
}

/// A field's label above it, as on Connect.
class AuthFieldLabel extends StatelessWidget {
  /// Creates the label.
  const AuthFieldLabel(this.text, {super.key});

  /// The label text.
  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 6),
    child: Text(text, style: const TextStyle(fontWeight: FontWeight.w500)),
  );
}

/// Which backend the sign-in pages talk to, with a way to change it on
/// Connect; when none is set, says so.
class AuthBackendLine extends ConsumerWidget {
  /// Creates the line.
  const AuthBackendLine({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final url = ref.watch(backendEndpointProvider);
    final muted = AdminPalette.of(context).muted;
    return Row(
      children: <Widget>[
        Icon(url == null ? Icons.cloud_off : Icons.cloud_done, size: 16, color: muted),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            url == null ? 'No backend set' : url.toString(),
            key: const Key('auth.backend'),
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12, color: muted),
          ),
        ),
        TextButton(
          key: const Key('auth.connect'),
          onPressed: () => context.go(connectPath),
          child: Text(url == null ? 'Connect' : 'Change'),
        ),
      ],
    );
  }
}

/// A [TextField] for a password, with a Show/Hide toggle.
class PasswordField extends StatefulWidget {
  /// Creates the field.
  const PasswordField({
    super.key,
    required this.controller,
    this.enabled = true,
    this.onSubmitted,
    this.autofillHints,
    this.hintText,
  });

  /// The field's controller.
  final TextEditingController controller;

  /// Whether the field accepts input.
  final bool enabled;

  /// Called when the person presses Enter.
  final ValueChanged<String>? onSubmitted;

  /// Autofill hints for password managers.
  final Iterable<String>? autofillHints;

  /// Placeholder text.
  final String? hintText;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _show = false;

  @override
  Widget build(BuildContext context) => TextField(
    controller: widget.controller,
    enabled: widget.enabled,
    obscureText: !_show,
    autocorrect: false,
    enableSuggestions: false,
    autofillHints: widget.autofillHints,
    onSubmitted: widget.onSubmitted,
    decoration: InputDecoration(
      hintText: widget.hintText,
      suffixIcon: IconButton(
        tooltip: _show ? 'Hide' : 'Show',
        icon: Icon(_show ? Icons.visibility_off : Icons.visibility),
        onPressed: () => setState(() => _show = !_show),
      ),
    ),
  );
}

/// A busy indicator sized for a button label.
class ButtonSpinner extends StatelessWidget {
  /// Creates the spinner.
  const ButtonSpinner({super.key});

  @override
  Widget build(BuildContext context) => const SizedBox(
    width: 18,
    height: 18,
    child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
  );
}

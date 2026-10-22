import 'package:flutter/material.dart';

import '../theme.dart';

/// The mocks' row action ("Edit", "Run", "View", "Test"): a small dark-blue
/// tonal button.
class TonalButton extends StatelessWidget {
  /// Creates the button.
  const TonalButton({super.key, required this.label, required this.onPressed, this.icon});

  /// The button text.
  final String label;

  /// The action; `null` disables the button.
  final VoidCallback? onPressed;

  /// An optional leading icon.
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final style = FilledButton.styleFrom(
      backgroundColor: AdminPalette.of(context).tonal,
      foregroundColor: AdminPalette.of(context).primaryText,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      minimumSize: const Size(0, 34),
    );
    return icon == null
        ? FilledButton(style: style, onPressed: onPressed, child: Text(label))
        : FilledButton.icon(
            style: style,
            onPressed: onPressed,
            icon: Icon(icon, size: 16),
            label: Text(label),
          );
  }
}

/// The mocks' destructive action ("Delete", "Delete Credentials"): red filled.
class DangerButton extends StatelessWidget {
  /// Creates the button.
  const DangerButton({super.key, required this.label, required this.onPressed, this.icon});

  /// The button text.
  final String label;

  /// The action; `null` disables the button.
  final VoidCallback? onPressed;

  /// An optional leading icon.
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final style = FilledButton.styleFrom(
      backgroundColor: AdminPalette.of(context).danger,
      foregroundColor: Colors.white,
    );
    return icon == null
        ? FilledButton(style: style, onPressed: onPressed, child: Text(label))
        : FilledButton.icon(
            style: style,
            onPressed: onPressed,
            icon: Icon(icon, size: 18),
            label: Text(label),
          );
  }
}

/// The mocks' form footer: "Reset" (outlined) and "Save Changes" (filled),
/// right-aligned.
class FormActions extends StatelessWidget {
  /// Creates the footer.
  const FormActions({
    super.key,
    required this.onSave,
    this.onReset,
    this.saveLabel = 'Save Changes',
    this.busy = false,
    this.leading = const <Widget>[],
  });

  /// Saves; `null` disables Save (nothing changed, or invalid).
  final VoidCallback? onSave;

  /// Restores the last saved values; `null` hides Reset.
  final VoidCallback? onReset;

  /// The Save button text.
  final String saveLabel;

  /// Whether a save is running (shows a spinner and disables both).
  final bool busy;

  /// Widgets at the left of the row (a status line, a Delete button).
  final List<Widget> leading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        children: <Widget>[
          ...leading,
          const Spacer(),
          if (onReset != null) ...<Widget>[
            OutlinedButton(onPressed: busy ? null : onReset, child: const Text('Reset')),
            const SizedBox(width: 10),
          ],
          FilledButton(
            key: const Key('form.save'),
            onPressed: busy ? null : onSave,
            child: busy
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                  )
                : Text(saveLabel),
          ),
        ],
      ),
    );
  }
}

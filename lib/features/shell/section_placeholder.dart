import 'package:flutter/material.dart';

import '../../core/nav.dart';
import '../../core/ui/ui.dart';

/// The landing view of a section whose screens are not mounted in this build
/// yet: it names the section and what it configures.
class SectionPlaceholder extends StatelessWidget {
  /// Creates the view for [section].
  const SectionPlaceholder({super.key, required this.section});

  /// The section shown.
  final NavSection section;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(title: section.label, subtitle: section.summary),
        const SectionCard(
          title: 'Not in this build yet',
          child: Text('These screens arrive with a later prompt in the roadmap.'),
        ),
      ],
    );
  }
}

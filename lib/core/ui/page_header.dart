import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theme.dart';

/// One breadcrumb: a [label], linking to [path] when given.
class Crumb {
  /// Creates a breadcrumb.
  const Crumb(this.label, [this.path]);

  /// The text shown.
  final String label;

  /// Where tapping it goes; the last crumb usually has none.
  final String? path;
}

/// The mocks' page header: breadcrumbs (links in blue, the current page in
/// gray), a large title with optional inline widgets (an Enabled toggle), and
/// primary actions on the right.
class PageHeader extends StatelessWidget {
  /// Creates the header.
  const PageHeader({
    super.key,
    required this.title,
    this.crumbs = const <Crumb>[],
    this.subtitle,
    this.titleTrailing = const <Widget>[],
    this.actions = const <Widget>[],
  });

  /// The page title.
  final String title;

  /// The breadcrumb trail, outermost first.
  final List<Crumb> crumbs;

  /// An optional line under the title.
  final String? subtitle;

  /// Widgets shown right after the title (status, an Enabled switch).
  final List<Widget> titleTrailing;

  /// Primary actions, right-aligned.
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (crumbs.isNotEmpty) ...<Widget>[
            Breadcrumbs(crumbs: crumbs),
            const SizedBox(height: 10),
          ],
          LayoutBuilder(
            builder: (context, constraints) {
              final heading = Wrap(
                spacing: 16,
                runSpacing: 8,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  Text(title, style: theme.textTheme.headlineSmall),
                  ...titleTrailing,
                ],
              );
              final buttons = Wrap(spacing: 10, runSpacing: 8, children: actions);
              if (actions.isEmpty) {
                return heading;
              }
              // Wide: title left, actions right-aligned as in the mocks.
              // Narrow: the actions wrap below the title.
              if (constraints.maxWidth >= 720) {
                return Row(
                  children: <Widget>[
                    Expanded(child: heading),
                    const SizedBox(width: 12),
                    buttons,
                  ],
                );
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[heading, const SizedBox(height: 12), buttons],
              );
            },
          ),
          if (subtitle != null) ...<Widget>[
            const SizedBox(height: 6),
            Text(
              subtitle!,
              style: theme.textTheme.bodyMedium?.copyWith(color: AdminPalette.of(context).muted),
            ),
          ],
        ],
      ),
    );
  }
}

/// A breadcrumb trail: `Sources / Reuters News / Test & Validate`.
class Breadcrumbs extends StatelessWidget {
  /// Creates the trail.
  const Breadcrumbs({super.key, required this.crumbs});

  /// The crumbs, outermost first.
  final List<Crumb> crumbs;

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    for (var i = 0; i < crumbs.length; i++) {
      final crumb = crumbs[i];
      final isLast = i == crumbs.length - 1;
      final style = TextStyle(
        fontSize: 13,
        color: isLast || crumb.path == null
            ? AdminPalette.of(context).muted
            : AdminPalette.of(context).primaryText,
      );
      children.add(
        crumb.path == null || isLast
            ? Text(crumb.label, style: style)
            : InkWell(
                onTap: () => context.go(crumb.path!),
                child: Text(crumb.label, style: style),
              ),
      );
      if (!isLast) {
        children.add(
          Text('  /  ', style: TextStyle(fontSize: 13, color: AdminPalette.of(context).muted)),
        );
      }
    }
    return Wrap(crossAxisAlignment: WrapCrossAlignment.center, children: children);
  }
}

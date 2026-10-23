import 'package:flutter/material.dart';

import '../usage/settings_panels.dart' show RateLimitsPanel;
import 'system_drafts.dart';
import 'system_widgets.dart';

/// Cards one above the other, at a readable width.
class SettingsColumn extends StatelessWidget {
  /// Creates the column of [children].
  const SettingsColumn({super.key, required this.children});

  /// The cards.
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => Align(
    alignment: Alignment.topLeft,
    child: ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 920),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          for (final (i, c) in children.indexed) ...<Widget>[if (i > 0) const SizedBox(height: 20), c],
        ],
      ),
    ),
  );
}

/// The Server tab: the public URL, time zone, client links and Web Push
/// defaults (`getServerSettings` / `updateServerSettings`).
class ServerSettingsPanel extends StatelessWidget {
  /// Creates the panel.
  const ServerSettingsPanel({super.key});

  @override
  Widget build(BuildContext context) => const SettingsColumn(children: <Widget>[SettingsGroupCard(group: serverGroup)]);
}

/// The Security tab: open reads and the anonymous profile, CORS, the
/// outbound URL policy, MCP authorization and the rate limits.
class SecurityPanel extends StatelessWidget {
  /// Creates the panel.
  const SecurityPanel({super.key});

  @override
  Widget build(BuildContext context) => const SettingsColumn(
    children: <Widget>[
      SettingsGroupCard(group: securityGroup),
      SettingsGroupCard(group: corsGroup),
      SettingsGroupCard(group: outboundGroup),
      SettingsGroupCard(group: mcpAuthGroup),
      RateLimitsPanel(),
    ],
  );
}

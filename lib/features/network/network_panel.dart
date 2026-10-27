import 'package:flutter/material.dart';

import 'aggregators_panel.dart';
import 'egress_panel.dart';

/// System → Network / Sourcing (`network.manage`): the first-party
/// aggregators first (local-first collection), then egress, the fallback for
/// sources that cannot be self-hosted: the pool, the rotation and per-source
/// pins.
class NetworkPanel extends StatelessWidget {
  /// Creates the panel.
  const NetworkPanel({super.key});

  @override
  Widget build(BuildContext context) => const Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      AggregatorsCard(),
      SizedBox(height: 20),
      EgressPoolCard(),
      SizedBox(height: 20),
      EgressSettingsCard(),
      SizedBox(height: 20),
      SourceEgressCard(),
    ],
  );
}

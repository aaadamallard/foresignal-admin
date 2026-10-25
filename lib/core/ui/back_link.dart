import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes.dart';
import '../theme.dart';

/// The `‹ Back` control at the top of every page pushed from another, in the
/// breadcrumbs' style. The shell draws it above the page, so a page that is
/// still loading or failed to load has it too.
///
/// It returns to the previous page when there is one to pop, and otherwise
/// to the nearest enclosing page ([backTargetOf]).
class BackLink extends StatelessWidget {
  /// Creates the control for the page at [location].
  const BackLink({super.key, required this.location});

  /// The current route location.
  final String location;

  @override
  Widget build(BuildContext context) {
    final color = AdminPalette.of(context).primaryText;
    return Align(
      alignment: Alignment.centerLeft,
      child: InkWell(
        key: const Key('page.back'),
        borderRadius: BorderRadius.circular(4),
        onTap: () => goBack(context, location),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.chevron_left, size: 18, color: color),
              Text('Back', style: TextStyle(fontSize: 13, color: color)),
            ],
          ),
        ),
      ),
    );
  }

  /// Pops when the router has a page to return to, and goes to
  /// [backTargetOf] [location] otherwise.
  static void goBack(BuildContext context, String location) {
    final router = GoRouter.of(context);
    if (router.canPop()) {
      router.pop();
      return;
    }
    router.go(
      backTargetOf(
        location,
        routeExists: (path) {
          final match = router.configuration.findMatch(Uri.parse(path));
          return match.isNotEmpty && !match.isError;
        },
      ),
    );
  }
}

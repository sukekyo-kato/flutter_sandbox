import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../app.dart';

part 'router.g.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: $appRoutes,
    redirect: (context, state) {
      return null;
    },
  );
});

@TypedGoRoute<DummyHomePageRoute>(
  path: '/',
)

/// 仮起動画面
class DummyHomePageRoute extends GoRouteData {
  const DummyHomePageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DummyLauchPage();
}

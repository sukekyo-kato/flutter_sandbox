import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../feature/auth/presentation/entry_page.dart';

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

@TypedGoRoute<EntryPageRoute>(
  path: '/',
)

/// 起動画面
class EntryPageRoute extends GoRouteData {
  const EntryPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const EntryPage();
}

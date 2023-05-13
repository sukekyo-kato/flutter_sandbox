import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../feature/auth/application/auth_service.dart';
import '../feature/auth/presentation/entry_page.dart';
import '../feature/user/presentation/user_page.dart';

part 'router.g.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final loginState = ref.watch(loginStateProvider);

  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: EntryPageRoute.path,
    routes: $appRoutes,
    redirect: (context, state) {
      // エントリー画面で ログイン状態
      // path は null になっている
      if (state.fullPath == EntryPageRoute.path && loginState) {
        return UsePageRoute.path;
      }
      return null;
    },
  );
});

@TypedGoRoute<EntryPageRoute>(
  path: EntryPageRoute.path,
)

/// エントリー画面
class EntryPageRoute extends GoRouteData {
  const EntryPageRoute();
  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) => const EntryPage();
}

@TypedGoRoute<UsePageRoute>(
  path: UsePageRoute.path,
)

/// ユーザ画面
class UsePageRoute extends GoRouteData {
  const UsePageRoute();
  static const path = '/user';

  @override
  Widget build(BuildContext context, GoRouterState state) => const UserPage();
}

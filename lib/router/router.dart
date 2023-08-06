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
        return '/user/tab/a';
      }

      // ログアウト時、エントリー画面以外の場合
      if (state.fullPath != EntryPageRoute.path && !loginState) {
        return EntryPageRoute.path;
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

/// ユーザ画面 ボトムナビゲーション 親
@TypedStatefulShellRoute<UserShellRoute>(
  branches: [
    // タブ A
    TypedStatefulShellBranch<UserBranchA>(
      routes: <TypedGoRoute<GoRouteData>>[
        TypedGoRoute<UserRouteA>(
          path: '/user/tab/a',
        ),
      ],
    ),
    // タブ B
    TypedStatefulShellBranch<UserBranchB>(
      routes: <TypedGoRoute<GoRouteData>>[
        TypedGoRoute<UserRouteB>(
          path: '/user/tab/b',
        ),
      ],
    ),
    // タブ C
    TypedStatefulShellBranch<UserBranchC>(
      routes: <TypedGoRoute<GoRouteData>>[
        TypedGoRoute<UserRouteC>(
          path: '/user/tab/c',
        ),
      ],
    ),
  ],
)
class UserShellRoute extends StatefulShellRouteData {
  const UserShellRoute();

  static final GlobalKey<NavigatorState> $navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) =>
      UserPage(navigationShell: navigationShell);
}

class UserBranchA extends StatefulShellBranchData {
  const UserBranchA();

  static final GlobalKey<NavigatorState> $navigatorKey =
      GlobalKey<NavigatorState>();
}

class UserBranchB extends StatefulShellBranchData {
  const UserBranchB();

  static final GlobalKey<NavigatorState> $navigatorKey =
      GlobalKey<NavigatorState>();
}

class UserBranchC extends StatefulShellBranchData {
  const UserBranchC();

  static final GlobalKey<NavigatorState> $navigatorKey =
      GlobalKey<NavigatorState>();
}

class UserRouteA extends GoRouteData {
  const UserRouteA();

  @override
  Widget build(BuildContext context, GoRouterState state) => const UserTabA();
}

class UserRouteB extends GoRouteData {
  const UserRouteB();

  @override
  Widget build(BuildContext context, GoRouterState state) => const UserTabB();
}

class UserRouteC extends GoRouteData {
  const UserRouteC();

  @override
  Widget build(BuildContext context, GoRouterState state) => const UserTabC();
}

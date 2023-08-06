// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $entryPageRoute,
      $userShellRoute,
    ];

RouteBase get $entryPageRoute => GoRouteData.$route(
      path: '/',
      factory: $EntryPageRouteExtension._fromState,
    );

extension $EntryPageRouteExtension on EntryPageRoute {
  static EntryPageRoute _fromState(GoRouterState state) =>
      const EntryPageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $userShellRoute => StatefulShellRouteData.$route(
      factory: $UserShellRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: UserBranchA.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/user/tab/a',
              factory: $UserRouteAExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: UserBranchB.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/user/tab/b',
              factory: $UserRouteBExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: UserBranchC.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/user/tab/c',
              factory: $UserRouteCExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $UserShellRouteExtension on UserShellRoute {
  static UserShellRoute _fromState(GoRouterState state) =>
      const UserShellRoute();
}

extension $UserRouteAExtension on UserRouteA {
  static UserRouteA _fromState(GoRouterState state) => const UserRouteA();

  String get location => GoRouteData.$location(
        '/user/tab/a',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $UserRouteBExtension on UserRouteB {
  static UserRouteB _fromState(GoRouterState state) => const UserRouteB();

  String get location => GoRouteData.$location(
        '/user/tab/b',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $UserRouteCExtension on UserRouteC {
  static UserRouteC _fromState(GoRouterState state) => const UserRouteC();

  String get location => GoRouteData.$location(
        '/user/tab/c',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

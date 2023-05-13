// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $dummyHomePageRoute,
    ];

RouteBase get $dummyHomePageRoute => GoRouteData.$route(
      path: '/',
      factory: $DummyHomePageRouteExtension._fromState,
    );

extension $DummyHomePageRouteExtension on DummyHomePageRoute {
  static DummyHomePageRoute _fromState(GoRouterState state) =>
      const DummyHomePageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $entryPageRoute,
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

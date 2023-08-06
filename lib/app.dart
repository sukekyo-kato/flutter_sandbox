import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'common_widget/scaffold_message.dart';
import 'router/router.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'Flutter Sandbox',
      scaffoldMessengerKey: rootScaffoldKey,
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      builder: _responsiveBuilder,
    );
  }
}

Widget _responsiveBuilder(context, child) {
  return ResponsiveBreakpoints.builder(
    child: child as Widget,
    breakpoints: [
      const Breakpoint(start: 0, end: 480, name: MOBILE),
      const Breakpoint(start: 481, end: 800, name: TABLET),
      const Breakpoint(start: 801, end: double.infinity, name: DESKTOP),
    ],
  );
}

/// Dummy Lauch Screen
class DummyLauchPage extends StatelessWidget {
  const DummyLauchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.of(context).app_title),
      ),
    );
  }
}

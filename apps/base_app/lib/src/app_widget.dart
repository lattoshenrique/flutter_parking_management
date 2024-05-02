import 'package:common_deps/common_deps.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig.init().config(constraints, orientation);
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'Parking Management',
              routeInformationParser: Modular.routeInformationParser,
              routerDelegate: Modular.routerDelegate,
              theme: ThemeFactory.buildFor(ThemeType.light),
              darkTheme: ThemeFactory.buildFor(ThemeType.dark),
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('pt', 'BR'),
              ],
              locale: const Locale('pt', 'BR'),
            );
          },
        );
      },
    );
  }
}

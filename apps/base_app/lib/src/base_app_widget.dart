import 'package:common_deps/common_deps.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class BaseAppWidget extends StatefulWidget {
  const BaseAppWidget({super.key});

  @override
  State<BaseAppWidget> createState() => _BaseAppWidgetState();
}

class _BaseAppWidgetState extends State<BaseAppWidget> {
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
              routerConfig: Modular.routerConfig,
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

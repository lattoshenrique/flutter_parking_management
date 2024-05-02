import 'package:common_deps/common_deps.dart';
import 'package:flutter/material.dart';

import 'src/app_module.dart';
import 'src/app_widget.dart';

void main() async {
  await Hive.initFlutter();
  Intl.defaultLocale = 'pt_BR';

  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}

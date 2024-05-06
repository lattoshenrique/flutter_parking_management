import 'package:common_deps/common_deps.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/base_app_module.dart';
import 'src/base_app_widget.dart';

void main() async {
  await Hive.initFlutter();
  Intl.defaultLocale = 'pt_BR';

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  runApp(
    ModularApp(
      module: BaseAppModule(),
      child: const BaseAppWidget(),
    ),
  );
}

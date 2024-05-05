import 'package:flutter/material.dart';

import '../app_bars/app_bars.dart';

part 'standard.dart';

abstract class CommonScaffold extends StatelessWidget {
  final Key? _scaffoldKey;
  final Widget? body;
  final Widget? bottomNavigatorBar;
  final CommonAppBar? appBar;
  final bool extendBodyBehindAppBar;
  final bool extendBody;
  final bool primary;

  const CommonScaffold._({
    super.key,
    this.body,
    this.bottomNavigatorBar,
    this.appBar,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.primary = true,
  }) : _scaffoldKey = key;

  const factory CommonScaffold.standard({
    Key? key,
    Widget? body,
    Widget? bottomNavigatorBar,
    CommonAppBar? appBar,
    bool primary,
    bool showDefaultAppBar,
    bool extendBodyBehindAppBar,
    bool extendBody,
  }) = _StandardScaffold;
}

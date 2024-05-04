import 'package:flutter/material.dart';

import '../app_bars/app_bars.dart';

part 'standard.dart';

abstract class CommonScaffold extends StatelessWidget {
  final Key? _scaffoldKey;
  final Widget? body;
  final CommonAppBar? appBar;
  final bool extendBodyBehindAppBar;
  final bool extendBody;

  const CommonScaffold._({
    super.key,
    this.body,
    this.appBar,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
  }) : _scaffoldKey = key;

  const factory CommonScaffold.standard({
    Key? key,
    Widget? body,
    CommonAppBar? appBar,
    bool showDefaultAppBar,
    bool extendBodyBehindAppBar,
    bool extendBody,
  }) = _StandardScaffold;
}

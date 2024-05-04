import 'package:flutter/material.dart';

part 'standard.dart';

abstract class CommonAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final Widget? title;
  final bool centerTitle;
  final Widget? leading;
  final List<Widget>? actions;
  final double? toolbarHeight;
  final PreferredSizeWidget? bottom;

  const CommonAppBar._({
    super.key,
    this.title,
    this.centerTitle = false,
    this.leading,
    this.actions,
    this.toolbarHeight,
    this.bottom,
  });

  static const double defaultHeight = 56;

  @override
  Size get preferredSize => Size.fromHeight(
        toolbarHeight ?? defaultHeight + (bottom?.preferredSize.height ?? 0),
      );

  const factory CommonAppBar.standard({
    Key? key,
    String? titleText,
    Widget? title,
    bool centerTitle,
    Widget? leading,
    List<Widget>? actions,
    double? toolbarHeight,
    PreferredSizeWidget? bottom,
  }) = _StandardAppBar;
}

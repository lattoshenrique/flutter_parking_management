part of 'common_scaffold.dart';

class _StandardScaffold extends CommonScaffold {
  final bool showDefaultAppBar;

  const _StandardScaffold({
    this.showDefaultAppBar = true,
    super.key,
    super.body,
    super.appBar,
    super.extendBody,
    super.extendBodyBehindAppBar,
  }) : super._();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      key: _scaffoldKey,
      appBar:
          appBar ?? (showDefaultAppBar ? const CommonAppBar.standard() : null),
      body: body,
    );
  }
}

part of 'common_app_bar.dart';

class _StandardAppBar extends CommonAppBar {
  final String? titleText;
  final bool removeEffectOnScroll;

  const _StandardAppBar({
    super.key,
    this.titleText,
    this.removeEffectOnScroll = false,
    super.title,
    super.centerTitle,
    super.leading,
    super.actions,
    super.toolbarHeight,
    super.bottom,
  }) : super._();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      notificationPredicate: removeEffectOnScroll
          ? (_) => false
          : defaultScrollNotificationPredicate,
      key: key,
      title: title ?? Text(titleText ?? 'Estacionamento do João'),
      systemOverlayStyle: context.colorScheme.brightness == Brightness.light
          ? SystemUiOverlayStyle.dark
          : SystemUiOverlayStyle.light,
      centerTitle: centerTitle,
      leading: leading,
      actions: actions,
      toolbarHeight: toolbarHeight,
      bottom: bottom,
    );
  }
}

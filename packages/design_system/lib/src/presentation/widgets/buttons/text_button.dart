part of 'app_button.dart';

class _TextButton extends AppButton {
  final String text;
  final bool extended;
  final Widget? child;

  const _TextButton({
    super.onTap,
    required this.text,
    super.isLoading,
    this.extended = false,
    this.child,
  }) : super._();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: extended ? context.screenWidth : null,
      child: TextButton(
        onPressed: isLoading ? null : onTap,
        style: ButtonStyle(
          padding: MaterialStatePropertyAll(
            Dimension.sm.verticalPadding + Dimension.md.horizontalPadding,
          ),
        ),
        child: isLoading
            ? const CircularProgressIndicator()
            : child ?? Text(text.toUpperCase()).textButton(context),
      ),
    );
  }
}

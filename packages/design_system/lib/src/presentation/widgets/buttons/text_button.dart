part of 'app_button.dart';

class _TextButton extends AppButton {
  final String text;
  final bool extended;

  const _TextButton({
    super.onTap,
    required this.text,
    this.extended = false,
  }) : super._();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: extended ? context.screenWidth : null,
      child: TextButton(
        onPressed: onTap,
        style: ButtonStyle(
          padding: MaterialStatePropertyAll(
            Dimension.sm.verticalPadding + Dimension.md.horizontalPadding,
          ),
        ),
        child: Text(text.toUpperCase()).textButton(context),
      ),
    );
  }
}

part of 'app_button.dart';

class _PrimaryButton extends AppButton {
  final String text;
  final bool extended;

  const _PrimaryButton({
    super.onTap,
    required this.text,
    this.extended = false,
  }) : super._();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: extended ? context.screenWidth : null,
      child: FilledButton(
        onPressed: onTap,
        style: ButtonStyle(
          padding: MaterialStatePropertyAll(
            Dimension.sm.verticalPadding + Dimension.md.horizontalPadding,
          ),
        ),
        child: Text(text.toUpperCase()).primaryButton(context),
      ),
    );
  }
}

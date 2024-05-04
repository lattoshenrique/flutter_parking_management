import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../../widgets/widgets.dart';

class CommonErrorPage extends StatelessWidget {
  final String? title;
  final String? message;
  final Widget? leading;
  final VoidCallback? onLeadingPressed;
  final String? primaryButtonText;
  final VoidCallback? onPrimaryButtonPressed;
  final String? secondaryButtonText;
  final VoidCallback? onSecondaryButtonPressed;

  const CommonErrorPage({
    super.key,
    this.title,
    this.message,
    this.leading,
    this.onLeadingPressed,
    this.primaryButtonText,
    this.onPrimaryButtonPressed,
    this.secondaryButtonText,
    this.onSecondaryButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CommonScaffold.standard(
      showDefaultAppBar: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: Dimension.md.value,
            horizontal: Dimension.lg.value,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildBody(context),
              _buildButtons(context),
            ],
          ),
        ),
      ),
    );
  }

  @widgetFactory
  Widget _buildButtons(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (primaryButtonText != null && onPrimaryButtonPressed != null)
          SizedBox(
            width: context.screenWidth,
            child: FilledButton(
              onPressed: onPrimaryButtonPressed,
              child: Text(primaryButtonText!.toUpperCase()),
            ),
          ),
        if (secondaryButtonText != null && onSecondaryButtonPressed != null)
          SizedBox(
            width: context.screenWidth,
            child: TextButton(
              onPressed: onSecondaryButtonPressed,
              child: Text(secondaryButtonText!.toUpperCase()),
            ),
          ),
      ],
    );
  }

  @widgetFactory
  Widget _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLeading(context),
        Dimension.xxl.vertical,
        Text(
          title ?? 'Tivemos um problema',
          style: context.textTheme.headlineLarge,
        ),
        Dimension.sm.vertical,
        Text(
          message ??
              'Não foi possível carregar algumas informações. Por favor, tente novamente.',
          style: context.textTheme.titleLarge?.copyWith(
            color: context.textTheme.titleLarge?.color?.withOpacity(.6),
          ),
        ),
      ],
    );
  }

  @widgetFactory
  Widget _buildLeading(BuildContext context) {
    return GestureDetector(
      onTap: onLeadingPressed,
      child: Container(
        padding: EdgeInsets.all(Dimension.sm.value),
        decoration: BoxDecoration(
          color: context.colorScheme.primaryContainer,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.arrow_back,
          color: context.colorScheme.onPrimaryContainer,
          size: 24.fontSize,
        ),
      ),
    );
  }
}

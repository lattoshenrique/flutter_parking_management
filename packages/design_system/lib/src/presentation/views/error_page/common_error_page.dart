import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../../widgets/widgets.dart';
import 'common_error_page_args.dart';

class CommonErrorPage extends StatelessWidget {
  final CommonErrorPageArgs args;

  const CommonErrorPage({
    super.key,
    required this.args,
  });

  @override
  Widget build(BuildContext context) {
    return CommonScaffold.standard(
      showDefaultAppBar: false,
      extendBody: true,
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: Dimension.md.value,
          horizontal: Dimension.lg.value,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Dimension.xxxl.vertical,
            _buildLeading(context),
            _buildBody(context),
          ],
        ),
      ),
      bottomNavigatorBar: BottomNavigatorActionButtons(
        primaryButtonText: args.primaryButtonText,
        secondaryButtonText: args.secondaryButtonText,
        onTapPrimaryButton: args.onPrimaryButtonPressed,
        onTapSecondaryButton: args.onSecondaryButtonPressed,
      ),
    );
  }

  @widgetFactory
  Widget _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Dimension.xxl.vertical,
        Text(args.title ?? 'Tivemos um problema').pageTitle1(context),
        Dimension.sm.vertical,
        Text(
          args.message ??
              'Não foi possível carregar algumas informações. Por favor, tente novamente.',
        ).pageSubTitle1(context),
      ],
    );
  }

  @widgetFactory
  Widget _buildLeading(BuildContext context) {
    return args.leading ??
        GestureDetector(
          onTap: args.onLeadingPressed,
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

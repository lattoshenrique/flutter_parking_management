import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeCardSelector extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final VoidCallback onTap;

  const HomeCardSelector({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(Dimension.xs.value),
      child: Container(
        padding: Dimension.md.paddingAll,
        decoration: BoxDecoration(
          border: Border.all(color: context.colorScheme.primary),
          borderRadius: BorderRadius.circular(Dimension.xs.value),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 35.fontSize,
              color: context.colorScheme.primary,
            ),
            Dimension.sm.horizontal,
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title).cardTitle1(context),
                  Dimension.xxs.vertical,
                  Text(description).cardBody2(context),
                ],
              ),
            ),
            Dimension.sm.horizontal,
            Icon(
              Icons.arrow_forward,
              size: 25.fontSize,
              color: context.colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}

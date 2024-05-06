import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

abstract class VehicleCard extends StatelessWidget {
  const VehicleCard._({
    super.key,
  });

  const factory VehicleCard.loading() = _VehicleCardLoading;

  const factory VehicleCard.loaded({
    required String plate,
    required String name,
    required VoidCallback onTap,
  }) = _VehicleCardLoaded;
}

class _VehicleCardLoading extends VehicleCard {
  const _VehicleCardLoading() : super._();

  @override
  Widget build(BuildContext context) {
    return ShimmerWidget(
      baseColor: context.colorScheme.secondaryContainer,
      highlightColor: context.colorScheme.secondaryContainer.withOpacity(.5),
      child: Card(
        child: const Dimension(10).vertical,
      ),
    );
  }
}

class _VehicleCardLoaded extends VehicleCard {
  final String plate;
  final String name;
  final VoidCallback onTap;

  const _VehicleCardLoaded({
    required this.plate,
    required this.name,
    required this.onTap,
  }) : super._();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: context.colorScheme.secondaryContainer,
        child: Padding(
          padding: Dimension.sm.paddingAll,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: Dimension.xs.paddingAll,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0,
                    color: context.colorScheme.onSecondaryContainer,
                  ),
                  borderRadius: BorderRadius.circular(Dimension.xs.value),
                ),
                child: Text(
                  plate,
                  style: context.textTheme.titleMedium,
                ),
              ),
              Dimension.sm.horizontal,
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Dimension.sm.horizontal,
              IconButton(
                onPressed: onTap,
                icon: const Icon(Icons.edit),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

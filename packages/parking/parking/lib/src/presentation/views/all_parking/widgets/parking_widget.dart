import 'package:common_deps/common_deps.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:parking_commons/parking_commons.dart';

abstract class ParkingWidget extends StatelessWidget {
  const ParkingWidget._({
    super.key,
  });

  const factory ParkingWidget.loaded({
    required Parking parking,
    required VoidCallback onTap,
  }) = _LoadedParkingWidget;

  const factory ParkingWidget.loading() = _LoadingParkingWidget;
}

class _LoadingParkingWidget extends ParkingWidget {
  const _LoadingParkingWidget() : super._();

  @override
  Widget build(BuildContext context) {
    return ShimmerWidget(
      child: Container(
        padding: Dimension.sm.paddingAll,
        decoration: BoxDecoration(
          color: context.colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(Dimension.xs.value),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}

class _LoadedParkingWidget extends ParkingWidget {
  final Parking parking;
  final VoidCallback onTap;

  const _LoadedParkingWidget({
    required this.parking,
    required this.onTap,
  }) : super._();

  @override
  Widget build(BuildContext context) {
    final inUse = parking.orders.any((e) => e.departureDate == null);

    return InkWell(
      borderRadius: BorderRadius.circular(Dimension.xs.value),
      onTap: onTap,
      child: Container(
        padding: Dimension.sm.paddingAll,
        decoration: BoxDecoration(
          color: inUse
              ? context.colorScheme.tertiaryContainer
              : context.colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(Dimension.xs.value),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(parking.name).cardTitle1(context),
            Dimension.md.vertical,
            if (inUse)
              Builder(
                builder: (_) {
                  final order =
                      parking.orders.firstWhere((e) => e.departureDate == null);

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        order.vehicle.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ).cardBody1Bold(context),
                      Dimension.sm.vertical,
                      Text(
                        'Entrou ${DateFormat('MMMEd', 'pt_BR').format(order.entryDate)} às ${DateFormat('HH:mm').format(order.entryDate)}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ).cardBody1(context),
                    ],
                  );
                },
              )
            else
              const Text('DISPONÍVEL').cardSubTitle1(context),
          ],
        ),
      ),
    );
  }
}

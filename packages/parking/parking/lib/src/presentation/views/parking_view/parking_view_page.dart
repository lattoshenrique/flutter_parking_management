import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:parking_commons/parking_commons.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

import '../../../parking_module_routing.dart';
import 'parking_view_view_model.dart';
import 'parking_view_view_model_state.dart';

class ParkingViewPage extends StatefulWidget {
  final Parking parking;

  const ParkingViewPage({
    super.key,
    required this.parking,
  });

  @override
  State<ParkingViewPage> createState() => _ParkingViewPageState();
}

class _ParkingViewPageState
    extends ViewState<ParkingViewPage, ParkingViewViewModel> {
  DateTime? _selectedDate;
  DateTime? _selectedTime;

  @override
  void initState() {
    super.initState();
    viewModel.getVehicles(widget.parking);
  }

  void _listener(
    BuildContext context,
    ParkingViewViewModelState state,
  ) {
    switch (state) {
      case ErrorParkingViewViewModelState():
        onButtonPressed() {
          Nav.pop();
        }
        final args = CommonErrorPageArgs(
          onLeadingPressed: onButtonPressed,
          onPrimaryButtonPressed: onButtonPressed,
          primaryButtonText: 'VOLTAR',
          secondaryButtonText: 'VOLTAR PARA O INÍCIO',
          onSecondaryButtonPressed: () {
            Nav.popUntil((route) => route.isFirst);
          },
        );
        Nav.pushNamed(
          ParkingModuleRouting.errorPage.completePath,
          arguments: args,
        );
        break;
      case UpdateOrderParkingViewViewModelState():
        Nav.pop();
        context.showSnackbar(
          'Ordem executada com sucesso!',
          type: SnackbarType.success,
        );
        break;
      default:
        break;
    }
  }

  void _createOrder(Parking parking, Vehicle vehicle) {
    viewModel.createOrder(
      parking,
      CreateParkingOrderParams(
        parkingId: parking.id,
        vehicle: vehicle,
      ),
    );
  }

  void _completeOrder(
    BuildContext context, {
    required String orderId,
    required Parking parking,
  }) async {
    final now = DateTime.now();

    await _selectDateTime(context, now).then((_) {
      if (_selectedDate == null && _selectedTime == null) return;

      final DateTime selectedDateTime = DateTime(
        _selectedDate!.year,
        _selectedDate!.month,
        _selectedDate!.day,
        _selectedTime!.hour,
        _selectedTime!.minute,
      );

      if (selectedDateTime.isAfter(now)) {
        context.showSnackbar(
          'A data e hora selecionadas não podem ser maiores que a data e hora atuais.',
          type: SnackbarType.error,
        );
        return;
      }

      final params = UpdateParkingOrderParams(departureDate: selectedDateTime);
      viewModel.completeOrder(
        parking: parking,
        orderId: orderId,
        params: params,
      );
    });
  }

  Future<void> _selectDateTime(
    BuildContext context,
    DateTime now,
  ) async {
    _selectedDate = null;
    _selectedTime = null;
    await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    ).then((selectedDate) async {
      _selectedDate = selectedDate;
      await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(now),
      ).then((selectedTime) {
        _selectedTime = selectedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelConsumer(
      viewModel: viewModel,
      listener: _listener,
      builder: (context, state) => switch (state) {
        SuccessParkingViewViewModelState(
          :final parking,
          :final vehicles,
        ) =>
          _buildContent(
            context,
            parkingObj: parking,
            vehicles: vehicles,
          ),
        LoadingParkingViewViewModelState(:final parking) => _buildContent(
            context,
            isLoading: true,
            parkingObj: parking,
          ),
        _ => _buildContent(context),
      },
    );
  }

  @widgetFactory
  Widget _buildBottomSheetContent(
    BuildContext context,
    List<Vehicle> vehicles,
    Parking parking,
  ) {
    final createVehicleButton = AppButton.primary(
      text: 'Cadastrar Veículo',
      extended: true,
      onTap: () {
        Nav.pop();
        Nav.pushNamed(
          VehiclesCommonsModulePaths.setVehicle.completePath,
        ).then((_) {
          viewModel.getVehicles(parking);
        });
      },
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (vehicles.isNotEmpty) ...[
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: vehicles.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final item = vehicles[index];

                return ListTile(
                  visualDensity: VisualDensity.compact,
                  title: Text(item.name).cardTitle1Inversed(context),
                  subtitle: Text(item.plate).cardBody2Inverted(context),
                  onTap: () {
                    Nav.pop();
                    _createOrder(parking, item);
                  },
                );
              },
              separatorBuilder: (context, index) => Divider(
                color: context.colorScheme.onInverseSurface.withOpacity(.4),
              ),
            ),
          ),
          createVehicleButton,
        ] else ...[
          const Text(
            'Não há veículos disponíveis para registrar entrada.',
          ).pageSubTitle1Inverted(context),
          const Spacer(),
          createVehicleButton,
        ],
      ],
    );
  }

  @widgetFactory
  Widget _buildContent(
    BuildContext context, {
    Parking? parkingObj,
    List<Vehicle> vehicles = const [],
    bool isLoading = false,
  }) {
    final parking = parkingObj ?? widget.parking;

    final hasOrders = parking.orders.isNotEmpty;

    final hasOpenOrder = hasOrders && parking.openOrder != null;

    return CommonScaffold.standard(
      extendBody: true,
      appBar: CommonAppBar.standard(
        titleText: parking.name,
        removeEffectOnScroll: true,
      ),
      body: Padding(
        padding: Dimension.sm.paddingAll,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (hasOpenOrder) ...[
              const Text('Ocupando no momento').pageTitle2(context),
              Dimension.sm.vertical,
              _buildListTileVehicle(parking.openOrder!),
              Dimension.lg.vertical,
            ],
            if (parking.completedOrders.isEmpty)
              const Text(
                'Ainda não há histórico de entradas + saídas de veículos para essa vaga.',
              ).pageSubTitle1(context)
            else ...[
              Text('Histórico (${parking.completedOrders.length})')
                  .pageTitle2(context),
              Dimension.sm.vertical,
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  itemCount: parking.completedOrders.length,
                  itemBuilder: (context, index) {
                    final item = parking.completedOrders[index];

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildListTileVehicle(item, index: index),
                        if (index + 1 == parking.completedOrders.length)
                          const Dimension(15).vertical,
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                ),
              ),
            ],
          ],
        ),
      ),
      bottomNavigatorBar: BottomNavigatorActionButtons(
        primaryButton: AppButton.primary(
          text: hasOpenOrder ? 'saída de veiculo' : 'entrada de veículo',
          extended: true,
          isLoading: isLoading,
          onTap: () {
            if (hasOpenOrder) {
              final openedOrder =
                  parking.orders.firstWhere((e) => e.departureDate == null);
              _completeOrder(
                context,
                orderId: openedOrder.id,
                parking: parking,
              );
              return;
            }
            context.showBottomSheet(
              child: _buildBottomSheetContent(context, vehicles, parking),
            );
          },
        ),
      ),
    );
  }

  @widgetFactory
  Widget _buildListTileVehicle(ParkingOrder item, {int? index}) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      style: ListTileStyle.list,
      leading: index != null ? Text('${index + 1}') : null,
      title: Text('${item.vehicle.name} [${item.vehicle.plate}]'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Entrada: ${item.entryDate.commonFormattedDateTime}',
          ),
          if (item.departureDate != null)
            Text(
              'Saída: ${item.departureDate!.commonFormattedDateTime}',
            ),
        ],
      ),
    );
  }
}

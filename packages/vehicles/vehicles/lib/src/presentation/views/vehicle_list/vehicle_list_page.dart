import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vehicles/vehicles.dart';

import '../../../vehicles_module_routing.dart';
import 'vehicle_list_view_model.dart';

const kPageTitle = 'Veículos';

class VehicleListPage extends StatefulWidget {
  const VehicleListPage({super.key});

  @override
  State<VehicleListPage> createState() => _VehicleListPageState();
}

class _VehicleListPageState
    extends ViewState<VehicleListPage, VehicleListViewModel> {
  void _listener(
    BuildContext context,
    VehicleListViewModelState state,
  ) {
    switch (state) {
      case ErrorVehicleListViewModelState(:final message):
        onButtonPressed() {
          Nav.pop();
          viewModel.loadPage();
        }
        final args = CommonErrorPageArgs(
          onLeadingPressed: onButtonPressed,
          onPrimaryButtonPressed: onButtonPressed,
          primaryButtonText: 'VOLTAR',
          message: message,
        );
        Nav.pushNamed(
          VehiclesModuleRouting.errorPage,
          arguments: args,
        );
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelConsumer<VehicleListViewModel, VehicleListViewModelState>(
      viewModel: viewModel,
      listener: _listener,
      builder: (context, state) => switch (state) {
        ErrorVehicleListViewModelState() ||
        LoadingVehicleListViewModelState() =>
          _buildLoadingAll(context),
        LoadedVehicleListViewModelState(:final vehicles) => _buildLoaded(
            context,
            vehicles: vehicles,
          ),
      },
    );
  }

  @widgetFactory
  Widget _buildLoaded(
    BuildContext context, {
    required List<Vehicle> vehicles,
  }) {
    return CommonScaffold.standard(
      extendBody: true,
      appBar: const CommonAppBar.standard(
        titleText: kPageTitle,
      ),
      body: vehicles.isEmpty
          ? Padding(
              padding: Dimension.sm.paddingAll,
              child: const Text(
                'Você ainda não cadastrou nenhum veículo. Cadastre um para vê-lo aqui.',
              ).pageSubTitle1(context),
            )
          : ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: Dimension.sm.paddingAll,
              itemCount: vehicles.length,
              itemBuilder: (context, index) {
                final item = vehicles[index];
                return VehicleCard.loaded(
                  plate: item.plate,
                  name: item.name,
                  onTap: () {
                    // TODO:
                  },
                );
              },
              separatorBuilder: (context, index) => Dimension.xs.vertical,
            ),
      bottomNavigatorBar: _buildBottomNavigator(context),
    );
  }

  @widgetFactory
  Widget _buildLoadingAll(BuildContext context) {
    return CommonScaffold.standard(
      extendBody: true,
      appBar: const CommonAppBar.standard(
        titleText: kPageTitle,
      ),
      body: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        padding: Dimension.sm.paddingAll,
        itemCount: 8,
        itemBuilder: (context, index) => const VehicleCard.loading(),
        separatorBuilder: (context, index) => Dimension.xs.vertical,
      ),
      bottomNavigatorBar: _buildBottomNavigator(context),
    );
  }

  @widgetFactory
  Widget _buildBottomNavigator(BuildContext context) {
    return BottomNavigatorActionButtons(
      primaryButtonText: 'ADICIONAR NOVO VEÍCULO',
      onTapPrimaryButton: () {
        // TODO:
      },
    );
  }
}

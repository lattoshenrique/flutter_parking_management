import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import 'vehicle_list_view_model.dart';

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
  ) {}

  @override
  Widget build(BuildContext context) {
    return CommonErrorPage();
    return CommonScaffold.standard(
      body: ViewModelConsumer<VehicleListViewModel, VehicleListViewModelState>(
        viewModel: viewModel,
        listener: _listener,
        builder: (context, state) => switch (state) {
          _ => CommonErrorPage(
              title: 'Tivemos um problema...',
              message:
                  'Não foi possível carregar algumas informações.\nPor favor, tente novamente.',
            ),
        },
      ),
    );
  }
}

import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

import '../../../vehicles_module_routing.dart';
import 'update_vehicle_view_model.dart';
import 'update_vehicle_view_model_state.dart';

const _kUpdatePageName = 'Atualizar Veículo';
const _kCreatePageName = 'Adicionar Veículo';

class UpdateVehiclePage extends StatefulWidget {
  final Vehicle? vehicle;

  const UpdateVehiclePage({
    super.key,
    this.vehicle,
  });

  @override
  State<UpdateVehiclePage> createState() => _UpdateVehiclePageState();
}

class _UpdateVehiclePageState
    extends ViewState<UpdateVehiclePage, UpdateVehicleViewModel> {
  final _nameController = TextEditingController();
  final _plateController = TextEditingController();
  bool _isPlateEnable = true;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    if (widget.vehicle != null) {
      _nameController.text = widget.vehicle!.name;
      _plateController.text = widget.vehicle!.plate;
      _isPlateEnable = false;
    }
  }

  void _updateVehicle() {
    if (_formKey.currentState?.validate() ?? false) {
      widget.vehicle != null
          ? viewModel.update(
              id: widget.vehicle!.id,
              params: UpdateVehicleParams(
                name: _nameController.text,
              ),
            )
          : viewModel.create(
              CreateVehicleParams(
                name: _nameController.text,
                plate: _plateController.text.toUpperCase(),
              ),
            );
    }
  }

  void _deleteVehicle() {
    if (widget.vehicle != null) {
      viewModel.delete(widget.vehicle!.id);
    }
  }

  void _listener(BuildContext context, UpdateVehicleViewModelState state) {
    switch (state) {
      case SuccessUpdateVehicleViewModelState():
        context.showSnackbar(
          'Veículo salvo com sucesso!',
          type: SnackbarType.success,
        );
        Nav.pop();
        break;
      case SuccessDeleteVehicleViewModelState():
        context.showSnackbar(
          'Veículo excluído com sucesso!',
          type: SnackbarType.success,
        );
        Nav.pop();
        break;
      case ErrorUpdateVehicleViewModelState(:final message):
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
          message: message,
        );
        Nav.pushNamed(
          VehiclesModuleRouting.errorPage.completePath,
          arguments: args,
        );
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelConsumer<UpdateVehicleViewModel,
        UpdateVehicleViewModelState>(
      viewModel: viewModel,
      listener: _listener,
      builder: (context, state) => switch (state) {
        LoadingUpdateVehicleViewModelState() => _buildContent(
            context,
            isLoading: true,
          ),
        _ => _buildContent(context),
      },
    );
  }

  @widgetFactory
  Widget _buildContent(
    BuildContext context, {
    bool isLoading = false,
  }) {
    return CommonScaffold.standard(
      appBar: CommonAppBar.standard(
        titleText: widget.vehicle != null ? _kUpdatePageName : _kCreatePageName,
      ),
      body: Padding(
        padding: Dimension.sm.paddingAll,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                enabled: _isPlateEnable && !isLoading,
                controller: _plateController,
                maxLength: 7,
                textCapitalization: TextCapitalization.characters,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  labelText: 'Placa',
                  hintText: 'exemplo: ABC1D23',
                ),
                validator: (value) {
                  final regExp = RegExp(r'^[A-Z]{3}\d{1}[A-Z]\d{2}$');
                  return !regExp.hasMatch(value ?? '')
                      ? 'Informe uma placa válida.'
                      : null;
                },
              ),
              Dimension.sm.vertical,
              TextFormField(
                enabled: !isLoading,
                controller: _nameController,
                maxLength: 100,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  labelText: 'Nome',
                  hintText: 'exemplo: Onix Prata de Jorge',
                ),
                validator: (value) {
                  return (value?.length ?? 0) < 8
                      ? 'O nome deve ter pelo menos 8 caracteres.'
                      : null;
                },
                onFieldSubmitted: (_) => _updateVehicle(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigatorBar: BottomNavigatorActionButtons(
        primaryButton: AppButton.primary(
          text: 'Salvar',
          extended: true,
          onTap: _updateVehicle,
          isLoading: isLoading,
        ),
        secondaryButton: widget.vehicle == null || isLoading
            ? null
            : AppButton.text(
                text: 'Excluir Veículo',
                extended: true,
                onTap: _deleteVehicle,
              ),
      ),
    );
  }
}

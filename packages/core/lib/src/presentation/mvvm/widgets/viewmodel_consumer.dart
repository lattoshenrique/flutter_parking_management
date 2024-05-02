import 'package:common_deps/common_deps.dart';

import '../viewmodel.dart';
import '../viewmodel_state.dart';

class ViewModelConsumer<VM extends ViewModel<S>, S extends ViewModelState>
    extends BlocConsumer<VM, S> {
  const ViewModelConsumer({
    super.key,
    required VM viewModel,
    required super.builder,
    required super.listener,
    super.buildWhen,
    super.listenWhen,
  }) : super(
          bloc: viewModel,
        );
}

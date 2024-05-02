import 'package:common_deps/common_deps.dart';
import 'package:flutter/widgets.dart';

import '../viewmodel.dart';
import '../viewmodel_state.dart';

typedef ViewModelWidgetBuilder<S> = Widget Function(
  BuildContext context,
  S state,
);

typedef ViewModelBuilderCondition<S> = bool Function(S previous, S current);

class ViewModelBuilder<VM extends ViewModel<S>, S extends ViewModelState>
    extends BlocBuilder<VM, S> {
  const ViewModelBuilder({
    super.key,
    required VM viewModel,
    required super.builder,
    super.buildWhen,
  }) : super(bloc: viewModel);
}

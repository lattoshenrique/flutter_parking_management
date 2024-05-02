import 'package:common_deps/common_deps.dart';
import 'package:flutter/widgets.dart';

import '../viewmodel.dart';
import '../viewmodel_state.dart';

typedef ViewModelWidgetListener<S> = void Function(
  BuildContext context,
  S state,
);

typedef ViewModelListenerCondition<S> = bool Function(S previous, S current);

class ViewModelListener<VM extends ViewModel<S>, S extends ViewModelState>
    extends BlocListener<VM, S> {
  const ViewModelListener({
    super.key,
    required VM viewModel,
    required super.listener,
    super.listenWhen,
    super.child,
  }) : super(
          bloc: viewModel,
        );
}

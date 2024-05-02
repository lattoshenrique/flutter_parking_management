import 'package:common_deps/common_deps.dart';

import '../mvvm.dart';

typedef ViewModelWidgetSelector<S, T> = T Function(S state);

class ViewModelSelector<VM extends ViewModel<S>, S extends ViewModelState, T>
    extends BlocSelector<VM, S, T> {
  const ViewModelSelector({
    super.key,
    required VM viewModel,
    required super.builder,
    required super.selector,
  }) : super(
          bloc: viewModel,
        );
}

import 'package:common_deps/common_deps.dart';

import 'viewmodel_state.dart';

abstract class ViewModel<State extends ViewModelState> extends BlocBase<State>
    implements Disposable {
  bool isInitialized = false;

  ViewModel(super.initialState) {
    initViewModel();
  }

  @mustCallSuper
  void initViewModel() {
    assert(
      !isInitialized,
      'View Model has already been initialized! The initialization occurs automatically on life cycle, so you should not call initViewModel manually.',
    );
    isInitialized = true;
  }

  @override
  void emit(State state) {
    if (!isClosed) super.emit(state);
  }

  @override
  void dispose() {
    super.close();
  }
}

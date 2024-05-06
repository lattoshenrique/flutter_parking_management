import 'package:flutter/widgets.dart';

import '../utils.dart';
import 'viewmodel.dart';

abstract class ViewState<S extends StatefulWidget, M extends ViewModel>
    extends State<S> {
  late final M viewModel;

  @override
  @mustCallSuper
  void initState() {
    viewModel = DM.get<M>();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    final isDisposed = DM.dispose<M>();
    if (isDisposed) {
      return;
    }
    viewModel.dispose();
  }
}

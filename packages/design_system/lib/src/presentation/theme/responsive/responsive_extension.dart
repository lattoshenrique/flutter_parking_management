import 'size_config.dart';

extension Responsive on num {
  double get fontSize => SizeConfig.textMultiplier * this;
}

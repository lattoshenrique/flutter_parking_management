import 'package:common_deps/common_deps.dart';

extension DateTimeFormatters on DateTime {
  String get commonFormattedDateTime =>
      '${DateFormat('MMMEd', 'pt_BR').format(this)} às ${DateFormat('HH:mm').format(this)}';
}

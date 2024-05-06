library common_deps;

import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:collection/collection.dart';
export 'package:dartz/dartz.dart'
    show Either, Right, Left, Unit, unit, Option, some, none;
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:flutter_modular/flutter_modular.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:hive/hive.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:intl/date_symbol_data_custom.dart';
export 'package:intl/date_symbol_data_local.dart';
export 'package:intl/date_symbols.dart';
export 'package:intl/date_time_patterns.dart';
export 'package:intl/intl.dart' hide TextDirection;
export 'package:json_annotation/json_annotation.dart';
export 'package:logger/logger.dart';
export 'package:nil/nil.dart';
export 'package:rxdart/rxdart.dart';
export 'package:shimmer/shimmer.dart';
export 'package:smooth_page_indicator/smooth_page_indicator.dart';
export 'package:uuid/uuid.dart';

const freezedNoHelpers = Freezed(
  when: FreezedWhenOptions.none,
  map: FreezedMapOptions.none,
);

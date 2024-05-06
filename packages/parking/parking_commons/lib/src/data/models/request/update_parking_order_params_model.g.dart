// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_parking_order_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateParkingOrderParamsModelImpl
    _$$UpdateParkingOrderParamsModelImplFromJson(Map<String, dynamic> json) =>
        _$UpdateParkingOrderParamsModelImpl(
          departureDate: DateTime.parse(json['departureDate'] as String),
        );

Map<String, dynamic> _$$UpdateParkingOrderParamsModelImplToJson(
        _$UpdateParkingOrderParamsModelImpl instance) =>
    <String, dynamic>{
      'departureDate': instance.departureDate.toIso8601String(),
    };

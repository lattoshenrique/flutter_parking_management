// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_parking_order_params_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateParkingOrderParamsModelImpl
    _$$CreateParkingOrderParamsModelImplFromJson(Map<String, dynamic> json) =>
        _$CreateParkingOrderParamsModelImpl(
          parkingId: json['parkingId'] as String,
          vehicle:
              VehicleModel.fromJson(json['vehicle'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateParkingOrderParamsModelImplToJson(
        _$CreateParkingOrderParamsModelImpl instance) =>
    <String, dynamic>{
      'parkingId': instance.parkingId,
      'vehicle': instance.vehicle,
    };

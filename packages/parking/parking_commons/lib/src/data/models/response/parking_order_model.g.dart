// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_order_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ParkingOrderModelAdapter extends TypeAdapter<_$ParkingOrderModelImpl> {
  @override
  final int typeId = 3;

  @override
  _$ParkingOrderModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ParkingOrderModelImpl(
      id: fields[0] as String,
      parking: fields[1] as ParkingModel,
      vehicle: fields[2] as VehicleModel,
      entryDate: fields[3] as DateTime,
      departureDate: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, _$ParkingOrderModelImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.parking)
      ..writeByte(2)
      ..write(obj.vehicle)
      ..writeByte(3)
      ..write(obj.entryDate)
      ..writeByte(4)
      ..write(obj.departureDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ParkingOrderModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParkingOrderModelImpl _$$ParkingOrderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ParkingOrderModelImpl(
      id: json['id'] as String,
      parking: ParkingModel.fromJson(json['parking'] as Map<String, dynamic>),
      vehicle: VehicleModel.fromJson(json['vehicle'] as Map<String, dynamic>),
      entryDate: DateTime.parse(json['entryDate'] as String),
      departureDate: json['departureDate'] == null
          ? null
          : DateTime.parse(json['departureDate'] as String),
    );

Map<String, dynamic> _$$ParkingOrderModelImplToJson(
        _$ParkingOrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parking': instance.parking,
      'vehicle': instance.vehicle,
      'entryDate': instance.entryDate.toIso8601String(),
      'departureDate': instance.departureDate?.toIso8601String(),
    };

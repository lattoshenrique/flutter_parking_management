// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ParkingModelAdapter extends TypeAdapter<_$ParkingModelImpl> {
  @override
  final int typeId = 2;

  @override
  _$ParkingModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ParkingModelImpl(
      id: fields[0] as String,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$ParkingModelImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ParkingModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParkingModelImpl _$$ParkingModelImplFromJson(Map<String, dynamic> json) =>
    _$ParkingModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ParkingModelImplToJson(_$ParkingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

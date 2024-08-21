// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_detail.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AttendanceDetailAdapter extends TypeAdapter<AttendanceDetail> {
  @override
  final int typeId = 0;

  @override
  AttendanceDetail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AttendanceDetail();
  }

  @override
  void write(BinaryWriter writer, AttendanceDetail obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AttendanceDetailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_list_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StaffListDetailDataAdapter extends TypeAdapter<StaffListData> {
  @override
  final int typeId = 0;

  @override
  StaffListData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StaffListData();
  }

  @override
  void write(BinaryWriter writer, StaffListData obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StaffListDetailDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LinksAdapter extends TypeAdapter<Links> {
  @override
  final int typeId = 5;

  @override
  Links read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Links();
  }

  @override
  void write(BinaryWriter writer, Links obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LinksAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EmployeeDataAdapter extends TypeAdapter<EmployeeData> {
  @override
  final int typeId = 1;

  @override
  EmployeeData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EmployeeData();
  }

  @override
  void write(BinaryWriter writer, EmployeeData obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmployeeDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DepartmentAdapter extends TypeAdapter<Departments> {
  @override
  final int typeId = 4;

  @override
  Departments read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Departments();
  }

  @override
  void write(BinaryWriter writer, Departments obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DepartmentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EmployeeImagesAdapter extends TypeAdapter<EmployeeImages> {
  @override
  final int typeId = 3;

  @override
  EmployeeImages read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EmployeeImages();
  }

  @override
  void write(BinaryWriter writer, EmployeeImages obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmployeeImagesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EmployeeProfilesAdapter extends TypeAdapter<EmployeeProfiles> {
  @override
  final int typeId = 2;

  @override
  EmployeeProfiles read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EmployeeProfiles();
  }

  @override
  void write(BinaryWriter writer, EmployeeProfiles obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmployeeProfilesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

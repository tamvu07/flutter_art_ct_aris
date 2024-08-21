import 'dart:convert';

/// id : 2
/// name : "Finger 9th HCM"

CheckInOutDevice checkoutDeviceFromJson(String str) => CheckInOutDevice.fromJson(json.decode(str));

String checkoutDeviceToJson(CheckInOutDevice data) => json.encode(data.toJson());

class CheckInOutDevice {
  CheckInOutDevice({
    num? id,
    String? name,
  }) {
    _id = id;
    _name = name;
  }

  CheckInOutDevice.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }

  num? _id;
  String? _name;

  CheckInOutDevice copyWith({
    num? id,
    String? name,
  }) =>
      CheckInOutDevice(
        id: id ?? _id,
        name: name ?? _name,
      );

  num? get id => _id;

  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }
}
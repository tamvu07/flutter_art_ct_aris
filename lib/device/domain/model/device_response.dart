import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'device_response.freezed.dart';
part 'device_response.g.dart';

@freezed
class DeviceListResponse with _$DeviceListResponse {
  const factory DeviceListResponse({
    int? code,
    String? msg,
    DeviceListData? data,
  }) = _DeviceListResponse;

  factory DeviceListResponse.fromJson(Map<String, Object?> json) =>
      _$DeviceListResponseFromJson(json);
}

@freezed
class DeviceListData with _$DeviceListData {
  const factory DeviceListData({
    @JsonKey(name: 'current_page') int? currentPage,
    List<Device>? data,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    List<Link>? links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    int? to,
    int? total,
  }) = _DeviceListData;

  factory DeviceListData.fromJson(Map<String, Object?> json) =>
      _$DeviceListDataFromJson(json);
}

@freezed
class Device with _$Device {
  const factory Device({
    int? id,
    String? name,
    String? serial,
    String? imei,
    String? os,
    @JsonKey(name: 'screen_size') String? screenSize,
    int? status,
    Approver? approver,
    DeviceBrand? borrowBrand,
    DeviceImage? borrowDeviceImages,
  }) = _Device;

  factory Device.fromJson(Map<String, Object?> json) => _$DeviceFromJson(json);
}

@freezed
class Approver with _$Approver {
  const factory Approver({
    int? id,
    int? show,
    int? status,
    Profile? employeeProfiles,
  }) = _Approver;

  factory Approver.fromJson(Map<String, Object?> json) =>
      _$ApproverFromJson(json);
}

@freezed
class Profile with _$Profile {
  const factory Profile({
    int? id,
    @JsonKey(name: 'employee_id') int? employeeId,
    String? code,
    int? gender,
    String? fullname,
    String? firstname,
    String? lastname,
    String? phone,
    String? email,
    String? exp,
  }) = _Profile;

  factory Profile.fromJson(Map<String, Object?> json) =>
      _$ProfileFromJson(json);
}

@freezed
class DeviceBrand with _$DeviceBrand {
  const factory DeviceBrand({
    int? id,
    String? name,
  }) = _DeviceBrand;

  factory DeviceBrand.fromJson(Map<String, Object?> json) =>
      _$DeviceBrandFromJson(json);
}

@freezed
class DeviceImage with _$DeviceImage {
  const factory DeviceImage({
    int? id,
    @JsonKey(name: 'image_url') String? imageUrl,
  }) = _DeviceImage;

  factory DeviceImage.fromJson(Map<String, Object?> json) =>
      _$DeviceImageFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    String? url,
    String? label,
    bool? active,
  }) = _Link;

  factory Link.fromJson(Map<String, Object?> json) => _$LinkFromJson(json);
}

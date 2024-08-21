// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceListResponse _$$_DeviceListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DeviceListResponse(
      code: json['code'] as int?,
      msg: json['msg'] as String?,
      data: json['data'] == null
          ? null
          : DeviceListData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DeviceListResponseToJson(
        _$_DeviceListResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };

_$_DeviceListData _$$_DeviceListDataFromJson(Map<String, dynamic> json) =>
    _$_DeviceListData(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Device.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int?,
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      prevPageUrl: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_DeviceListDataToJson(_$_DeviceListData instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$_Device _$$_DeviceFromJson(Map<String, dynamic> json) => _$_Device(
      id: json['id'] as int?,
      name: json['name'] as String?,
      serial: json['serial'] as String?,
      imei: json['imei'] as String?,
      os: json['os'] as String?,
      screenSize: json['screen_size'] as String?,
      status: json['status'] as int?,
      approver: json['approver'] == null
          ? null
          : Approver.fromJson(json['approver'] as Map<String, dynamic>),
      borrowBrand: json['borrowBrand'] == null
          ? null
          : DeviceBrand.fromJson(json['borrowBrand'] as Map<String, dynamic>),
      borrowDeviceImages: json['borrowDeviceImages'] == null
          ? null
          : DeviceImage.fromJson(
              json['borrowDeviceImages'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DeviceToJson(_$_Device instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'serial': instance.serial,
      'imei': instance.imei,
      'os': instance.os,
      'screen_size': instance.screenSize,
      'status': instance.status,
      'approver': instance.approver,
      'borrowBrand': instance.borrowBrand,
      'borrowDeviceImages': instance.borrowDeviceImages,
    };

_$_Approver _$$_ApproverFromJson(Map<String, dynamic> json) => _$_Approver(
      id: json['id'] as int?,
      show: json['show'] as int?,
      status: json['status'] as int?,
      employeeProfiles: json['employeeProfiles'] == null
          ? null
          : Profile.fromJson(json['employeeProfiles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ApproverToJson(_$_Approver instance) =>
    <String, dynamic>{
      'id': instance.id,
      'show': instance.show,
      'status': instance.status,
      'employeeProfiles': instance.employeeProfiles,
    };

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      id: json['id'] as int?,
      employeeId: json['employee_id'] as int?,
      code: json['code'] as String?,
      gender: json['gender'] as int?,
      fullname: json['fullname'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      exp: json['exp'] as String?,
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_id': instance.employeeId,
      'code': instance.code,
      'gender': instance.gender,
      'fullname': instance.fullname,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phone': instance.phone,
      'email': instance.email,
      'exp': instance.exp,
    };

_$_DeviceBrand _$$_DeviceBrandFromJson(Map<String, dynamic> json) =>
    _$_DeviceBrand(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_DeviceBrandToJson(_$_DeviceBrand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_DeviceImage _$$_DeviceImageFromJson(Map<String, dynamic> json) =>
    _$_DeviceImage(
      id: json['id'] as int?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$_DeviceImageToJson(_$_DeviceImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
    };

_$_Link _$$_LinkFromJson(Map<String, dynamic> json) => _$_Link(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$_LinkToJson(_$_Link instance) => <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };

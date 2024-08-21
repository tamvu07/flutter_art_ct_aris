// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceListResponse _$DeviceListResponseFromJson(Map<String, dynamic> json) {
  return _DeviceListResponse.fromJson(json);
}

/// @nodoc
mixin _$DeviceListResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  DeviceListData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceListResponseCopyWith<DeviceListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceListResponseCopyWith<$Res> {
  factory $DeviceListResponseCopyWith(
          DeviceListResponse value, $Res Function(DeviceListResponse) then) =
      _$DeviceListResponseCopyWithImpl<$Res>;
  $Res call({int? code, String? msg, DeviceListData? data});

  $DeviceListDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DeviceListResponseCopyWithImpl<$Res>
    implements $DeviceListResponseCopyWith<$Res> {
  _$DeviceListResponseCopyWithImpl(this._value, this._then);

  final DeviceListResponse _value;
  // ignore: unused_field
  final $Res Function(DeviceListResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DeviceListData?,
    ));
  }

  @override
  $DeviceListDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DeviceListDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_DeviceListResponseCopyWith<$Res>
    implements $DeviceListResponseCopyWith<$Res> {
  factory _$$_DeviceListResponseCopyWith(_$_DeviceListResponse value,
          $Res Function(_$_DeviceListResponse) then) =
      __$$_DeviceListResponseCopyWithImpl<$Res>;
  @override
  $Res call({int? code, String? msg, DeviceListData? data});

  @override
  $DeviceListDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_DeviceListResponseCopyWithImpl<$Res>
    extends _$DeviceListResponseCopyWithImpl<$Res>
    implements _$$_DeviceListResponseCopyWith<$Res> {
  __$$_DeviceListResponseCopyWithImpl(
      _$_DeviceListResponse _value, $Res Function(_$_DeviceListResponse) _then)
      : super(_value, (v) => _then(v as _$_DeviceListResponse));

  @override
  _$_DeviceListResponse get _value => super._value as _$_DeviceListResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_DeviceListResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DeviceListData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceListResponse
    with DiagnosticableTreeMixin
    implements _DeviceListResponse {
  const _$_DeviceListResponse({this.code, this.msg, this.data});

  factory _$_DeviceListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceListResponseFromJson(json);

  @override
  final int? code;
  @override
  final String? msg;
  @override
  final DeviceListData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceListResponse(code: $code, msg: $msg, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceListResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('msg', msg))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceListResponse &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.msg, msg) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(msg),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_DeviceListResponseCopyWith<_$_DeviceListResponse> get copyWith =>
      __$$_DeviceListResponseCopyWithImpl<_$_DeviceListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceListResponseToJson(
      this,
    );
  }
}

abstract class _DeviceListResponse implements DeviceListResponse {
  const factory _DeviceListResponse(
      {final int? code,
      final String? msg,
      final DeviceListData? data}) = _$_DeviceListResponse;

  factory _DeviceListResponse.fromJson(Map<String, dynamic> json) =
      _$_DeviceListResponse.fromJson;

  @override
  int? get code;
  @override
  String? get msg;
  @override
  DeviceListData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceListResponseCopyWith<_$_DeviceListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceListData _$DeviceListDataFromJson(Map<String, dynamic> json) {
  return _DeviceListData.fromJson(json);
}

/// @nodoc
mixin _$DeviceListData {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  List<Device>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl => throw _privateConstructorUsedError;
  List<Link>? get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceListDataCopyWith<DeviceListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceListDataCopyWith<$Res> {
  factory $DeviceListDataCopyWith(
          DeviceListData value, $Res Function(DeviceListData) then) =
      _$DeviceListDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
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
      int? total});
}

/// @nodoc
class _$DeviceListDataCopyWithImpl<$Res>
    implements $DeviceListDataCopyWith<$Res> {
  _$DeviceListDataCopyWithImpl(this._value, this._then);

  final DeviceListData _value;
  // ignore: unused_field
  final $Res Function(DeviceListData) _then;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Device>?,
      firstPageUrl: firstPageUrl == freezed
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: lastPageUrl == freezed
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: nextPageUrl == freezed
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: prevPageUrl == freezed
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_DeviceListDataCopyWith<$Res>
    implements $DeviceListDataCopyWith<$Res> {
  factory _$$_DeviceListDataCopyWith(
          _$_DeviceListData value, $Res Function(_$_DeviceListData) then) =
      __$$_DeviceListDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
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
      int? total});
}

/// @nodoc
class __$$_DeviceListDataCopyWithImpl<$Res>
    extends _$DeviceListDataCopyWithImpl<$Res>
    implements _$$_DeviceListDataCopyWith<$Res> {
  __$$_DeviceListDataCopyWithImpl(
      _$_DeviceListData _value, $Res Function(_$_DeviceListData) _then)
      : super(_value, (v) => _then(v as _$_DeviceListData));

  @override
  _$_DeviceListData get _value => super._value as _$_DeviceListData;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_DeviceListData(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Device>?,
      firstPageUrl: firstPageUrl == freezed
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: lastPageUrl == freezed
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: links == freezed
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: nextPageUrl == freezed
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: prevPageUrl == freezed
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceListData
    with DiagnosticableTreeMixin
    implements _DeviceListData {
  const _$_DeviceListData(
      {@JsonKey(name: 'current_page') this.currentPage,
      final List<Device>? data,
      @JsonKey(name: 'first_page_url') this.firstPageUrl,
      this.from,
      @JsonKey(name: 'last_page') this.lastPage,
      @JsonKey(name: 'last_page_url') this.lastPageUrl,
      final List<Link>? links,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      this.path,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl,
      this.to,
      this.total})
      : _data = data,
        _links = links;

  factory _$_DeviceListData.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceListDataFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  final List<Device>? _data;
  @override
  List<Device>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;
  @override
  final int? from;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;
  final List<Link>? _links;
  @override
  List<Link>? get links {
    final value = _links;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @override
  final String? path;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceListData(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceListData'))
      ..add(DiagnosticsProperty('currentPage', currentPage))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('firstPageUrl', firstPageUrl))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('lastPage', lastPage))
      ..add(DiagnosticsProperty('lastPageUrl', lastPageUrl))
      ..add(DiagnosticsProperty('links', links))
      ..add(DiagnosticsProperty('nextPageUrl', nextPageUrl))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('perPage', perPage))
      ..add(DiagnosticsProperty('prevPageUrl', prevPageUrl))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('total', total));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceListData &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other.firstPageUrl, firstPageUrl) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.lastPage, lastPage) &&
            const DeepCollectionEquality()
                .equals(other.lastPageUrl, lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            const DeepCollectionEquality()
                .equals(other.nextPageUrl, nextPageUrl) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality()
                .equals(other.prevPageUrl, prevPageUrl) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(firstPageUrl),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(lastPage),
      const DeepCollectionEquality().hash(lastPageUrl),
      const DeepCollectionEquality().hash(_links),
      const DeepCollectionEquality().hash(nextPageUrl),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(prevPageUrl),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$$_DeviceListDataCopyWith<_$_DeviceListData> get copyWith =>
      __$$_DeviceListDataCopyWithImpl<_$_DeviceListData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceListDataToJson(
      this,
    );
  }
}

abstract class _DeviceListData implements DeviceListData {
  const factory _DeviceListData(
      {@JsonKey(name: 'current_page') final int? currentPage,
      final List<Device>? data,
      @JsonKey(name: 'first_page_url') final String? firstPageUrl,
      final int? from,
      @JsonKey(name: 'last_page') final int? lastPage,
      @JsonKey(name: 'last_page_url') final String? lastPageUrl,
      final List<Link>? links,
      @JsonKey(name: 'next_page_url') final String? nextPageUrl,
      final String? path,
      @JsonKey(name: 'per_page') final int? perPage,
      @JsonKey(name: 'prev_page_url') final String? prevPageUrl,
      final int? to,
      final int? total}) = _$_DeviceListData;

  factory _DeviceListData.fromJson(Map<String, dynamic> json) =
      _$_DeviceListData.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  List<Device>? get data;
  @override
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  @override
  int? get from;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl;
  @override
  List<Link>? get links;
  @override
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  @override
  String? get path;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl;
  @override
  int? get to;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceListDataCopyWith<_$_DeviceListData> get copyWith =>
      throw _privateConstructorUsedError;
}

Device _$DeviceFromJson(Map<String, dynamic> json) {
  return _Device.fromJson(json);
}

/// @nodoc
mixin _$Device {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get serial => throw _privateConstructorUsedError;
  String? get imei => throw _privateConstructorUsedError;
  String? get os => throw _privateConstructorUsedError;
  @JsonKey(name: 'screen_size')
  String? get screenSize => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  Approver? get approver => throw _privateConstructorUsedError;
  DeviceBrand? get borrowBrand => throw _privateConstructorUsedError;
  DeviceImage? get borrowDeviceImages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceCopyWith<Device> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceCopyWith<$Res> {
  factory $DeviceCopyWith(Device value, $Res Function(Device) then) =
      _$DeviceCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? serial,
      String? imei,
      String? os,
      @JsonKey(name: 'screen_size') String? screenSize,
      int? status,
      Approver? approver,
      DeviceBrand? borrowBrand,
      DeviceImage? borrowDeviceImages});

  $ApproverCopyWith<$Res>? get approver;
  $DeviceBrandCopyWith<$Res>? get borrowBrand;
  $DeviceImageCopyWith<$Res>? get borrowDeviceImages;
}

/// @nodoc
class _$DeviceCopyWithImpl<$Res> implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._value, this._then);

  final Device _value;
  // ignore: unused_field
  final $Res Function(Device) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? serial = freezed,
    Object? imei = freezed,
    Object? os = freezed,
    Object? screenSize = freezed,
    Object? status = freezed,
    Object? approver = freezed,
    Object? borrowBrand = freezed,
    Object? borrowDeviceImages = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      serial: serial == freezed
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String?,
      imei: imei == freezed
          ? _value.imei
          : imei // ignore: cast_nullable_to_non_nullable
              as String?,
      os: os == freezed
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String?,
      screenSize: screenSize == freezed
          ? _value.screenSize
          : screenSize // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      approver: approver == freezed
          ? _value.approver
          : approver // ignore: cast_nullable_to_non_nullable
              as Approver?,
      borrowBrand: borrowBrand == freezed
          ? _value.borrowBrand
          : borrowBrand // ignore: cast_nullable_to_non_nullable
              as DeviceBrand?,
      borrowDeviceImages: borrowDeviceImages == freezed
          ? _value.borrowDeviceImages
          : borrowDeviceImages // ignore: cast_nullable_to_non_nullable
              as DeviceImage?,
    ));
  }

  @override
  $ApproverCopyWith<$Res>? get approver {
    if (_value.approver == null) {
      return null;
    }

    return $ApproverCopyWith<$Res>(_value.approver!, (value) {
      return _then(_value.copyWith(approver: value));
    });
  }

  @override
  $DeviceBrandCopyWith<$Res>? get borrowBrand {
    if (_value.borrowBrand == null) {
      return null;
    }

    return $DeviceBrandCopyWith<$Res>(_value.borrowBrand!, (value) {
      return _then(_value.copyWith(borrowBrand: value));
    });
  }

  @override
  $DeviceImageCopyWith<$Res>? get borrowDeviceImages {
    if (_value.borrowDeviceImages == null) {
      return null;
    }

    return $DeviceImageCopyWith<$Res>(_value.borrowDeviceImages!, (value) {
      return _then(_value.copyWith(borrowDeviceImages: value));
    });
  }
}

/// @nodoc
abstract class _$$_DeviceCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$$_DeviceCopyWith(_$_Device value, $Res Function(_$_Device) then) =
      __$$_DeviceCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? serial,
      String? imei,
      String? os,
      @JsonKey(name: 'screen_size') String? screenSize,
      int? status,
      Approver? approver,
      DeviceBrand? borrowBrand,
      DeviceImage? borrowDeviceImages});

  @override
  $ApproverCopyWith<$Res>? get approver;
  @override
  $DeviceBrandCopyWith<$Res>? get borrowBrand;
  @override
  $DeviceImageCopyWith<$Res>? get borrowDeviceImages;
}

/// @nodoc
class __$$_DeviceCopyWithImpl<$Res> extends _$DeviceCopyWithImpl<$Res>
    implements _$$_DeviceCopyWith<$Res> {
  __$$_DeviceCopyWithImpl(_$_Device _value, $Res Function(_$_Device) _then)
      : super(_value, (v) => _then(v as _$_Device));

  @override
  _$_Device get _value => super._value as _$_Device;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? serial = freezed,
    Object? imei = freezed,
    Object? os = freezed,
    Object? screenSize = freezed,
    Object? status = freezed,
    Object? approver = freezed,
    Object? borrowBrand = freezed,
    Object? borrowDeviceImages = freezed,
  }) {
    return _then(_$_Device(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      serial: serial == freezed
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String?,
      imei: imei == freezed
          ? _value.imei
          : imei // ignore: cast_nullable_to_non_nullable
              as String?,
      os: os == freezed
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String?,
      screenSize: screenSize == freezed
          ? _value.screenSize
          : screenSize // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      approver: approver == freezed
          ? _value.approver
          : approver // ignore: cast_nullable_to_non_nullable
              as Approver?,
      borrowBrand: borrowBrand == freezed
          ? _value.borrowBrand
          : borrowBrand // ignore: cast_nullable_to_non_nullable
              as DeviceBrand?,
      borrowDeviceImages: borrowDeviceImages == freezed
          ? _value.borrowDeviceImages
          : borrowDeviceImages // ignore: cast_nullable_to_non_nullable
              as DeviceImage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Device with DiagnosticableTreeMixin implements _Device {
  const _$_Device(
      {this.id,
      this.name,
      this.serial,
      this.imei,
      this.os,
      @JsonKey(name: 'screen_size') this.screenSize,
      this.status,
      this.approver,
      this.borrowBrand,
      this.borrowDeviceImages});

  factory _$_Device.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? serial;
  @override
  final String? imei;
  @override
  final String? os;
  @override
  @JsonKey(name: 'screen_size')
  final String? screenSize;
  @override
  final int? status;
  @override
  final Approver? approver;
  @override
  final DeviceBrand? borrowBrand;
  @override
  final DeviceImage? borrowDeviceImages;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Device(id: $id, name: $name, serial: $serial, imei: $imei, os: $os, screenSize: $screenSize, status: $status, approver: $approver, borrowBrand: $borrowBrand, borrowDeviceImages: $borrowDeviceImages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Device'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('serial', serial))
      ..add(DiagnosticsProperty('imei', imei))
      ..add(DiagnosticsProperty('os', os))
      ..add(DiagnosticsProperty('screenSize', screenSize))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('approver', approver))
      ..add(DiagnosticsProperty('borrowBrand', borrowBrand))
      ..add(DiagnosticsProperty('borrowDeviceImages', borrowDeviceImages));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Device &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.serial, serial) &&
            const DeepCollectionEquality().equals(other.imei, imei) &&
            const DeepCollectionEquality().equals(other.os, os) &&
            const DeepCollectionEquality()
                .equals(other.screenSize, screenSize) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.approver, approver) &&
            const DeepCollectionEquality()
                .equals(other.borrowBrand, borrowBrand) &&
            const DeepCollectionEquality()
                .equals(other.borrowDeviceImages, borrowDeviceImages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(serial),
      const DeepCollectionEquality().hash(imei),
      const DeepCollectionEquality().hash(os),
      const DeepCollectionEquality().hash(screenSize),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(approver),
      const DeepCollectionEquality().hash(borrowBrand),
      const DeepCollectionEquality().hash(borrowDeviceImages));

  @JsonKey(ignore: true)
  @override
  _$$_DeviceCopyWith<_$_Device> get copyWith =>
      __$$_DeviceCopyWithImpl<_$_Device>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceToJson(
      this,
    );
  }
}

abstract class _Device implements Device {
  const factory _Device(
      {final int? id,
      final String? name,
      final String? serial,
      final String? imei,
      final String? os,
      @JsonKey(name: 'screen_size') final String? screenSize,
      final int? status,
      final Approver? approver,
      final DeviceBrand? borrowBrand,
      final DeviceImage? borrowDeviceImages}) = _$_Device;

  factory _Device.fromJson(Map<String, dynamic> json) = _$_Device.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get serial;
  @override
  String? get imei;
  @override
  String? get os;
  @override
  @JsonKey(name: 'screen_size')
  String? get screenSize;
  @override
  int? get status;
  @override
  Approver? get approver;
  @override
  DeviceBrand? get borrowBrand;
  @override
  DeviceImage? get borrowDeviceImages;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceCopyWith<_$_Device> get copyWith =>
      throw _privateConstructorUsedError;
}

Approver _$ApproverFromJson(Map<String, dynamic> json) {
  return _Approver.fromJson(json);
}

/// @nodoc
mixin _$Approver {
  int? get id => throw _privateConstructorUsedError;
  int? get show => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  Profile? get employeeProfiles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApproverCopyWith<Approver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproverCopyWith<$Res> {
  factory $ApproverCopyWith(Approver value, $Res Function(Approver) then) =
      _$ApproverCopyWithImpl<$Res>;
  $Res call({int? id, int? show, int? status, Profile? employeeProfiles});

  $ProfileCopyWith<$Res>? get employeeProfiles;
}

/// @nodoc
class _$ApproverCopyWithImpl<$Res> implements $ApproverCopyWith<$Res> {
  _$ApproverCopyWithImpl(this._value, this._then);

  final Approver _value;
  // ignore: unused_field
  final $Res Function(Approver) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? show = freezed,
    Object? status = freezed,
    Object? employeeProfiles = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeProfiles: employeeProfiles == freezed
          ? _value.employeeProfiles
          : employeeProfiles // ignore: cast_nullable_to_non_nullable
              as Profile?,
    ));
  }

  @override
  $ProfileCopyWith<$Res>? get employeeProfiles {
    if (_value.employeeProfiles == null) {
      return null;
    }

    return $ProfileCopyWith<$Res>(_value.employeeProfiles!, (value) {
      return _then(_value.copyWith(employeeProfiles: value));
    });
  }
}

/// @nodoc
abstract class _$$_ApproverCopyWith<$Res> implements $ApproverCopyWith<$Res> {
  factory _$$_ApproverCopyWith(
          _$_Approver value, $Res Function(_$_Approver) then) =
      __$$_ApproverCopyWithImpl<$Res>;
  @override
  $Res call({int? id, int? show, int? status, Profile? employeeProfiles});

  @override
  $ProfileCopyWith<$Res>? get employeeProfiles;
}

/// @nodoc
class __$$_ApproverCopyWithImpl<$Res> extends _$ApproverCopyWithImpl<$Res>
    implements _$$_ApproverCopyWith<$Res> {
  __$$_ApproverCopyWithImpl(
      _$_Approver _value, $Res Function(_$_Approver) _then)
      : super(_value, (v) => _then(v as _$_Approver));

  @override
  _$_Approver get _value => super._value as _$_Approver;

  @override
  $Res call({
    Object? id = freezed,
    Object? show = freezed,
    Object? status = freezed,
    Object? employeeProfiles = freezed,
  }) {
    return _then(_$_Approver(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeProfiles: employeeProfiles == freezed
          ? _value.employeeProfiles
          : employeeProfiles // ignore: cast_nullable_to_non_nullable
              as Profile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Approver with DiagnosticableTreeMixin implements _Approver {
  const _$_Approver({this.id, this.show, this.status, this.employeeProfiles});

  factory _$_Approver.fromJson(Map<String, dynamic> json) =>
      _$$_ApproverFromJson(json);

  @override
  final int? id;
  @override
  final int? show;
  @override
  final int? status;
  @override
  final Profile? employeeProfiles;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Approver(id: $id, show: $show, status: $status, employeeProfiles: $employeeProfiles)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Approver'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('show', show))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('employeeProfiles', employeeProfiles));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Approver &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.show, show) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.employeeProfiles, employeeProfiles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(show),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(employeeProfiles));

  @JsonKey(ignore: true)
  @override
  _$$_ApproverCopyWith<_$_Approver> get copyWith =>
      __$$_ApproverCopyWithImpl<_$_Approver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApproverToJson(
      this,
    );
  }
}

abstract class _Approver implements Approver {
  const factory _Approver(
      {final int? id,
      final int? show,
      final int? status,
      final Profile? employeeProfiles}) = _$_Approver;

  factory _Approver.fromJson(Map<String, dynamic> json) = _$_Approver.fromJson;

  @override
  int? get id;
  @override
  int? get show;
  @override
  int? get status;
  @override
  Profile? get employeeProfiles;
  @override
  @JsonKey(ignore: true)
  _$$_ApproverCopyWith<_$_Approver> get copyWith =>
      throw _privateConstructorUsedError;
}

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_id')
  int? get employeeId => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;
  String? get firstname => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get exp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'employee_id') int? employeeId,
      String? code,
      int? gender,
      String? fullname,
      String? firstname,
      String? lastname,
      String? phone,
      String? email,
      String? exp});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? employeeId = freezed,
    Object? code = freezed,
    Object? gender = freezed,
    Object? fullname = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? exp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeId: employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      exp: exp == freezed
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$_ProfileCopyWith(
          _$_Profile value, $Res Function(_$_Profile) then) =
      __$$_ProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'employee_id') int? employeeId,
      String? code,
      int? gender,
      String? fullname,
      String? firstname,
      String? lastname,
      String? phone,
      String? email,
      String? exp});
}

/// @nodoc
class __$$_ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$$_ProfileCopyWith<$Res> {
  __$$_ProfileCopyWithImpl(_$_Profile _value, $Res Function(_$_Profile) _then)
      : super(_value, (v) => _then(v as _$_Profile));

  @override
  _$_Profile get _value => super._value as _$_Profile;

  @override
  $Res call({
    Object? id = freezed,
    Object? employeeId = freezed,
    Object? code = freezed,
    Object? gender = freezed,
    Object? fullname = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? exp = freezed,
  }) {
    return _then(_$_Profile(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeId: employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      exp: exp == freezed
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Profile with DiagnosticableTreeMixin implements _Profile {
  const _$_Profile(
      {this.id,
      @JsonKey(name: 'employee_id') this.employeeId,
      this.code,
      this.gender,
      this.fullname,
      this.firstname,
      this.lastname,
      this.phone,
      this.email,
      this.exp});

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @override
  final String? code;
  @override
  final int? gender;
  @override
  final String? fullname;
  @override
  final String? firstname;
  @override
  final String? lastname;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? exp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Profile(id: $id, employeeId: $employeeId, code: $code, gender: $gender, fullname: $fullname, firstname: $firstname, lastname: $lastname, phone: $phone, email: $email, exp: $exp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Profile'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('employeeId', employeeId))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('fullname', fullname))
      ..add(DiagnosticsProperty('firstname', firstname))
      ..add(DiagnosticsProperty('lastname', lastname))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('exp', exp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.employeeId, employeeId) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.fullname, fullname) &&
            const DeepCollectionEquality().equals(other.firstname, firstname) &&
            const DeepCollectionEquality().equals(other.lastname, lastname) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.exp, exp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(employeeId),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(fullname),
      const DeepCollectionEquality().hash(firstname),
      const DeepCollectionEquality().hash(lastname),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(exp));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      __$$_ProfileCopyWithImpl<_$_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileToJson(
      this,
    );
  }
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {final int? id,
      @JsonKey(name: 'employee_id') final int? employeeId,
      final String? code,
      final int? gender,
      final String? fullname,
      final String? firstname,
      final String? lastname,
      final String? phone,
      final String? email,
      final String? exp}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'employee_id')
  int? get employeeId;
  @override
  String? get code;
  @override
  int? get gender;
  @override
  String? get fullname;
  @override
  String? get firstname;
  @override
  String? get lastname;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get exp;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceBrand _$DeviceBrandFromJson(Map<String, dynamic> json) {
  return _DeviceBrand.fromJson(json);
}

/// @nodoc
mixin _$DeviceBrand {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceBrandCopyWith<DeviceBrand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceBrandCopyWith<$Res> {
  factory $DeviceBrandCopyWith(
          DeviceBrand value, $Res Function(DeviceBrand) then) =
      _$DeviceBrandCopyWithImpl<$Res>;
  $Res call({int? id, String? name});
}

/// @nodoc
class _$DeviceBrandCopyWithImpl<$Res> implements $DeviceBrandCopyWith<$Res> {
  _$DeviceBrandCopyWithImpl(this._value, this._then);

  final DeviceBrand _value;
  // ignore: unused_field
  final $Res Function(DeviceBrand) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DeviceBrandCopyWith<$Res>
    implements $DeviceBrandCopyWith<$Res> {
  factory _$$_DeviceBrandCopyWith(
          _$_DeviceBrand value, $Res Function(_$_DeviceBrand) then) =
      __$$_DeviceBrandCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_DeviceBrandCopyWithImpl<$Res> extends _$DeviceBrandCopyWithImpl<$Res>
    implements _$$_DeviceBrandCopyWith<$Res> {
  __$$_DeviceBrandCopyWithImpl(
      _$_DeviceBrand _value, $Res Function(_$_DeviceBrand) _then)
      : super(_value, (v) => _then(v as _$_DeviceBrand));

  @override
  _$_DeviceBrand get _value => super._value as _$_DeviceBrand;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_DeviceBrand(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceBrand with DiagnosticableTreeMixin implements _DeviceBrand {
  const _$_DeviceBrand({this.id, this.name});

  factory _$_DeviceBrand.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceBrandFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceBrand(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceBrand'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceBrand &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_DeviceBrandCopyWith<_$_DeviceBrand> get copyWith =>
      __$$_DeviceBrandCopyWithImpl<_$_DeviceBrand>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceBrandToJson(
      this,
    );
  }
}

abstract class _DeviceBrand implements DeviceBrand {
  const factory _DeviceBrand({final int? id, final String? name}) =
      _$_DeviceBrand;

  factory _DeviceBrand.fromJson(Map<String, dynamic> json) =
      _$_DeviceBrand.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceBrandCopyWith<_$_DeviceBrand> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceImage _$DeviceImageFromJson(Map<String, dynamic> json) {
  return _DeviceImage.fromJson(json);
}

/// @nodoc
mixin _$DeviceImage {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceImageCopyWith<DeviceImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceImageCopyWith<$Res> {
  factory $DeviceImageCopyWith(
          DeviceImage value, $Res Function(DeviceImage) then) =
      _$DeviceImageCopyWithImpl<$Res>;
  $Res call({int? id, @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class _$DeviceImageCopyWithImpl<$Res> implements $DeviceImageCopyWith<$Res> {
  _$DeviceImageCopyWithImpl(this._value, this._then);

  final DeviceImage _value;
  // ignore: unused_field
  final $Res Function(DeviceImage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DeviceImageCopyWith<$Res>
    implements $DeviceImageCopyWith<$Res> {
  factory _$$_DeviceImageCopyWith(
          _$_DeviceImage value, $Res Function(_$_DeviceImage) then) =
      __$$_DeviceImageCopyWithImpl<$Res>;
  @override
  $Res call({int? id, @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class __$$_DeviceImageCopyWithImpl<$Res> extends _$DeviceImageCopyWithImpl<$Res>
    implements _$$_DeviceImageCopyWith<$Res> {
  __$$_DeviceImageCopyWithImpl(
      _$_DeviceImage _value, $Res Function(_$_DeviceImage) _then)
      : super(_value, (v) => _then(v as _$_DeviceImage));

  @override
  _$_DeviceImage get _value => super._value as _$_DeviceImage;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_DeviceImage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceImage with DiagnosticableTreeMixin implements _DeviceImage {
  const _$_DeviceImage({this.id, @JsonKey(name: 'image_url') this.imageUrl});

  factory _$_DeviceImage.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceImageFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceImage(id: $id, imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceImage'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('imageUrl', imageUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceImage &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$$_DeviceImageCopyWith<_$_DeviceImage> get copyWith =>
      __$$_DeviceImageCopyWithImpl<_$_DeviceImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceImageToJson(
      this,
    );
  }
}

abstract class _DeviceImage implements DeviceImage {
  const factory _DeviceImage(
      {final int? id,
      @JsonKey(name: 'image_url') final String? imageUrl}) = _$_DeviceImage;

  factory _DeviceImage.fromJson(Map<String, dynamic> json) =
      _$_DeviceImage.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceImageCopyWith<_$_DeviceImage> get copyWith =>
      throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res>;
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res> implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  final Link _value;
  // ignore: unused_field
  final $Res Function(Link) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_LinkCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$_LinkCopyWith(_$_Link value, $Res Function(_$_Link) then) =
      __$$_LinkCopyWithImpl<$Res>;
  @override
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$_LinkCopyWithImpl<$Res> extends _$LinkCopyWithImpl<$Res>
    implements _$$_LinkCopyWith<$Res> {
  __$$_LinkCopyWithImpl(_$_Link _value, $Res Function(_$_Link) _then)
      : super(_value, (v) => _then(v as _$_Link));

  @override
  _$_Link get _value => super._value as _$_Link;

  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_Link(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Link with DiagnosticableTreeMixin implements _Link {
  const _$_Link({this.url, this.label, this.active});

  factory _$_Link.fromJson(Map<String, dynamic> json) => _$$_LinkFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool? active;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Link(url: $url, label: $label, active: $active)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Link'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('active', active));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Link &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.active, active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(active));

  @JsonKey(ignore: true)
  @override
  _$$_LinkCopyWith<_$_Link> get copyWith =>
      __$$_LinkCopyWithImpl<_$_Link>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {final String? url, final String? label, final bool? active}) = _$_Link;

  factory _Link.fromJson(Map<String, dynamic> json) = _$_Link.fromJson;

  @override
  String? get url;
  @override
  String? get label;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$_LinkCopyWith<_$_Link> get copyWith => throw _privateConstructorUsedError;
}

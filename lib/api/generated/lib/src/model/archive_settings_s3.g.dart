// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive_settings_s3.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ArchiveSettingsS3StorageClassEnum
_$archiveSettingsS3StorageClassEnum_STANDARD =
    const ArchiveSettingsS3StorageClassEnum._('STANDARD');
const ArchiveSettingsS3StorageClassEnum
_$archiveSettingsS3StorageClassEnum_REDUCED_REDUNDANCY =
    const ArchiveSettingsS3StorageClassEnum._('REDUCED_REDUNDANCY');
const ArchiveSettingsS3StorageClassEnum
_$archiveSettingsS3StorageClassEnum_STANDARD_IA =
    const ArchiveSettingsS3StorageClassEnum._('STANDARD_IA');
const ArchiveSettingsS3StorageClassEnum
_$archiveSettingsS3StorageClassEnum_ONEZONE_IA =
    const ArchiveSettingsS3StorageClassEnum._('ONEZONE_IA');
const ArchiveSettingsS3StorageClassEnum
_$archiveSettingsS3StorageClassEnum_INTELLIGENT_TIERING =
    const ArchiveSettingsS3StorageClassEnum._('INTELLIGENT_TIERING');
const ArchiveSettingsS3StorageClassEnum
_$archiveSettingsS3StorageClassEnum_GLACIER_IR =
    const ArchiveSettingsS3StorageClassEnum._('GLACIER_IR');
const ArchiveSettingsS3StorageClassEnum
_$archiveSettingsS3StorageClassEnum_GLACIER =
    const ArchiveSettingsS3StorageClassEnum._('GLACIER');
const ArchiveSettingsS3StorageClassEnum
_$archiveSettingsS3StorageClassEnum_DEEP_ARCHIVE =
    const ArchiveSettingsS3StorageClassEnum._('DEEP_ARCHIVE');
const ArchiveSettingsS3StorageClassEnum
_$archiveSettingsS3StorageClassEnum_unknownDefaultOpenApi =
    const ArchiveSettingsS3StorageClassEnum._('unknownDefaultOpenApi');

ArchiveSettingsS3StorageClassEnum _$archiveSettingsS3StorageClassEnumValueOf(
  String name,
) {
  switch (name) {
    case 'STANDARD':
      return _$archiveSettingsS3StorageClassEnum_STANDARD;
    case 'REDUCED_REDUNDANCY':
      return _$archiveSettingsS3StorageClassEnum_REDUCED_REDUNDANCY;
    case 'STANDARD_IA':
      return _$archiveSettingsS3StorageClassEnum_STANDARD_IA;
    case 'ONEZONE_IA':
      return _$archiveSettingsS3StorageClassEnum_ONEZONE_IA;
    case 'INTELLIGENT_TIERING':
      return _$archiveSettingsS3StorageClassEnum_INTELLIGENT_TIERING;
    case 'GLACIER_IR':
      return _$archiveSettingsS3StorageClassEnum_GLACIER_IR;
    case 'GLACIER':
      return _$archiveSettingsS3StorageClassEnum_GLACIER;
    case 'DEEP_ARCHIVE':
      return _$archiveSettingsS3StorageClassEnum_DEEP_ARCHIVE;
    case 'unknownDefaultOpenApi':
      return _$archiveSettingsS3StorageClassEnum_unknownDefaultOpenApi;
    default:
      return _$archiveSettingsS3StorageClassEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ArchiveSettingsS3StorageClassEnum>
_$archiveSettingsS3StorageClassEnumValues =
    BuiltSet<ArchiveSettingsS3StorageClassEnum>(
      const <ArchiveSettingsS3StorageClassEnum>[
        _$archiveSettingsS3StorageClassEnum_STANDARD,
        _$archiveSettingsS3StorageClassEnum_REDUCED_REDUNDANCY,
        _$archiveSettingsS3StorageClassEnum_STANDARD_IA,
        _$archiveSettingsS3StorageClassEnum_ONEZONE_IA,
        _$archiveSettingsS3StorageClassEnum_INTELLIGENT_TIERING,
        _$archiveSettingsS3StorageClassEnum_GLACIER_IR,
        _$archiveSettingsS3StorageClassEnum_GLACIER,
        _$archiveSettingsS3StorageClassEnum_DEEP_ARCHIVE,
        _$archiveSettingsS3StorageClassEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ArchiveSettingsS3StorageClassEnum>
_$archiveSettingsS3StorageClassEnumSerializer =
    _$ArchiveSettingsS3StorageClassEnumSerializer();

class _$ArchiveSettingsS3StorageClassEnumSerializer
    implements PrimitiveSerializer<ArchiveSettingsS3StorageClassEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'STANDARD': 'STANDARD',
    'REDUCED_REDUNDANCY': 'REDUCED_REDUNDANCY',
    'STANDARD_IA': 'STANDARD_IA',
    'ONEZONE_IA': 'ONEZONE_IA',
    'INTELLIGENT_TIERING': 'INTELLIGENT_TIERING',
    'GLACIER_IR': 'GLACIER_IR',
    'GLACIER': 'GLACIER',
    'DEEP_ARCHIVE': 'DEEP_ARCHIVE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'STANDARD': 'STANDARD',
    'REDUCED_REDUNDANCY': 'REDUCED_REDUNDANCY',
    'STANDARD_IA': 'STANDARD_IA',
    'ONEZONE_IA': 'ONEZONE_IA',
    'INTELLIGENT_TIERING': 'INTELLIGENT_TIERING',
    'GLACIER_IR': 'GLACIER_IR',
    'GLACIER': 'GLACIER',
    'DEEP_ARCHIVE': 'DEEP_ARCHIVE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ArchiveSettingsS3StorageClassEnum];
  @override
  final String wireName = 'ArchiveSettingsS3StorageClassEnum';

  @override
  Object serialize(
    Serializers serializers,
    ArchiveSettingsS3StorageClassEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ArchiveSettingsS3StorageClassEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ArchiveSettingsS3StorageClassEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ArchiveSettingsS3 extends ArchiveSettingsS3 {
  @override
  final String endpoint;
  @override
  final String bucket;
  @override
  final String? prefix;
  @override
  final String? region;
  @override
  final bool? pathStyle;
  @override
  final ArchiveSettingsS3StorageClassEnum? storageClass;

  factory _$ArchiveSettingsS3([
    void Function(ArchiveSettingsS3Builder)? updates,
  ]) => (ArchiveSettingsS3Builder()..update(updates))._build();

  _$ArchiveSettingsS3._({
    required this.endpoint,
    required this.bucket,
    this.prefix,
    this.region,
    this.pathStyle,
    this.storageClass,
  }) : super._();
  @override
  ArchiveSettingsS3 rebuild(void Function(ArchiveSettingsS3Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArchiveSettingsS3Builder toBuilder() =>
      ArchiveSettingsS3Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArchiveSettingsS3 &&
        endpoint == other.endpoint &&
        bucket == other.bucket &&
        prefix == other.prefix &&
        region == other.region &&
        pathStyle == other.pathStyle &&
        storageClass == other.storageClass;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, pathStyle.hashCode);
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArchiveSettingsS3')
          ..add('endpoint', endpoint)
          ..add('bucket', bucket)
          ..add('prefix', prefix)
          ..add('region', region)
          ..add('pathStyle', pathStyle)
          ..add('storageClass', storageClass))
        .toString();
  }
}

class ArchiveSettingsS3Builder
    implements Builder<ArchiveSettingsS3, ArchiveSettingsS3Builder> {
  _$ArchiveSettingsS3? _$v;

  String? _endpoint;
  String? get endpoint => _$this._endpoint;
  set endpoint(String? endpoint) => _$this._endpoint = endpoint;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  bool? _pathStyle;
  bool? get pathStyle => _$this._pathStyle;
  set pathStyle(bool? pathStyle) => _$this._pathStyle = pathStyle;

  ArchiveSettingsS3StorageClassEnum? _storageClass;
  ArchiveSettingsS3StorageClassEnum? get storageClass => _$this._storageClass;
  set storageClass(ArchiveSettingsS3StorageClassEnum? storageClass) =>
      _$this._storageClass = storageClass;

  ArchiveSettingsS3Builder() {
    ArchiveSettingsS3._defaults(this);
  }

  ArchiveSettingsS3Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpoint = $v.endpoint;
      _bucket = $v.bucket;
      _prefix = $v.prefix;
      _region = $v.region;
      _pathStyle = $v.pathStyle;
      _storageClass = $v.storageClass;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArchiveSettingsS3 other) {
    _$v = other as _$ArchiveSettingsS3;
  }

  @override
  void update(void Function(ArchiveSettingsS3Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArchiveSettingsS3 build() => _build();

  _$ArchiveSettingsS3 _build() {
    final _$result =
        _$v ??
        _$ArchiveSettingsS3._(
          endpoint: BuiltValueNullFieldError.checkNotNull(
            endpoint,
            r'ArchiveSettingsS3',
            'endpoint',
          ),
          bucket: BuiltValueNullFieldError.checkNotNull(
            bucket,
            r'ArchiveSettingsS3',
            'bucket',
          ),
          prefix: prefix,
          region: region,
          pathStyle: pathStyle,
          storageClass: storageClass,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

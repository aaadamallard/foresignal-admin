// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive_settings_s3.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

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

  factory _$ArchiveSettingsS3(
          [void Function(ArchiveSettingsS3Builder)? updates]) =>
      (ArchiveSettingsS3Builder()..update(updates))._build();

  _$ArchiveSettingsS3._(
      {required this.endpoint,
      required this.bucket,
      this.prefix,
      this.region,
      this.pathStyle})
      : super._();
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
        pathStyle == other.pathStyle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, pathStyle.hashCode);
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
          ..add('pathStyle', pathStyle))
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
    final _$result = _$v ??
        _$ArchiveSettingsS3._(
          endpoint: BuiltValueNullFieldError.checkNotNull(
              endpoint, r'ArchiveSettingsS3', 'endpoint'),
          bucket: BuiltValueNullFieldError.checkNotNull(
              bucket, r'ArchiveSettingsS3', 'bucket'),
          prefix: prefix,
          region: region,
          pathStyle: pathStyle,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

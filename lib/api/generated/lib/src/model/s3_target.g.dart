// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_target.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$S3Target extends S3Target {
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

  factory _$S3Target([void Function(S3TargetBuilder)? updates]) =>
      (S3TargetBuilder()..update(updates))._build();

  _$S3Target._({
    required this.endpoint,
    required this.bucket,
    this.prefix,
    this.region,
    this.pathStyle,
  }) : super._();
  @override
  S3Target rebuild(void Function(S3TargetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  S3TargetBuilder toBuilder() => S3TargetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is S3Target &&
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
    return (newBuiltValueToStringHelper(r'S3Target')
          ..add('endpoint', endpoint)
          ..add('bucket', bucket)
          ..add('prefix', prefix)
          ..add('region', region)
          ..add('pathStyle', pathStyle))
        .toString();
  }
}

class S3TargetBuilder implements Builder<S3Target, S3TargetBuilder> {
  _$S3Target? _$v;

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

  S3TargetBuilder() {
    S3Target._defaults(this);
  }

  S3TargetBuilder get _$this {
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
  void replace(S3Target other) {
    _$v = other as _$S3Target;
  }

  @override
  void update(void Function(S3TargetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  S3Target build() => _build();

  _$S3Target _build() {
    final _$result =
        _$v ??
        _$S3Target._(
          endpoint: BuiltValueNullFieldError.checkNotNull(
            endpoint,
            r'S3Target',
            'endpoint',
          ),
          bucket: BuiltValueNullFieldError.checkNotNull(
            bucket,
            r'S3Target',
            'bucket',
          ),
          prefix: prefix,
          region: region,
          pathStyle: pathStyle,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

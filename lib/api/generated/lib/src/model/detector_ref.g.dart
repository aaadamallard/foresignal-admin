// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detector_ref.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetectorRef extends DetectorRef {
  @override
  final String name;
  @override
  final String version;
  @override
  final BuiltMap<String, JsonObject?>? params;

  factory _$DetectorRef([void Function(DetectorRefBuilder)? updates]) =>
      (DetectorRefBuilder()..update(updates))._build();

  _$DetectorRef._({required this.name, required this.version, this.params})
    : super._();
  @override
  DetectorRef rebuild(void Function(DetectorRefBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetectorRefBuilder toBuilder() => DetectorRefBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetectorRef &&
        name == other.name &&
        version == other.version &&
        params == other.params;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DetectorRef')
          ..add('name', name)
          ..add('version', version)
          ..add('params', params))
        .toString();
  }
}

class DetectorRefBuilder implements Builder<DetectorRef, DetectorRefBuilder> {
  _$DetectorRef? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  MapBuilder<String, JsonObject?>? _params;
  MapBuilder<String, JsonObject?> get params =>
      _$this._params ??= MapBuilder<String, JsonObject?>();
  set params(MapBuilder<String, JsonObject?>? params) =>
      _$this._params = params;

  DetectorRefBuilder() {
    DetectorRef._defaults(this);
  }

  DetectorRefBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _version = $v.version;
      _params = $v.params?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetectorRef other) {
    _$v = other as _$DetectorRef;
  }

  @override
  void update(void Function(DetectorRefBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetectorRef build() => _build();

  _$DetectorRef _build() {
    _$DetectorRef _$result;
    try {
      _$result =
          _$v ??
          _$DetectorRef._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'DetectorRef',
              'name',
            ),
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'DetectorRef',
              'version',
            ),
            params: _params?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        _params?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DetectorRef',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

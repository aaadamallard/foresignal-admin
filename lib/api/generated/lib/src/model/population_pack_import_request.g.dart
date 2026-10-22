// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'population_pack_import_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PopulationPackImportRequest extends PopulationPackImportRequest {
  @override
  final String path;

  factory _$PopulationPackImportRequest([
    void Function(PopulationPackImportRequestBuilder)? updates,
  ]) => (PopulationPackImportRequestBuilder()..update(updates))._build();

  _$PopulationPackImportRequest._({required this.path}) : super._();
  @override
  PopulationPackImportRequest rebuild(
    void Function(PopulationPackImportRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PopulationPackImportRequestBuilder toBuilder() =>
      PopulationPackImportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PopulationPackImportRequest && path == other.path;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'PopulationPackImportRequest',
    )..add('path', path)).toString();
  }
}

class PopulationPackImportRequestBuilder
    implements
        Builder<
          PopulationPackImportRequest,
          PopulationPackImportRequestBuilder
        > {
  _$PopulationPackImportRequest? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  PopulationPackImportRequestBuilder() {
    PopulationPackImportRequest._defaults(this);
  }

  PopulationPackImportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PopulationPackImportRequest other) {
    _$v = other as _$PopulationPackImportRequest;
  }

  @override
  void update(void Function(PopulationPackImportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PopulationPackImportRequest build() => _build();

  _$PopulationPackImportRequest _build() {
    final _$result =
        _$v ??
        _$PopulationPackImportRequest._(
          path: BuiltValueNullFieldError.checkNotNull(
            path,
            r'PopulationPackImportRequest',
            'path',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

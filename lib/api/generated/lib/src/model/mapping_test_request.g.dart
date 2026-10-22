// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapping_test_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MappingTestRequest extends MappingTestRequest {
  @override
  final RecordMapping? mapping;

  factory _$MappingTestRequest(
          [void Function(MappingTestRequestBuilder)? updates]) =>
      (MappingTestRequestBuilder()..update(updates))._build();

  _$MappingTestRequest._({this.mapping}) : super._();
  @override
  MappingTestRequest rebuild(
          void Function(MappingTestRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MappingTestRequestBuilder toBuilder() =>
      MappingTestRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MappingTestRequest && mapping == other.mapping;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mapping.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MappingTestRequest')
          ..add('mapping', mapping))
        .toString();
  }
}

class MappingTestRequestBuilder
    implements Builder<MappingTestRequest, MappingTestRequestBuilder> {
  _$MappingTestRequest? _$v;

  RecordMappingBuilder? _mapping;
  RecordMappingBuilder get mapping =>
      _$this._mapping ??= RecordMappingBuilder();
  set mapping(RecordMappingBuilder? mapping) => _$this._mapping = mapping;

  MappingTestRequestBuilder() {
    MappingTestRequest._defaults(this);
  }

  MappingTestRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mapping = $v.mapping?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MappingTestRequest other) {
    _$v = other as _$MappingTestRequest;
  }

  @override
  void update(void Function(MappingTestRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MappingTestRequest build() => _build();

  _$MappingTestRequest _build() {
    _$MappingTestRequest _$result;
    try {
      _$result = _$v ??
          _$MappingTestRequest._(
            mapping: _mapping?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mapping';
        _mapping?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MappingTestRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

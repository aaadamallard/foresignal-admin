// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapping_sample.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MappingSample extends MappingSample {
  @override
  final String contentType;
  @override
  final JsonObject? body;
  @override
  final BuiltMap<String, String>? query;

  factory _$MappingSample([void Function(MappingSampleBuilder)? updates]) =>
      (MappingSampleBuilder()..update(updates))._build();

  _$MappingSample._({required this.contentType, this.body, this.query})
      : super._();
  @override
  MappingSample rebuild(void Function(MappingSampleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MappingSampleBuilder toBuilder() => MappingSampleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MappingSample &&
        contentType == other.contentType &&
        body == other.body &&
        query == other.query;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, query.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MappingSample')
          ..add('contentType', contentType)
          ..add('body', body)
          ..add('query', query))
        .toString();
  }
}

class MappingSampleBuilder
    implements Builder<MappingSample, MappingSampleBuilder> {
  _$MappingSample? _$v;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  JsonObject? _body;
  JsonObject? get body => _$this._body;
  set body(JsonObject? body) => _$this._body = body;

  MapBuilder<String, String>? _query;
  MapBuilder<String, String> get query =>
      _$this._query ??= MapBuilder<String, String>();
  set query(MapBuilder<String, String>? query) => _$this._query = query;

  MappingSampleBuilder() {
    MappingSample._defaults(this);
  }

  MappingSampleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contentType = $v.contentType;
      _body = $v.body;
      _query = $v.query?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MappingSample other) {
    _$v = other as _$MappingSample;
  }

  @override
  void update(void Function(MappingSampleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MappingSample build() => _build();

  _$MappingSample _build() {
    _$MappingSample _$result;
    try {
      _$result = _$v ??
          _$MappingSample._(
            contentType: BuiltValueNullFieldError.checkNotNull(
                contentType, r'MappingSample', 'contentType'),
            body: body,
            query: _query?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'query';
        _query?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MappingSample', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

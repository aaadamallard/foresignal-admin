// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_history200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryHistory200Response extends QueryHistory200Response {
  @override
  final OneOf oneOf;

  factory _$QueryHistory200Response([
    void Function(QueryHistory200ResponseBuilder)? updates,
  ]) => (QueryHistory200ResponseBuilder()..update(updates))._build();

  _$QueryHistory200Response._({required this.oneOf}) : super._();
  @override
  QueryHistory200Response rebuild(
    void Function(QueryHistory200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  QueryHistory200ResponseBuilder toBuilder() =>
      QueryHistory200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryHistory200Response && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'QueryHistory200Response',
    )..add('oneOf', oneOf)).toString();
  }
}

class QueryHistory200ResponseBuilder
    implements
        Builder<QueryHistory200Response, QueryHistory200ResponseBuilder> {
  _$QueryHistory200Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  QueryHistory200ResponseBuilder() {
    QueryHistory200Response._defaults(this);
  }

  QueryHistory200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryHistory200Response other) {
    _$v = other as _$QueryHistory200Response;
  }

  @override
  void update(void Function(QueryHistory200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryHistory200Response build() => _build();

  _$QueryHistory200Response _build() {
    final _$result =
        _$v ??
        _$QueryHistory200Response._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
            oneOf,
            r'QueryHistory200Response',
            'oneOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

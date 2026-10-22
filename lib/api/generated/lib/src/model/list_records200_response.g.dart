// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_records200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListRecords200Response extends ListRecords200Response {
  @override
  final OneOf oneOf;

  factory _$ListRecords200Response([
    void Function(ListRecords200ResponseBuilder)? updates,
  ]) => (ListRecords200ResponseBuilder()..update(updates))._build();

  _$ListRecords200Response._({required this.oneOf}) : super._();
  @override
  ListRecords200Response rebuild(
    void Function(ListRecords200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ListRecords200ResponseBuilder toBuilder() =>
      ListRecords200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListRecords200Response && oneOf == other.oneOf;
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
      r'ListRecords200Response',
    )..add('oneOf', oneOf)).toString();
  }
}

class ListRecords200ResponseBuilder
    implements Builder<ListRecords200Response, ListRecords200ResponseBuilder> {
  _$ListRecords200Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ListRecords200ResponseBuilder() {
    ListRecords200Response._defaults(this);
  }

  ListRecords200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListRecords200Response other) {
    _$v = other as _$ListRecords200Response;
  }

  @override
  void update(void Function(ListRecords200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListRecords200Response build() => _build();

  _$ListRecords200Response _build() {
    final _$result =
        _$v ??
        _$ListRecords200Response._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
            oneOf,
            r'ListRecords200Response',
            'oneOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

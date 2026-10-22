// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Search200ResponseModeEnum _$search200ResponseModeEnum_hybrid =
    const Search200ResponseModeEnum._('hybrid');
const Search200ResponseModeEnum _$search200ResponseModeEnum_semantic =
    const Search200ResponseModeEnum._('semantic');
const Search200ResponseModeEnum _$search200ResponseModeEnum_text =
    const Search200ResponseModeEnum._('text');

Search200ResponseModeEnum _$search200ResponseModeEnumValueOf(String name) {
  switch (name) {
    case 'hybrid':
      return _$search200ResponseModeEnum_hybrid;
    case 'semantic':
      return _$search200ResponseModeEnum_semantic;
    case 'text':
      return _$search200ResponseModeEnum_text;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Search200ResponseModeEnum> _$search200ResponseModeEnumValues =
    BuiltSet<Search200ResponseModeEnum>(const <Search200ResponseModeEnum>[
  _$search200ResponseModeEnum_hybrid,
  _$search200ResponseModeEnum_semantic,
  _$search200ResponseModeEnum_text,
]);

Serializer<Search200ResponseModeEnum> _$search200ResponseModeEnumSerializer =
    _$Search200ResponseModeEnumSerializer();

class _$Search200ResponseModeEnumSerializer
    implements PrimitiveSerializer<Search200ResponseModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'hybrid': 'hybrid',
    'semantic': 'semantic',
    'text': 'text',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'hybrid': 'hybrid',
    'semantic': 'semantic',
    'text': 'text',
  };

  @override
  final Iterable<Type> types = const <Type>[Search200ResponseModeEnum];
  @override
  final String wireName = 'Search200ResponseModeEnum';

  @override
  Object serialize(Serializers serializers, Search200ResponseModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Search200ResponseModeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Search200ResponseModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Search200Response extends Search200Response {
  @override
  final OneOf oneOf;

  factory _$Search200Response(
          [void Function(Search200ResponseBuilder)? updates]) =>
      (Search200ResponseBuilder()..update(updates))._build();

  _$Search200Response._({required this.oneOf}) : super._();
  @override
  Search200Response rebuild(void Function(Search200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Search200ResponseBuilder toBuilder() =>
      Search200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Search200Response && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'Search200Response')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class Search200ResponseBuilder
    implements Builder<Search200Response, Search200ResponseBuilder> {
  _$Search200Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  Search200ResponseBuilder() {
    Search200Response._defaults(this);
  }

  Search200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Search200Response other) {
    _$v = other as _$Search200Response;
  }

  @override
  void update(void Function(Search200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Search200Response build() => _build();

  _$Search200Response _build() {
    final _$result = _$v ??
        _$Search200Response._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'Search200Response', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_search.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpSearchAuthEnum _$edpSearchAuthEnum_none = const EdpSearchAuthEnum._(
  'none',
);
const EdpSearchAuthEnum _$edpSearchAuthEnum_bearer = const EdpSearchAuthEnum._(
  'bearer',
);
const EdpSearchAuthEnum _$edpSearchAuthEnum_header = const EdpSearchAuthEnum._(
  'header',
);
const EdpSearchAuthEnum _$edpSearchAuthEnum_basic = const EdpSearchAuthEnum._(
  'basic',
);

EdpSearchAuthEnum _$edpSearchAuthEnumValueOf(String name) {
  switch (name) {
    case 'none':
      return _$edpSearchAuthEnum_none;
    case 'bearer':
      return _$edpSearchAuthEnum_bearer;
    case 'header':
      return _$edpSearchAuthEnum_header;
    case 'basic':
      return _$edpSearchAuthEnum_basic;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EdpSearchAuthEnum> _$edpSearchAuthEnumValues =
    BuiltSet<EdpSearchAuthEnum>(const <EdpSearchAuthEnum>[
      _$edpSearchAuthEnum_none,
      _$edpSearchAuthEnum_bearer,
      _$edpSearchAuthEnum_header,
      _$edpSearchAuthEnum_basic,
    ]);

Serializer<EdpSearchAuthEnum> _$edpSearchAuthEnumSerializer =
    _$EdpSearchAuthEnumSerializer();

class _$EdpSearchAuthEnumSerializer
    implements PrimitiveSerializer<EdpSearchAuthEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'bearer': 'bearer',
    'header': 'header',
    'basic': 'basic',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'bearer': 'bearer',
    'header': 'header',
    'basic': 'basic',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpSearchAuthEnum];
  @override
  final String wireName = 'EdpSearchAuthEnum';

  @override
  Object serialize(
    Serializers serializers,
    EdpSearchAuthEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EdpSearchAuthEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EdpSearchAuthEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EdpSearch extends EdpSearch {
  @override
  final String url;
  @override
  final EdpSearchAuthEnum? auth;
  @override
  final String? header;

  factory _$EdpSearch([void Function(EdpSearchBuilder)? updates]) =>
      (EdpSearchBuilder()..update(updates))._build();

  _$EdpSearch._({required this.url, this.auth, this.header}) : super._();
  @override
  EdpSearch rebuild(void Function(EdpSearchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpSearchBuilder toBuilder() => EdpSearchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpSearch &&
        url == other.url &&
        auth == other.auth &&
        header == other.header;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpSearch')
          ..add('url', url)
          ..add('auth', auth)
          ..add('header', header))
        .toString();
  }
}

class EdpSearchBuilder implements Builder<EdpSearch, EdpSearchBuilder> {
  _$EdpSearch? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  EdpSearchAuthEnum? _auth;
  EdpSearchAuthEnum? get auth => _$this._auth;
  set auth(EdpSearchAuthEnum? auth) => _$this._auth = auth;

  String? _header;
  String? get header => _$this._header;
  set header(String? header) => _$this._header = header;

  EdpSearchBuilder() {
    EdpSearch._defaults(this);
  }

  EdpSearchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _auth = $v.auth;
      _header = $v.header;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpSearch other) {
    _$v = other as _$EdpSearch;
  }

  @override
  void update(void Function(EdpSearchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpSearch build() => _build();

  _$EdpSearch _build() {
    final _$result =
        _$v ??
        _$EdpSearch._(
          url: BuiltValueNullFieldError.checkNotNull(url, r'EdpSearch', 'url'),
          auth: auth,
          header: header,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

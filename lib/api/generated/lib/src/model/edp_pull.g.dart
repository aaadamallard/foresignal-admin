// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_pull.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpPullAuthEnum _$edpPullAuthEnum_none = const EdpPullAuthEnum._('none');
const EdpPullAuthEnum _$edpPullAuthEnum_bearer = const EdpPullAuthEnum._(
  'bearer',
);
const EdpPullAuthEnum _$edpPullAuthEnum_header = const EdpPullAuthEnum._(
  'header',
);
const EdpPullAuthEnum _$edpPullAuthEnum_basic = const EdpPullAuthEnum._(
  'basic',
);
const EdpPullAuthEnum _$edpPullAuthEnum_unknownDefaultOpenApi =
    const EdpPullAuthEnum._('unknownDefaultOpenApi');

EdpPullAuthEnum _$edpPullAuthEnumValueOf(String name) {
  switch (name) {
    case 'none':
      return _$edpPullAuthEnum_none;
    case 'bearer':
      return _$edpPullAuthEnum_bearer;
    case 'header':
      return _$edpPullAuthEnum_header;
    case 'basic':
      return _$edpPullAuthEnum_basic;
    case 'unknownDefaultOpenApi':
      return _$edpPullAuthEnum_unknownDefaultOpenApi;
    default:
      return _$edpPullAuthEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<EdpPullAuthEnum> _$edpPullAuthEnumValues =
    BuiltSet<EdpPullAuthEnum>(const <EdpPullAuthEnum>[
      _$edpPullAuthEnum_none,
      _$edpPullAuthEnum_bearer,
      _$edpPullAuthEnum_header,
      _$edpPullAuthEnum_basic,
      _$edpPullAuthEnum_unknownDefaultOpenApi,
    ]);

Serializer<EdpPullAuthEnum> _$edpPullAuthEnumSerializer =
    _$EdpPullAuthEnumSerializer();

class _$EdpPullAuthEnumSerializer
    implements PrimitiveSerializer<EdpPullAuthEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'bearer': 'bearer',
    'header': 'header',
    'basic': 'basic',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'bearer': 'bearer',
    'header': 'header',
    'basic': 'basic',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpPullAuthEnum];
  @override
  final String wireName = 'EdpPullAuthEnum';

  @override
  Object serialize(
    Serializers serializers,
    EdpPullAuthEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EdpPullAuthEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EdpPullAuthEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EdpPull extends EdpPull {
  @override
  final String itemsUrl;
  @override
  final int? intervalSeconds;
  @override
  final EdpPullAuthEnum? auth;
  @override
  final String? header;

  factory _$EdpPull([void Function(EdpPullBuilder)? updates]) =>
      (EdpPullBuilder()..update(updates))._build();

  _$EdpPull._({
    required this.itemsUrl,
    this.intervalSeconds,
    this.auth,
    this.header,
  }) : super._();
  @override
  EdpPull rebuild(void Function(EdpPullBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpPullBuilder toBuilder() => EdpPullBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpPull &&
        itemsUrl == other.itemsUrl &&
        intervalSeconds == other.intervalSeconds &&
        auth == other.auth &&
        header == other.header;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, itemsUrl.hashCode);
    _$hash = $jc(_$hash, intervalSeconds.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpPull')
          ..add('itemsUrl', itemsUrl)
          ..add('intervalSeconds', intervalSeconds)
          ..add('auth', auth)
          ..add('header', header))
        .toString();
  }
}

class EdpPullBuilder implements Builder<EdpPull, EdpPullBuilder> {
  _$EdpPull? _$v;

  String? _itemsUrl;
  String? get itemsUrl => _$this._itemsUrl;
  set itemsUrl(String? itemsUrl) => _$this._itemsUrl = itemsUrl;

  int? _intervalSeconds;
  int? get intervalSeconds => _$this._intervalSeconds;
  set intervalSeconds(int? intervalSeconds) =>
      _$this._intervalSeconds = intervalSeconds;

  EdpPullAuthEnum? _auth;
  EdpPullAuthEnum? get auth => _$this._auth;
  set auth(EdpPullAuthEnum? auth) => _$this._auth = auth;

  String? _header;
  String? get header => _$this._header;
  set header(String? header) => _$this._header = header;

  EdpPullBuilder() {
    EdpPull._defaults(this);
  }

  EdpPullBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _itemsUrl = $v.itemsUrl;
      _intervalSeconds = $v.intervalSeconds;
      _auth = $v.auth;
      _header = $v.header;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpPull other) {
    _$v = other as _$EdpPull;
  }

  @override
  void update(void Function(EdpPullBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpPull build() => _build();

  _$EdpPull _build() {
    final _$result =
        _$v ??
        _$EdpPull._(
          itemsUrl: BuiltValueNullFieldError.checkNotNull(
            itemsUrl,
            r'EdpPull',
            'itemsUrl',
          ),
          intervalSeconds: intervalSeconds,
          auth: auth,
          header: header,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

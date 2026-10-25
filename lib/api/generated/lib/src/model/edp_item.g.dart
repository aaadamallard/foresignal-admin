// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpItemTypeEnum _$edpItemTypeEnum_feature = const EdpItemTypeEnum._(
  'feature',
);
const EdpItemTypeEnum _$edpItemTypeEnum_event = const EdpItemTypeEnum._(
  'event',
);
const EdpItemTypeEnum _$edpItemTypeEnum_observation = const EdpItemTypeEnum._(
  'observation',
);
const EdpItemTypeEnum _$edpItemTypeEnum_document = const EdpItemTypeEnum._(
  'document',
);
const EdpItemTypeEnum _$edpItemTypeEnum_forecast = const EdpItemTypeEnum._(
  'forecast',
);
const EdpItemTypeEnum _$edpItemTypeEnum_delete = const EdpItemTypeEnum._(
  'delete',
);
const EdpItemTypeEnum _$edpItemTypeEnum_status = const EdpItemTypeEnum._(
  'status',
);
const EdpItemTypeEnum _$edpItemTypeEnum_unknownDefaultOpenApi =
    const EdpItemTypeEnum._('unknownDefaultOpenApi');

EdpItemTypeEnum _$edpItemTypeEnumValueOf(String name) {
  switch (name) {
    case 'feature':
      return _$edpItemTypeEnum_feature;
    case 'event':
      return _$edpItemTypeEnum_event;
    case 'observation':
      return _$edpItemTypeEnum_observation;
    case 'document':
      return _$edpItemTypeEnum_document;
    case 'forecast':
      return _$edpItemTypeEnum_forecast;
    case 'delete':
      return _$edpItemTypeEnum_delete;
    case 'status':
      return _$edpItemTypeEnum_status;
    case 'unknownDefaultOpenApi':
      return _$edpItemTypeEnum_unknownDefaultOpenApi;
    default:
      return _$edpItemTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<EdpItemTypeEnum> _$edpItemTypeEnumValues =
    BuiltSet<EdpItemTypeEnum>(const <EdpItemTypeEnum>[
      _$edpItemTypeEnum_feature,
      _$edpItemTypeEnum_event,
      _$edpItemTypeEnum_observation,
      _$edpItemTypeEnum_document,
      _$edpItemTypeEnum_forecast,
      _$edpItemTypeEnum_delete,
      _$edpItemTypeEnum_status,
      _$edpItemTypeEnum_unknownDefaultOpenApi,
    ]);

const EdpItemDocumentTypeEnum _$edpItemDocumentTypeEnum_socialPost =
    const EdpItemDocumentTypeEnum._('socialPost');
const EdpItemDocumentTypeEnum _$edpItemDocumentTypeEnum_article =
    const EdpItemDocumentTypeEnum._('article');
const EdpItemDocumentTypeEnum _$edpItemDocumentTypeEnum_report =
    const EdpItemDocumentTypeEnum._('report');
const EdpItemDocumentTypeEnum _$edpItemDocumentTypeEnum_transcript =
    const EdpItemDocumentTypeEnum._('transcript');
const EdpItemDocumentTypeEnum _$edpItemDocumentTypeEnum_note =
    const EdpItemDocumentTypeEnum._('note');
const EdpItemDocumentTypeEnum _$edpItemDocumentTypeEnum_unknownDefaultOpenApi =
    const EdpItemDocumentTypeEnum._('unknownDefaultOpenApi');

EdpItemDocumentTypeEnum _$edpItemDocumentTypeEnumValueOf(String name) {
  switch (name) {
    case 'socialPost':
      return _$edpItemDocumentTypeEnum_socialPost;
    case 'article':
      return _$edpItemDocumentTypeEnum_article;
    case 'report':
      return _$edpItemDocumentTypeEnum_report;
    case 'transcript':
      return _$edpItemDocumentTypeEnum_transcript;
    case 'note':
      return _$edpItemDocumentTypeEnum_note;
    case 'unknownDefaultOpenApi':
      return _$edpItemDocumentTypeEnum_unknownDefaultOpenApi;
    default:
      return _$edpItemDocumentTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<EdpItemDocumentTypeEnum> _$edpItemDocumentTypeEnumValues =
    BuiltSet<EdpItemDocumentTypeEnum>(const <EdpItemDocumentTypeEnum>[
      _$edpItemDocumentTypeEnum_socialPost,
      _$edpItemDocumentTypeEnum_article,
      _$edpItemDocumentTypeEnum_report,
      _$edpItemDocumentTypeEnum_transcript,
      _$edpItemDocumentTypeEnum_note,
      _$edpItemDocumentTypeEnum_unknownDefaultOpenApi,
    ]);

const EdpItemHealthEnum _$edpItemHealthEnum_ok = const EdpItemHealthEnum._(
  'ok',
);
const EdpItemHealthEnum _$edpItemHealthEnum_degraded =
    const EdpItemHealthEnum._('degraded');
const EdpItemHealthEnum _$edpItemHealthEnum_blocked = const EdpItemHealthEnum._(
  'blocked',
);
const EdpItemHealthEnum _$edpItemHealthEnum_layoutChanged =
    const EdpItemHealthEnum._('layoutChanged');
const EdpItemHealthEnum _$edpItemHealthEnum_geoRestricted =
    const EdpItemHealthEnum._('geoRestricted');
const EdpItemHealthEnum _$edpItemHealthEnum_unknownDefaultOpenApi =
    const EdpItemHealthEnum._('unknownDefaultOpenApi');

EdpItemHealthEnum _$edpItemHealthEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$edpItemHealthEnum_ok;
    case 'degraded':
      return _$edpItemHealthEnum_degraded;
    case 'blocked':
      return _$edpItemHealthEnum_blocked;
    case 'layoutChanged':
      return _$edpItemHealthEnum_layoutChanged;
    case 'geoRestricted':
      return _$edpItemHealthEnum_geoRestricted;
    case 'unknownDefaultOpenApi':
      return _$edpItemHealthEnum_unknownDefaultOpenApi;
    default:
      return _$edpItemHealthEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<EdpItemHealthEnum> _$edpItemHealthEnumValues =
    BuiltSet<EdpItemHealthEnum>(const <EdpItemHealthEnum>[
      _$edpItemHealthEnum_ok,
      _$edpItemHealthEnum_degraded,
      _$edpItemHealthEnum_blocked,
      _$edpItemHealthEnum_layoutChanged,
      _$edpItemHealthEnum_geoRestricted,
      _$edpItemHealthEnum_unknownDefaultOpenApi,
    ]);

Serializer<EdpItemTypeEnum> _$edpItemTypeEnumSerializer =
    _$EdpItemTypeEnumSerializer();
Serializer<EdpItemDocumentTypeEnum> _$edpItemDocumentTypeEnumSerializer =
    _$EdpItemDocumentTypeEnumSerializer();
Serializer<EdpItemHealthEnum> _$edpItemHealthEnumSerializer =
    _$EdpItemHealthEnumSerializer();

class _$EdpItemTypeEnumSerializer
    implements PrimitiveSerializer<EdpItemTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'feature': 'feature',
    'event': 'event',
    'observation': 'observation',
    'document': 'document',
    'forecast': 'forecast',
    'delete': 'delete',
    'status': 'status',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'feature': 'feature',
    'event': 'event',
    'observation': 'observation',
    'document': 'document',
    'forecast': 'forecast',
    'delete': 'delete',
    'status': 'status',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpItemTypeEnum];
  @override
  final String wireName = 'EdpItemTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    EdpItemTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EdpItemTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EdpItemTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EdpItemDocumentTypeEnumSerializer
    implements PrimitiveSerializer<EdpItemDocumentTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'socialPost': 'social-post',
    'article': 'article',
    'report': 'report',
    'transcript': 'transcript',
    'note': 'note',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'social-post': 'socialPost',
    'article': 'article',
    'report': 'report',
    'transcript': 'transcript',
    'note': 'note',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpItemDocumentTypeEnum];
  @override
  final String wireName = 'EdpItemDocumentTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    EdpItemDocumentTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EdpItemDocumentTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EdpItemDocumentTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EdpItemHealthEnumSerializer
    implements PrimitiveSerializer<EdpItemHealthEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'degraded': 'degraded',
    'blocked': 'blocked',
    'layoutChanged': 'layout-changed',
    'geoRestricted': 'geo-restricted',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'degraded': 'degraded',
    'blocked': 'blocked',
    'layout-changed': 'layoutChanged',
    'geo-restricted': 'geoRestricted',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpItemHealthEnum];
  @override
  final String wireName = 'EdpItemHealthEnum';

  @override
  Object serialize(
    Serializers serializers,
    EdpItemHealthEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EdpItemHealthEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EdpItemHealthEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EdpItem extends EdpItem {
  @override
  final OneOf oneOf;

  factory _$EdpItem([void Function(EdpItemBuilder)? updates]) =>
      (EdpItemBuilder()..update(updates))._build();

  _$EdpItem._({required this.oneOf}) : super._();
  @override
  EdpItem rebuild(void Function(EdpItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpItemBuilder toBuilder() => EdpItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpItem && oneOf == other.oneOf;
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
      r'EdpItem',
    )..add('oneOf', oneOf)).toString();
  }
}

class EdpItemBuilder implements Builder<EdpItem, EdpItemBuilder> {
  _$EdpItem? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  EdpItemBuilder() {
    EdpItem._defaults(this);
  }

  EdpItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpItem other) {
    _$v = other as _$EdpItem;
  }

  @override
  void update(void Function(EdpItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpItem build() => _build();

  _$EdpItem _build() {
    final _$result =
        _$v ??
        _$EdpItem._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
            oneOf,
            r'EdpItem',
            'oneOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

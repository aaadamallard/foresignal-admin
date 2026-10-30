// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_subscription.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NewsSubscriptionTypeEnum _$newsSubscriptionTypeEnum_outlet =
    const NewsSubscriptionTypeEnum._('outlet');
const NewsSubscriptionTypeEnum _$newsSubscriptionTypeEnum_language =
    const NewsSubscriptionTypeEnum._('language');
const NewsSubscriptionTypeEnum
_$newsSubscriptionTypeEnum_unknownDefaultOpenApi =
    const NewsSubscriptionTypeEnum._('unknownDefaultOpenApi');

NewsSubscriptionTypeEnum _$newsSubscriptionTypeEnumValueOf(String name) {
  switch (name) {
    case 'outlet':
      return _$newsSubscriptionTypeEnum_outlet;
    case 'language':
      return _$newsSubscriptionTypeEnum_language;
    case 'unknownDefaultOpenApi':
      return _$newsSubscriptionTypeEnum_unknownDefaultOpenApi;
    default:
      return _$newsSubscriptionTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NewsSubscriptionTypeEnum> _$newsSubscriptionTypeEnumValues =
    BuiltSet<NewsSubscriptionTypeEnum>(const <NewsSubscriptionTypeEnum>[
      _$newsSubscriptionTypeEnum_outlet,
      _$newsSubscriptionTypeEnum_language,
      _$newsSubscriptionTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<NewsSubscriptionTypeEnum> _$newsSubscriptionTypeEnumSerializer =
    _$NewsSubscriptionTypeEnumSerializer();

class _$NewsSubscriptionTypeEnumSerializer
    implements PrimitiveSerializer<NewsSubscriptionTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'outlet': 'outlet',
    'language': 'language',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'outlet': 'outlet',
    'language': 'language',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[NewsSubscriptionTypeEnum];
  @override
  final String wireName = 'NewsSubscriptionTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    NewsSubscriptionTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NewsSubscriptionTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NewsSubscriptionTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NewsSubscription extends NewsSubscription {
  @override
  final NewsSubscriptionTypeEnum type;
  @override
  final String id;

  factory _$NewsSubscription([
    void Function(NewsSubscriptionBuilder)? updates,
  ]) => (NewsSubscriptionBuilder()..update(updates))._build();

  _$NewsSubscription._({required this.type, required this.id}) : super._();
  @override
  NewsSubscription rebuild(void Function(NewsSubscriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsSubscriptionBuilder toBuilder() =>
      NewsSubscriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsSubscription && type == other.type && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsSubscription')
          ..add('type', type)
          ..add('id', id))
        .toString();
  }
}

class NewsSubscriptionBuilder
    implements Builder<NewsSubscription, NewsSubscriptionBuilder> {
  _$NewsSubscription? _$v;

  NewsSubscriptionTypeEnum? _type;
  NewsSubscriptionTypeEnum? get type => _$this._type;
  set type(NewsSubscriptionTypeEnum? type) => _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  NewsSubscriptionBuilder() {
    NewsSubscription._defaults(this);
  }

  NewsSubscriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsSubscription other) {
    _$v = other as _$NewsSubscription;
  }

  @override
  void update(void Function(NewsSubscriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsSubscription build() => _build();

  _$NewsSubscription _build() {
    final _$result =
        _$v ??
        _$NewsSubscription._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'NewsSubscription',
            'type',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'NewsSubscription',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

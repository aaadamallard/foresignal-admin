// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_velocity_event_scope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialVelocityEventScopeTypeEnum
_$socialVelocityEventScopeTypeEnum_topic =
    const SocialVelocityEventScopeTypeEnum._('topic');
const SocialVelocityEventScopeTypeEnum
_$socialVelocityEventScopeTypeEnum_place =
    const SocialVelocityEventScopeTypeEnum._('place');
const SocialVelocityEventScopeTypeEnum
_$socialVelocityEventScopeTypeEnum_entity =
    const SocialVelocityEventScopeTypeEnum._('entity');
const SocialVelocityEventScopeTypeEnum
_$socialVelocityEventScopeTypeEnum_unknownDefaultOpenApi =
    const SocialVelocityEventScopeTypeEnum._('unknownDefaultOpenApi');

SocialVelocityEventScopeTypeEnum _$socialVelocityEventScopeTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'topic':
      return _$socialVelocityEventScopeTypeEnum_topic;
    case 'place':
      return _$socialVelocityEventScopeTypeEnum_place;
    case 'entity':
      return _$socialVelocityEventScopeTypeEnum_entity;
    case 'unknownDefaultOpenApi':
      return _$socialVelocityEventScopeTypeEnum_unknownDefaultOpenApi;
    default:
      return _$socialVelocityEventScopeTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SocialVelocityEventScopeTypeEnum>
_$socialVelocityEventScopeTypeEnumValues =
    BuiltSet<SocialVelocityEventScopeTypeEnum>(
      const <SocialVelocityEventScopeTypeEnum>[
        _$socialVelocityEventScopeTypeEnum_topic,
        _$socialVelocityEventScopeTypeEnum_place,
        _$socialVelocityEventScopeTypeEnum_entity,
        _$socialVelocityEventScopeTypeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<SocialVelocityEventScopeTypeEnum>
_$socialVelocityEventScopeTypeEnumSerializer =
    _$SocialVelocityEventScopeTypeEnumSerializer();

class _$SocialVelocityEventScopeTypeEnumSerializer
    implements PrimitiveSerializer<SocialVelocityEventScopeTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'topic': 'topic',
    'place': 'place',
    'entity': 'entity',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'topic': 'topic',
    'place': 'place',
    'entity': 'entity',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialVelocityEventScopeTypeEnum];
  @override
  final String wireName = 'SocialVelocityEventScopeTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialVelocityEventScopeTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialVelocityEventScopeTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialVelocityEventScopeTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialVelocityEventScope extends SocialVelocityEventScope {
  @override
  final SocialVelocityEventScopeTypeEnum type;
  @override
  final String id;

  factory _$SocialVelocityEventScope([
    void Function(SocialVelocityEventScopeBuilder)? updates,
  ]) => (SocialVelocityEventScopeBuilder()..update(updates))._build();

  _$SocialVelocityEventScope._({required this.type, required this.id})
    : super._();
  @override
  SocialVelocityEventScope rebuild(
    void Function(SocialVelocityEventScopeBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialVelocityEventScopeBuilder toBuilder() =>
      SocialVelocityEventScopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialVelocityEventScope &&
        type == other.type &&
        id == other.id;
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
    return (newBuiltValueToStringHelper(r'SocialVelocityEventScope')
          ..add('type', type)
          ..add('id', id))
        .toString();
  }
}

class SocialVelocityEventScopeBuilder
    implements
        Builder<SocialVelocityEventScope, SocialVelocityEventScopeBuilder> {
  _$SocialVelocityEventScope? _$v;

  SocialVelocityEventScopeTypeEnum? _type;
  SocialVelocityEventScopeTypeEnum? get type => _$this._type;
  set type(SocialVelocityEventScopeTypeEnum? type) => _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  SocialVelocityEventScopeBuilder() {
    SocialVelocityEventScope._defaults(this);
  }

  SocialVelocityEventScopeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialVelocityEventScope other) {
    _$v = other as _$SocialVelocityEventScope;
  }

  @override
  void update(void Function(SocialVelocityEventScopeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialVelocityEventScope build() => _build();

  _$SocialVelocityEventScope _build() {
    final _$result =
        _$v ??
        _$SocialVelocityEventScope._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'SocialVelocityEventScope',
            'type',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'SocialVelocityEventScope',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

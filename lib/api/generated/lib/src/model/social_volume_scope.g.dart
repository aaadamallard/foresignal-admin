// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_volume_scope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialVolumeScopeTypeEnum _$socialVolumeScopeTypeEnum_topic =
    const SocialVolumeScopeTypeEnum._('topic');
const SocialVolumeScopeTypeEnum _$socialVolumeScopeTypeEnum_place =
    const SocialVolumeScopeTypeEnum._('place');
const SocialVolumeScopeTypeEnum _$socialVolumeScopeTypeEnum_entity =
    const SocialVolumeScopeTypeEnum._('entity');
const SocialVolumeScopeTypeEnum
_$socialVolumeScopeTypeEnum_unknownDefaultOpenApi =
    const SocialVolumeScopeTypeEnum._('unknownDefaultOpenApi');

SocialVolumeScopeTypeEnum _$socialVolumeScopeTypeEnumValueOf(String name) {
  switch (name) {
    case 'topic':
      return _$socialVolumeScopeTypeEnum_topic;
    case 'place':
      return _$socialVolumeScopeTypeEnum_place;
    case 'entity':
      return _$socialVolumeScopeTypeEnum_entity;
    case 'unknownDefaultOpenApi':
      return _$socialVolumeScopeTypeEnum_unknownDefaultOpenApi;
    default:
      return _$socialVolumeScopeTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SocialVolumeScopeTypeEnum> _$socialVolumeScopeTypeEnumValues =
    BuiltSet<SocialVolumeScopeTypeEnum>(const <SocialVolumeScopeTypeEnum>[
      _$socialVolumeScopeTypeEnum_topic,
      _$socialVolumeScopeTypeEnum_place,
      _$socialVolumeScopeTypeEnum_entity,
      _$socialVolumeScopeTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<SocialVolumeScopeTypeEnum> _$socialVolumeScopeTypeEnumSerializer =
    _$SocialVolumeScopeTypeEnumSerializer();

class _$SocialVolumeScopeTypeEnumSerializer
    implements PrimitiveSerializer<SocialVolumeScopeTypeEnum> {
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
  final Iterable<Type> types = const <Type>[SocialVolumeScopeTypeEnum];
  @override
  final String wireName = 'SocialVolumeScopeTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialVolumeScopeTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialVolumeScopeTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialVolumeScopeTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialVolumeScope extends SocialVolumeScope {
  @override
  final SocialVolumeScopeTypeEnum type;
  @override
  final String id;

  factory _$SocialVolumeScope([
    void Function(SocialVolumeScopeBuilder)? updates,
  ]) => (SocialVolumeScopeBuilder()..update(updates))._build();

  _$SocialVolumeScope._({required this.type, required this.id}) : super._();
  @override
  SocialVolumeScope rebuild(void Function(SocialVolumeScopeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialVolumeScopeBuilder toBuilder() =>
      SocialVolumeScopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialVolumeScope && type == other.type && id == other.id;
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
    return (newBuiltValueToStringHelper(r'SocialVolumeScope')
          ..add('type', type)
          ..add('id', id))
        .toString();
  }
}

class SocialVolumeScopeBuilder
    implements Builder<SocialVolumeScope, SocialVolumeScopeBuilder> {
  _$SocialVolumeScope? _$v;

  SocialVolumeScopeTypeEnum? _type;
  SocialVolumeScopeTypeEnum? get type => _$this._type;
  set type(SocialVolumeScopeTypeEnum? type) => _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  SocialVolumeScopeBuilder() {
    SocialVolumeScope._defaults(this);
  }

  SocialVolumeScopeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialVolumeScope other) {
    _$v = other as _$SocialVolumeScope;
  }

  @override
  void update(void Function(SocialVolumeScopeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialVolumeScope build() => _build();

  _$SocialVolumeScope _build() {
    final _$result =
        _$v ??
        _$SocialVolumeScope._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'SocialVolumeScope',
            'type',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'SocialVolumeScope',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

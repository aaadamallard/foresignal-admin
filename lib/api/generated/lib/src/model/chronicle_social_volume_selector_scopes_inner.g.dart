// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_social_volume_selector_scopes_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChronicleSocialVolumeSelectorScopesInnerTypeEnum
_$chronicleSocialVolumeSelectorScopesInnerTypeEnum_topic =
    const ChronicleSocialVolumeSelectorScopesInnerTypeEnum._('topic');
const ChronicleSocialVolumeSelectorScopesInnerTypeEnum
_$chronicleSocialVolumeSelectorScopesInnerTypeEnum_place =
    const ChronicleSocialVolumeSelectorScopesInnerTypeEnum._('place');
const ChronicleSocialVolumeSelectorScopesInnerTypeEnum
_$chronicleSocialVolumeSelectorScopesInnerTypeEnum_entity =
    const ChronicleSocialVolumeSelectorScopesInnerTypeEnum._('entity');
const ChronicleSocialVolumeSelectorScopesInnerTypeEnum
_$chronicleSocialVolumeSelectorScopesInnerTypeEnum_unknownDefaultOpenApi =
    const ChronicleSocialVolumeSelectorScopesInnerTypeEnum._(
      'unknownDefaultOpenApi',
    );

ChronicleSocialVolumeSelectorScopesInnerTypeEnum
_$chronicleSocialVolumeSelectorScopesInnerTypeEnumValueOf(String name) {
  switch (name) {
    case 'topic':
      return _$chronicleSocialVolumeSelectorScopesInnerTypeEnum_topic;
    case 'place':
      return _$chronicleSocialVolumeSelectorScopesInnerTypeEnum_place;
    case 'entity':
      return _$chronicleSocialVolumeSelectorScopesInnerTypeEnum_entity;
    case 'unknownDefaultOpenApi':
      return _$chronicleSocialVolumeSelectorScopesInnerTypeEnum_unknownDefaultOpenApi;
    default:
      return _$chronicleSocialVolumeSelectorScopesInnerTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ChronicleSocialVolumeSelectorScopesInnerTypeEnum>
_$chronicleSocialVolumeSelectorScopesInnerTypeEnumValues =
    BuiltSet<ChronicleSocialVolumeSelectorScopesInnerTypeEnum>(const <
      ChronicleSocialVolumeSelectorScopesInnerTypeEnum
    >[
      _$chronicleSocialVolumeSelectorScopesInnerTypeEnum_topic,
      _$chronicleSocialVolumeSelectorScopesInnerTypeEnum_place,
      _$chronicleSocialVolumeSelectorScopesInnerTypeEnum_entity,
      _$chronicleSocialVolumeSelectorScopesInnerTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<ChronicleSocialVolumeSelectorScopesInnerTypeEnum>
_$chronicleSocialVolumeSelectorScopesInnerTypeEnumSerializer =
    _$ChronicleSocialVolumeSelectorScopesInnerTypeEnumSerializer();

class _$ChronicleSocialVolumeSelectorScopesInnerTypeEnumSerializer
    implements
        PrimitiveSerializer<ChronicleSocialVolumeSelectorScopesInnerTypeEnum> {
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
  final Iterable<Type> types = const <Type>[
    ChronicleSocialVolumeSelectorScopesInnerTypeEnum,
  ];
  @override
  final String wireName = 'ChronicleSocialVolumeSelectorScopesInnerTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSocialVolumeSelectorScopesInnerTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChronicleSocialVolumeSelectorScopesInnerTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChronicleSocialVolumeSelectorScopesInnerTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChronicleSocialVolumeSelectorScopesInner
    extends ChronicleSocialVolumeSelectorScopesInner {
  @override
  final ChronicleSocialVolumeSelectorScopesInnerTypeEnum type;
  @override
  final String id;

  factory _$ChronicleSocialVolumeSelectorScopesInner([
    void Function(ChronicleSocialVolumeSelectorScopesInnerBuilder)? updates,
  ]) => (ChronicleSocialVolumeSelectorScopesInnerBuilder()..update(updates))
      ._build();

  _$ChronicleSocialVolumeSelectorScopesInner._({
    required this.type,
    required this.id,
  }) : super._();
  @override
  ChronicleSocialVolumeSelectorScopesInner rebuild(
    void Function(ChronicleSocialVolumeSelectorScopesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleSocialVolumeSelectorScopesInnerBuilder toBuilder() =>
      ChronicleSocialVolumeSelectorScopesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSocialVolumeSelectorScopesInner &&
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
    return (newBuiltValueToStringHelper(
            r'ChronicleSocialVolumeSelectorScopesInner',
          )
          ..add('type', type)
          ..add('id', id))
        .toString();
  }
}

class ChronicleSocialVolumeSelectorScopesInnerBuilder
    implements
        Builder<
          ChronicleSocialVolumeSelectorScopesInner,
          ChronicleSocialVolumeSelectorScopesInnerBuilder
        > {
  _$ChronicleSocialVolumeSelectorScopesInner? _$v;

  ChronicleSocialVolumeSelectorScopesInnerTypeEnum? _type;
  ChronicleSocialVolumeSelectorScopesInnerTypeEnum? get type => _$this._type;
  set type(ChronicleSocialVolumeSelectorScopesInnerTypeEnum? type) =>
      _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ChronicleSocialVolumeSelectorScopesInnerBuilder() {
    ChronicleSocialVolumeSelectorScopesInner._defaults(this);
  }

  ChronicleSocialVolumeSelectorScopesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSocialVolumeSelectorScopesInner other) {
    _$v = other as _$ChronicleSocialVolumeSelectorScopesInner;
  }

  @override
  void update(
    void Function(ChronicleSocialVolumeSelectorScopesInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSocialVolumeSelectorScopesInner build() => _build();

  _$ChronicleSocialVolumeSelectorScopesInner _build() {
    final _$result =
        _$v ??
        _$ChronicleSocialVolumeSelectorScopesInner._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'ChronicleSocialVolumeSelectorScopesInner',
            'type',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'ChronicleSocialVolumeSelectorScopesInner',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

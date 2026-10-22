//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_social_volume_selector_scopes_inner.g.dart';

/// Volume scope
///
/// Properties:
/// * [type]
/// * [id]
@BuiltValue()
abstract class ChronicleSocialVolumeSelectorScopesInner
    implements
        Built<ChronicleSocialVolumeSelectorScopesInner,
            ChronicleSocialVolumeSelectorScopesInnerBuilder> {
  @BuiltValueField(wireName: r'type')
  ChronicleSocialVolumeSelectorScopesInnerTypeEnum get type;
  // enum typeEnum {  topic,  place,  entity,  };

  @BuiltValueField(wireName: r'id')
  String get id;

  ChronicleSocialVolumeSelectorScopesInner._();

  factory ChronicleSocialVolumeSelectorScopesInner(
          [void updates(ChronicleSocialVolumeSelectorScopesInnerBuilder b)]) =
      _$ChronicleSocialVolumeSelectorScopesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSocialVolumeSelectorScopesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSocialVolumeSelectorScopesInner> get serializer =>
      _$ChronicleSocialVolumeSelectorScopesInnerSerializer();
}

class _$ChronicleSocialVolumeSelectorScopesInnerSerializer
    implements PrimitiveSerializer<ChronicleSocialVolumeSelectorScopesInner> {
  @override
  final Iterable<Type> types = const [
    ChronicleSocialVolumeSelectorScopesInner,
    _$ChronicleSocialVolumeSelectorScopesInner
  ];

  @override
  final String wireName = r'ChronicleSocialVolumeSelectorScopesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSocialVolumeSelectorScopesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType:
          const FullType(ChronicleSocialVolumeSelectorScopesInnerTypeEnum),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSocialVolumeSelectorScopesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChronicleSocialVolumeSelectorScopesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ChronicleSocialVolumeSelectorScopesInnerTypeEnum),
          ) as ChronicleSocialVolumeSelectorScopesInnerTypeEnum;
          result.type = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSocialVolumeSelectorScopesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSocialVolumeSelectorScopesInnerBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class ChronicleSocialVolumeSelectorScopesInnerTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'topic')
  static const ChronicleSocialVolumeSelectorScopesInnerTypeEnum topic =
      _$chronicleSocialVolumeSelectorScopesInnerTypeEnum_topic;
  @BuiltValueEnumConst(wireName: r'place')
  static const ChronicleSocialVolumeSelectorScopesInnerTypeEnum place =
      _$chronicleSocialVolumeSelectorScopesInnerTypeEnum_place;
  @BuiltValueEnumConst(wireName: r'entity')
  static const ChronicleSocialVolumeSelectorScopesInnerTypeEnum entity =
      _$chronicleSocialVolumeSelectorScopesInnerTypeEnum_entity;

  static Serializer<ChronicleSocialVolumeSelectorScopesInnerTypeEnum>
      get serializer =>
          _$chronicleSocialVolumeSelectorScopesInnerTypeEnumSerializer;

  const ChronicleSocialVolumeSelectorScopesInnerTypeEnum._(String name)
      : super(name);

  static BuiltSet<ChronicleSocialVolumeSelectorScopesInnerTypeEnum>
      get values => _$chronicleSocialVolumeSelectorScopesInnerTypeEnumValues;
  static ChronicleSocialVolumeSelectorScopesInnerTypeEnum valueOf(
          String name) =>
      _$chronicleSocialVolumeSelectorScopesInnerTypeEnumValueOf(name);
}

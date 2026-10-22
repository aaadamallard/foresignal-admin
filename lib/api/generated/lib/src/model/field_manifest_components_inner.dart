//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field_manifest_components_inner.g.dart';

/// Planar component
///
/// Properties:
/// * [name]
/// * [offset] - Byte offset in the .f32 data
@BuiltValue()
abstract class FieldManifestComponentsInner
    implements
        Built<
          FieldManifestComponentsInner,
          FieldManifestComponentsInnerBuilder
        > {
  @BuiltValueField(wireName: r'name')
  FieldManifestComponentsInnerNameEnum get name;
  // enum nameEnum {  u,  v,  };

  /// Byte offset in the .f32 data
  @BuiltValueField(wireName: r'offset')
  int get offset;

  FieldManifestComponentsInner._();

  factory FieldManifestComponentsInner([
    void updates(FieldManifestComponentsInnerBuilder b),
  ]) = _$FieldManifestComponentsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FieldManifestComponentsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FieldManifestComponentsInner> get serializer =>
      _$FieldManifestComponentsInnerSerializer();
}

class _$FieldManifestComponentsInnerSerializer
    implements PrimitiveSerializer<FieldManifestComponentsInner> {
  @override
  final Iterable<Type> types = const [
    FieldManifestComponentsInner,
    _$FieldManifestComponentsInner,
  ];

  @override
  final String wireName = r'FieldManifestComponentsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FieldManifestComponentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(FieldManifestComponentsInnerNameEnum),
    );
    yield r'offset';
    yield serializers.serialize(
      object.offset,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FieldManifestComponentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FieldManifestComponentsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      FieldManifestComponentsInnerNameEnum,
                    ),
                  )
                  as FieldManifestComponentsInnerNameEnum;
          result.name = valueDes;
          break;
        case r'offset':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.offset = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FieldManifestComponentsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldManifestComponentsInnerBuilder();
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

class FieldManifestComponentsInnerNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'u')
  static const FieldManifestComponentsInnerNameEnum u =
      _$fieldManifestComponentsInnerNameEnum_u;
  @BuiltValueEnumConst(wireName: r'v')
  static const FieldManifestComponentsInnerNameEnum v =
      _$fieldManifestComponentsInnerNameEnum_v;

  static Serializer<FieldManifestComponentsInnerNameEnum> get serializer =>
      _$fieldManifestComponentsInnerNameEnumSerializer;

  const FieldManifestComponentsInnerNameEnum._(String name) : super(name);

  static BuiltSet<FieldManifestComponentsInnerNameEnum> get values =>
      _$fieldManifestComponentsInnerNameEnumValues;
  static FieldManifestComponentsInnerNameEnum valueOf(String name) =>
      _$fieldManifestComponentsInnerNameEnumValueOf(name);
}

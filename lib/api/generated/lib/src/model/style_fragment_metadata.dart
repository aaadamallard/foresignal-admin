//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'style_fragment_metadata.g.dart';

/// Legend links and attribution
///
/// Properties:
/// * [legends]
/// * [attribution]
@BuiltValue()
abstract class StyleFragmentMetadata
    implements Built<StyleFragmentMetadata, StyleFragmentMetadataBuilder> {
  @BuiltValueField(wireName: r'legends')
  BuiltMap<String, String>? get legends;

  @BuiltValueField(wireName: r'attribution')
  BuiltList<Attribution>? get attribution;

  StyleFragmentMetadata._();

  factory StyleFragmentMetadata([
    void updates(StyleFragmentMetadataBuilder b),
  ]) = _$StyleFragmentMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StyleFragmentMetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StyleFragmentMetadata> get serializer =>
      _$StyleFragmentMetadataSerializer();
}

class _$StyleFragmentMetadataSerializer
    implements PrimitiveSerializer<StyleFragmentMetadata> {
  @override
  final Iterable<Type> types = const [
    StyleFragmentMetadata,
    _$StyleFragmentMetadata,
  ];

  @override
  final String wireName = r'StyleFragmentMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StyleFragmentMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.legends != null) {
      yield r'legends';
      yield serializers.serialize(
        object.legends,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(BuiltList, [FullType(Attribution)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StyleFragmentMetadata object, {
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
    required StyleFragmentMetadataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'legends':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.legends.replace(valueDes);
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Attribution),
                    ]),
                  )
                  as BuiltList<Attribution>?;
          if (valueDes == null) continue;
          result.attribution.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StyleFragmentMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StyleFragmentMetadataBuilder();
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

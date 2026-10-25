//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/style_fragment_metadata.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'style_fragment.g.dart';

/// MapLibre style fragment with concrete content-addressed URLs and namespaced layer ids (`foresignal-{product}`), for merging below a layer of the client's basemap
///
/// Properties:
/// * [version]
/// * [sources]
/// * [layers]
/// * [metadata]
@BuiltValue()
abstract class StyleFragment
    implements Built<StyleFragment, StyleFragmentBuilder> {
  @BuiltValueField(wireName: r'version')
  StyleFragmentVersionEnum get version;
  // enum versionEnum {  8,  };

  @BuiltValueField(wireName: r'sources')
  BuiltMap<String, BuiltMap<String, JsonObject?>> get sources;

  @BuiltValueField(wireName: r'layers')
  BuiltList<BuiltMap<String, JsonObject?>> get layers;

  @BuiltValueField(wireName: r'metadata')
  StyleFragmentMetadata? get metadata;

  StyleFragment._();

  factory StyleFragment([void updates(StyleFragmentBuilder b)]) =
      _$StyleFragment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StyleFragmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StyleFragment> get serializer =>
      _$StyleFragmentSerializer();
}

class _$StyleFragmentSerializer implements PrimitiveSerializer<StyleFragment> {
  @override
  final Iterable<Type> types = const [StyleFragment, _$StyleFragment];

  @override
  final String wireName = r'StyleFragment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StyleFragment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(StyleFragmentVersionEnum),
    );
    yield r'sources';
    yield serializers.serialize(
      object.sources,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      ]),
    );
    yield r'layers';
    yield serializers.serialize(
      object.layers,
      specifiedType: const FullType(BuiltList, [
        FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      ]),
    );
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(StyleFragmentMetadata),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StyleFragment object, {
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
    required StyleFragmentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(StyleFragmentVersionEnum),
                  )
                  as StyleFragmentVersionEnum;
          result.version = valueDes;
          break;
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(BuiltMap, [
                        FullType(String),
                        FullType.nullable(JsonObject),
                      ]),
                    ]),
                  )
                  as BuiltMap<String, BuiltMap<String, JsonObject?>>;
          result.sources.replace(valueDes);
          break;
        case r'layers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(BuiltMap, [
                        FullType(String),
                        FullType.nullable(JsonObject),
                      ]),
                    ]),
                  )
                  as BuiltList<BuiltMap<String, JsonObject?>>;
          result.layers.replace(valueDes);
          break;
        case r'metadata':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      StyleFragmentMetadata,
                    ),
                  )
                  as StyleFragmentMetadata?;
          if (valueDes == null) continue;
          result.metadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StyleFragment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StyleFragmentBuilder();
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

class StyleFragmentVersionEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 8)
  static const StyleFragmentVersionEnum number8 =
      _$styleFragmentVersionEnum_number8;
  @BuiltValueEnumConst(wireNumber: 11184809, fallback: true)
  static const StyleFragmentVersionEnum unknownDefaultOpenApi =
      _$styleFragmentVersionEnum_unknownDefaultOpenApi;

  static Serializer<StyleFragmentVersionEnum> get serializer =>
      _$styleFragmentVersionEnumSerializer;

  const StyleFragmentVersionEnum._(String name) : super(name);

  static BuiltSet<StyleFragmentVersionEnum> get values =>
      _$styleFragmentVersionEnumValues;
  static StyleFragmentVersionEnum valueOf(String name) =>
      _$styleFragmentVersionEnumValueOf(name);
}

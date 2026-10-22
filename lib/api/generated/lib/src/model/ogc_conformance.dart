//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_conformance.g.dart';

/// Implemented conformance classes (112): Part 1 core and geojson; Part 3 filter, features-filter, queryables; CQL2 basic-cql2, cql2-text, cql2-json, basic-spatial-functions. oas30 is not claimed
///
/// Properties:
/// * [conformsTo]
@BuiltValue()
abstract class OgcConformance
    implements Built<OgcConformance, OgcConformanceBuilder> {
  @BuiltValueField(wireName: r'conformsTo')
  BuiltList<String> get conformsTo;

  OgcConformance._();

  factory OgcConformance([void updates(OgcConformanceBuilder b)]) =
      _$OgcConformance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcConformanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcConformance> get serializer =>
      _$OgcConformanceSerializer();
}

class _$OgcConformanceSerializer
    implements PrimitiveSerializer<OgcConformance> {
  @override
  final Iterable<Type> types = const [OgcConformance, _$OgcConformance];

  @override
  final String wireName = r'OgcConformance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcConformance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'conformsTo';
    yield serializers.serialize(
      object.conformsTo,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcConformance object, {
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
    required OgcConformanceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'conformsTo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.conformsTo.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcConformance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcConformanceBuilder();
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

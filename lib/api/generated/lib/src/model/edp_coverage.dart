//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/edp_geometry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_coverage.g.dart';

/// Declared footprint and detection probability (low-confidence observability)
///
/// Properties:
/// * [area]
/// * [family]
/// * [pDetect]
@BuiltValue()
abstract class EdpCoverage implements Built<EdpCoverage, EdpCoverageBuilder> {
  @BuiltValueField(wireName: r'area')
  EdpGeometry? get area;

  @BuiltValueField(wireName: r'family')
  String? get family;

  @BuiltValueField(wireName: r'pDetect')
  num? get pDetect;

  EdpCoverage._();

  factory EdpCoverage([void updates(EdpCoverageBuilder b)]) = _$EdpCoverage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpCoverageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpCoverage> get serializer => _$EdpCoverageSerializer();
}

class _$EdpCoverageSerializer implements PrimitiveSerializer<EdpCoverage> {
  @override
  final Iterable<Type> types = const [EdpCoverage, _$EdpCoverage];

  @override
  final String wireName = r'EdpCoverage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpCoverage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.area != null) {
      yield r'area';
      yield serializers.serialize(
        object.area,
        specifiedType: const FullType.nullable(EdpGeometry),
      );
    }
    if (object.family != null) {
      yield r'family';
      yield serializers.serialize(
        object.family,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.pDetect != null) {
      yield r'pDetect';
      yield serializers.serialize(
        object.pDetect,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpCoverage object, {
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
    required EdpCoverageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'area':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EdpGeometry),
                  )
                  as EdpGeometry?;
          if (valueDes == null) continue;
          result.area.replace(valueDes);
          break;
        case r'family':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.family = valueDes;
          break;
        case r'pDetect':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.pDetect = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpCoverage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpCoverageBuilder();
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

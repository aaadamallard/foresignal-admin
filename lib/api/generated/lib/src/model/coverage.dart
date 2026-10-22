//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coverage.g.dart';

/// Receiver coverage reported by a fetch (fetch_log.coverage, source_health.last_coverage)
///
/// Properties:
/// * [receivers]
/// * [expected]
/// * [actual]
/// * [region] - Covered region [minLon, minLat, maxLon, maxLat]
@BuiltValue()
abstract class Coverage implements Built<Coverage, CoverageBuilder> {
  @BuiltValueField(wireName: r'receivers')
  int? get receivers;

  @BuiltValueField(wireName: r'expected')
  int? get expected;

  @BuiltValueField(wireName: r'actual')
  int? get actual;

  /// Covered region [minLon, minLat, maxLon, maxLat]
  @BuiltValueField(wireName: r'region')
  BuiltList<num>? get region;

  Coverage._();

  factory Coverage([void updates(CoverageBuilder b)]) = _$Coverage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CoverageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Coverage> get serializer => _$CoverageSerializer();
}

class _$CoverageSerializer implements PrimitiveSerializer<Coverage> {
  @override
  final Iterable<Type> types = const [Coverage, _$Coverage];

  @override
  final String wireName = r'Coverage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Coverage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.receivers != null) {
      yield r'receivers';
      yield serializers.serialize(
        object.receivers,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.expected != null) {
      yield r'expected';
      yield serializers.serialize(
        object.expected,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.actual != null) {
      yield r'actual';
      yield serializers.serialize(
        object.actual,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.region != null) {
      yield r'region';
      yield serializers.serialize(
        object.region,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Coverage object, {
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
    required CoverageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'receivers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.receivers = valueDes;
          break;
        case r'expected':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.expected = valueDes;
          break;
        case r'actual':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.actual = valueDes;
          break;
        case r'region':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(num),
                    ]),
                  )
                  as BuiltList<num>?;
          if (valueDes == null) continue;
          result.region.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Coverage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CoverageBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quality.g.dart';

/// Observation quality (never hashed); validated on ingest (Core-Data-Model §14)
///
/// Properties:
/// * [accuracyMeters] - Horizontal accuracy in metres
/// * [confidence] - Confidence 0–1
/// * [positionSource] - How the position was obtained (adapter-defined `PositionSource`)
/// * [extra] - Namespaced scalar extras, e.g. `adsb.seen_pos`
@BuiltValue()
abstract class Quality implements Built<Quality, QualityBuilder> {
  /// Horizontal accuracy in metres
  @BuiltValueField(wireName: r'accuracyMeters')
  num? get accuracyMeters;

  /// Confidence 0–1
  @BuiltValueField(wireName: r'confidence')
  num? get confidence;

  /// How the position was obtained (adapter-defined `PositionSource`)
  @BuiltValueField(wireName: r'positionSource')
  String? get positionSource;

  /// Namespaced scalar extras, e.g. `adsb.seen_pos`
  @BuiltValueField(wireName: r'extra')
  BuiltMap<String, JsonObject?>? get extra;

  Quality._();

  factory Quality([void updates(QualityBuilder b)]) = _$Quality;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QualityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Quality> get serializer => _$QualitySerializer();
}

class _$QualitySerializer implements PrimitiveSerializer<Quality> {
  @override
  final Iterable<Type> types = const [Quality, _$Quality];

  @override
  final String wireName = r'Quality';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Quality object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accuracyMeters != null) {
      yield r'accuracyMeters';
      yield serializers.serialize(
        object.accuracyMeters,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.confidence != null) {
      yield r'confidence';
      yield serializers.serialize(
        object.confidence,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.positionSource != null) {
      yield r'positionSource';
      yield serializers.serialize(
        object.positionSource,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.extra != null) {
      yield r'extra';
      yield serializers.serialize(
        object.extra,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Quality object, {
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
    required QualityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accuracyMeters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.accuracyMeters = valueDes;
          break;
        case r'confidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.confidence = valueDes;
          break;
        case r'positionSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.positionSource = valueDes;
          break;
        case r'extra':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.extra.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Quality deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QualityBuilder();
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

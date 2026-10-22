//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pol_subject_input_params.g.dart';

/// Stay and clustering parameters
///
/// Properties:
/// * [stayRadiusM]
/// * [minDwell] - Minimum dwell for a stay. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
/// * [maxGap] - Gap that ends a stay. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
/// * [eps] - DBSCAN eps in metres
/// * [minPts] - DBSCAN minimum stays
/// * [lookback] - Nightly recompute window over stored stays. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
@BuiltValue()
abstract class PolSubjectInputParams
    implements Built<PolSubjectInputParams, PolSubjectInputParamsBuilder> {
  @BuiltValueField(wireName: r'stayRadiusM')
  num? get stayRadiusM;

  /// Minimum dwell for a stay. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
  @BuiltValueField(wireName: r'minDwell')
  String? get minDwell;

  /// Gap that ends a stay. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
  @BuiltValueField(wireName: r'maxGap')
  String? get maxGap;

  /// DBSCAN eps in metres
  @BuiltValueField(wireName: r'eps')
  num? get eps;

  /// DBSCAN minimum stays
  @BuiltValueField(wireName: r'minPts')
  int? get minPts;

  /// Nightly recompute window over stored stays. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
  @BuiltValueField(wireName: r'lookback')
  String? get lookback;

  PolSubjectInputParams._();

  factory PolSubjectInputParams([
    void updates(PolSubjectInputParamsBuilder b),
  ]) = _$PolSubjectInputParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolSubjectInputParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolSubjectInputParams> get serializer =>
      _$PolSubjectInputParamsSerializer();
}

class _$PolSubjectInputParamsSerializer
    implements PrimitiveSerializer<PolSubjectInputParams> {
  @override
  final Iterable<Type> types = const [
    PolSubjectInputParams,
    _$PolSubjectInputParams,
  ];

  @override
  final String wireName = r'PolSubjectInputParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolSubjectInputParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.stayRadiusM != null) {
      yield r'stayRadiusM';
      yield serializers.serialize(
        object.stayRadiusM,
        specifiedType: const FullType(num),
      );
    }
    if (object.minDwell != null) {
      yield r'minDwell';
      yield serializers.serialize(
        object.minDwell,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxGap != null) {
      yield r'maxGap';
      yield serializers.serialize(
        object.maxGap,
        specifiedType: const FullType(String),
      );
    }
    if (object.eps != null) {
      yield r'eps';
      yield serializers.serialize(
        object.eps,
        specifiedType: const FullType(num),
      );
    }
    if (object.minPts != null) {
      yield r'minPts';
      yield serializers.serialize(
        object.minPts,
        specifiedType: const FullType(int),
      );
    }
    if (object.lookback != null) {
      yield r'lookback';
      yield serializers.serialize(
        object.lookback,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PolSubjectInputParams object, {
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
    required PolSubjectInputParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'stayRadiusM':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.stayRadiusM = valueDes;
          break;
        case r'minDwell':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.minDwell = valueDes;
          break;
        case r'maxGap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.maxGap = valueDes;
          break;
        case r'eps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.eps = valueDes;
          break;
        case r'minPts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.minPts = valueDes;
          break;
        case r'lookback':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.lookback = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolSubjectInputParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolSubjectInputParamsBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/model_disagreement.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/sample_position.dart';
import 'package:foresignal_api/src/model/sample_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sample_response.g.dart';

/// Values of the requested products at one point
///
/// Properties:
/// * [lon]
/// * [lat]
/// * [placeId]
/// * [timezone]
/// * [time] - Requested time expression
/// * [serverTime]
/// * [values]
/// * [disagreement] - 105: when several model products are sampled
/// * [position] - 106: present with `record=`
@BuiltValue()
abstract class SampleResponse
    implements Built<SampleResponse, SampleResponseBuilder> {
  @BuiltValueField(wireName: r'lon')
  num get lon;

  @BuiltValueField(wireName: r'lat')
  num get lat;

  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  /// Requested time expression
  @BuiltValueField(wireName: r'time')
  String? get time;

  @BuiltValueField(wireName: r'serverTime')
  DateTime get serverTime;

  @BuiltValueField(wireName: r'values')
  BuiltList<SampleValue> get values;

  /// 105: when several model products are sampled
  @BuiltValueField(wireName: r'disagreement')
  ModelDisagreement? get disagreement;

  /// 106: present with `record=`
  @BuiltValueField(wireName: r'position')
  SamplePosition? get position;

  SampleResponse._();

  factory SampleResponse([void updates(SampleResponseBuilder b)]) =
      _$SampleResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SampleResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SampleResponse> get serializer =>
      _$SampleResponseSerializer();
}

class _$SampleResponseSerializer
    implements PrimitiveSerializer<SampleResponse> {
  @override
  final Iterable<Type> types = const [SampleResponse, _$SampleResponse];

  @override
  final String wireName = r'SampleResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SampleResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'lon';
    yield serializers.serialize(object.lon, specifiedType: const FullType(num));
    yield r'lat';
    yield serializers.serialize(object.lat, specifiedType: const FullType(num));
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType(String),
      );
    }
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(String),
      );
    }
    yield r'serverTime';
    yield serializers.serialize(
      object.serverTime,
      specifiedType: const FullType(DateTime),
    );
    yield r'values';
    yield serializers.serialize(
      object.values,
      specifiedType: const FullType(BuiltList, [FullType(SampleValue)]),
    );
    if (object.disagreement != null) {
      yield r'disagreement';
      yield serializers.serialize(
        object.disagreement,
        specifiedType: const FullType.nullable(ModelDisagreement),
      );
    }
    if (object.position != null) {
      yield r'position';
      yield serializers.serialize(
        object.position,
        specifiedType: const FullType.nullable(SamplePosition),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SampleResponse object, {
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
    required SampleResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lon':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.lon = valueDes;
          break;
        case r'lat':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.lat = valueDes;
          break;
        case r'placeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
          break;
        case r'timezone':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
          break;
        case r'time':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.time = valueDes;
          break;
        case r'serverTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.serverTime = valueDes;
          break;
        case r'values':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SampleValue),
                    ]),
                  )
                  as BuiltList<SampleValue>;
          result.values.replace(valueDes);
          break;
        case r'disagreement':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ModelDisagreement),
                  )
                  as ModelDisagreement?;
          if (valueDes == null) continue;
          result.disagreement.replace(valueDes);
          break;
        case r'position':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SamplePosition),
                  )
                  as SamplePosition?;
          if (valueDes == null) continue;
          result.position.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SampleResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SampleResponseBuilder();
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

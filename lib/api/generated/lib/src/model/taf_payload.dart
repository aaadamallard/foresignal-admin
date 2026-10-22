//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/taf_payload_forecast_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'taf_payload.g.dart';

/// Kind `taf` (`awc-tafs`): terminal aerodrome forecast; observedAt = issue time; validFrom/validUntil explicit
///
/// Properties:
/// * [stationId]
/// * [issueTime]
/// * [validFrom]
/// * [validTo]
/// * [forecast]
/// * [rawText]
@BuiltValue()
abstract class TafPayload implements Built<TafPayload, TafPayloadBuilder> {
  @BuiltValueField(wireName: r'stationId')
  String get stationId;

  @BuiltValueField(wireName: r'issueTime')
  DateTime get issueTime;

  @BuiltValueField(wireName: r'validFrom')
  DateTime get validFrom;

  @BuiltValueField(wireName: r'validTo')
  DateTime get validTo;

  @BuiltValueField(wireName: r'forecast')
  BuiltList<TafPayloadForecastInner>? get forecast;

  @BuiltValueField(wireName: r'rawText')
  String get rawText;

  TafPayload._();

  factory TafPayload([void updates(TafPayloadBuilder b)]) = _$TafPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TafPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TafPayload> get serializer => _$TafPayloadSerializer();
}

class _$TafPayloadSerializer implements PrimitiveSerializer<TafPayload> {
  @override
  final Iterable<Type> types = const [TafPayload, _$TafPayload];

  @override
  final String wireName = r'TafPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TafPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'stationId';
    yield serializers.serialize(
      object.stationId,
      specifiedType: const FullType(String),
    );
    yield r'issueTime';
    yield serializers.serialize(
      object.issueTime,
      specifiedType: const FullType(DateTime),
    );
    yield r'validFrom';
    yield serializers.serialize(
      object.validFrom,
      specifiedType: const FullType(DateTime),
    );
    yield r'validTo';
    yield serializers.serialize(
      object.validTo,
      specifiedType: const FullType(DateTime),
    );
    if (object.forecast != null) {
      yield r'forecast';
      yield serializers.serialize(
        object.forecast,
        specifiedType: const FullType(BuiltList, [
          FullType(TafPayloadForecastInner),
        ]),
      );
    }
    yield r'rawText';
    yield serializers.serialize(
      object.rawText,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TafPayload object, {
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
    required TafPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'stationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.stationId = valueDes;
          break;
        case r'issueTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.issueTime = valueDes;
          break;
        case r'validFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.validFrom = valueDes;
          break;
        case r'validTo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.validTo = valueDes;
          break;
        case r'forecast':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(TafPayloadForecastInner),
                    ]),
                  )
                  as BuiltList<TafPayloadForecastInner>?;
          if (valueDes == null) continue;
          result.forecast.replace(valueDes);
          break;
        case r'rawText':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.rawText = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TafPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TafPayloadBuilder();
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

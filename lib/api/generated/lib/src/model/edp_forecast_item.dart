//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/quantiles.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/edp_forecast_item_question.dart';
import 'package:foresignal_api/src/model/edp_origin.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_forecast_item.g.dart';

/// A probability or quantiles (monotonic: p05 ≤ p10 ≤ p25 ≤ p50 ≤ p75 ≤ p90 ≤ p95, checked by the server) for a question
///
/// Properties:
/// * [stream]
/// * [type]
/// * [id]
/// * [observedAt]
/// * [properties] - Item properties, validated against the stream's payloadSchema
/// * [question]
/// * [questionRef]
/// * [probability]
/// * [quantiles]
/// * [madeAt] - Provider-claimed time; the recorded made_at is max(madeAt, receipt time)
/// * [origin]
@BuiltValue()
abstract class EdpForecastItem
    implements Built<EdpForecastItem, EdpForecastItemBuilder> {
  @BuiltValueField(wireName: r'stream')
  String get stream;

  @BuiltValueField(wireName: r'type')
  EdpForecastItemTypeEnum get type;
  // enum typeEnum {  forecast,  };

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'observedAt')
  DateTime? get observedAt;

  /// Item properties, validated against the stream's payloadSchema
  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, JsonObject?>? get properties;

  @BuiltValueField(wireName: r'question')
  EdpForecastItemQuestion? get question;

  @BuiltValueField(wireName: r'questionRef')
  String? get questionRef;

  @BuiltValueField(wireName: r'probability')
  num? get probability;

  @BuiltValueField(wireName: r'quantiles')
  Quantiles? get quantiles;

  /// Provider-claimed time; the recorded made_at is max(madeAt, receipt time)
  @BuiltValueField(wireName: r'madeAt')
  DateTime get madeAt;

  @BuiltValueField(wireName: r'origin')
  EdpOrigin? get origin;

  EdpForecastItem._();

  factory EdpForecastItem([void updates(EdpForecastItemBuilder b)]) =
      _$EdpForecastItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpForecastItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpForecastItem> get serializer =>
      _$EdpForecastItemSerializer();
}

class _$EdpForecastItemSerializer
    implements PrimitiveSerializer<EdpForecastItem> {
  @override
  final Iterable<Type> types = const [EdpForecastItem, _$EdpForecastItem];

  @override
  final String wireName = r'EdpForecastItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpForecastItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'stream';
    yield serializers.serialize(
      object.stream,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(EdpForecastItemTypeEnum),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.observedAt != null) {
      yield r'observedAt';
      yield serializers.serialize(
        object.observedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.properties != null) {
      yield r'properties';
      yield serializers.serialize(
        object.properties,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.question != null) {
      yield r'question';
      yield serializers.serialize(
        object.question,
        specifiedType: const FullType.nullable(EdpForecastItemQuestion),
      );
    }
    if (object.questionRef != null) {
      yield r'questionRef';
      yield serializers.serialize(
        object.questionRef,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.probability != null) {
      yield r'probability';
      yield serializers.serialize(
        object.probability,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.quantiles != null) {
      yield r'quantiles';
      yield serializers.serialize(
        object.quantiles,
        specifiedType: const FullType.nullable(Quantiles),
      );
    }
    yield r'madeAt';
    yield serializers.serialize(
      object.madeAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.origin != null) {
      yield r'origin';
      yield serializers.serialize(
        object.origin,
        specifiedType: const FullType.nullable(EdpOrigin),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpForecastItem object, {
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
    required EdpForecastItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'stream':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.stream = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EdpForecastItemTypeEnum),
                  )
                  as EdpForecastItemTypeEnum;
          result.type = valueDes;
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'observedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.observedAt = valueDes;
          break;
        case r'properties':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.properties.replace(valueDes);
          break;
        case r'question':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      EdpForecastItemQuestion,
                    ),
                  )
                  as EdpForecastItemQuestion?;
          if (valueDes == null) continue;
          result.question.replace(valueDes);
          break;
        case r'questionRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.questionRef = valueDes;
          break;
        case r'probability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.probability = valueDes;
          break;
        case r'quantiles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Quantiles),
                  )
                  as Quantiles?;
          if (valueDes == null) continue;
          result.quantiles.replace(valueDes);
          break;
        case r'madeAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.madeAt = valueDes;
          break;
        case r'origin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EdpOrigin),
                  )
                  as EdpOrigin?;
          if (valueDes == null) continue;
          result.origin.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpForecastItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpForecastItemBuilder();
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

class EdpForecastItemTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'forecast')
  static const EdpForecastItemTypeEnum forecast =
      _$edpForecastItemTypeEnum_forecast;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EdpForecastItemTypeEnum unknownDefaultOpenApi =
      _$edpForecastItemTypeEnum_unknownDefaultOpenApi;

  static Serializer<EdpForecastItemTypeEnum> get serializer =>
      _$edpForecastItemTypeEnumSerializer;

  const EdpForecastItemTypeEnum._(String name) : super(name);

  static BuiltSet<EdpForecastItemTypeEnum> get values =>
      _$edpForecastItemTypeEnumValues;
  static EdpForecastItemTypeEnum valueOf(String name) =>
      _$edpForecastItemTypeEnumValueOf(name);
}

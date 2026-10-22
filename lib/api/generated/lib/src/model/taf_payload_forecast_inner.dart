//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'taf_payload_forecast_inner.g.dart';

/// Forecast group
///
/// Properties:
/// * [changeIndicator] - FM, TEMPO, BECMG, PROB30/40
/// * [from]
/// * [to]
/// * [wind]
/// * [visibility]
/// * [wx]
/// * [clouds]
@BuiltValue()
abstract class TafPayloadForecastInner
    implements Built<TafPayloadForecastInner, TafPayloadForecastInnerBuilder> {
  /// FM, TEMPO, BECMG, PROB30/40
  @BuiltValueField(wireName: r'changeIndicator')
  String? get changeIndicator;

  @BuiltValueField(wireName: r'from')
  DateTime? get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  @BuiltValueField(wireName: r'wind')
  BuiltMap<String, JsonObject?>? get wind;

  @BuiltValueField(wireName: r'visibility')
  String? get visibility;

  @BuiltValueField(wireName: r'wx')
  BuiltList<String>? get wx;

  @BuiltValueField(wireName: r'clouds')
  BuiltList<BuiltMap<String, JsonObject?>>? get clouds;

  TafPayloadForecastInner._();

  factory TafPayloadForecastInner([
    void updates(TafPayloadForecastInnerBuilder b),
  ]) = _$TafPayloadForecastInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TafPayloadForecastInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TafPayloadForecastInner> get serializer =>
      _$TafPayloadForecastInnerSerializer();
}

class _$TafPayloadForecastInnerSerializer
    implements PrimitiveSerializer<TafPayloadForecastInner> {
  @override
  final Iterable<Type> types = const [
    TafPayloadForecastInner,
    _$TafPayloadForecastInner,
  ];

  @override
  final String wireName = r'TafPayloadForecastInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TafPayloadForecastInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.changeIndicator != null) {
      yield r'changeIndicator';
      yield serializers.serialize(
        object.changeIndicator,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.wind != null) {
      yield r'wind';
      yield serializers.serialize(
        object.wind,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.wx != null) {
      yield r'wx';
      yield serializers.serialize(
        object.wx,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.clouds != null) {
      yield r'clouds';
      yield serializers.serialize(
        object.clouds,
        specifiedType: const FullType(BuiltList, [
          FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TafPayloadForecastInner object, {
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
    required TafPayloadForecastInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'changeIndicator':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.changeIndicator = valueDes;
          break;
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'wind':
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
          result.wind.replace(valueDes);
          break;
        case r'visibility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.visibility = valueDes;
          break;
        case r'wx':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.wx.replace(valueDes);
          break;
        case r'clouds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(BuiltMap, [
                        FullType(String),
                        FullType.nullable(JsonObject),
                      ]),
                    ]),
                  )
                  as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.clouds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TafPayloadForecastInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TafPayloadForecastInnerBuilder();
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

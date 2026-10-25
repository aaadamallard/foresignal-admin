//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/tuning_suggestion_expected_effect.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tuning_suggestion.g.dart';

/// A deterministic tuning suggestion with a ready rule patch; never applied automatically
///
/// Properties:
/// * [id]
/// * [kind]
/// * [rationale]
/// * [patch_] - Partial TriggerRuleInput ready to apply as an ordinary rule update
/// * [expectedEffect]
/// * [caveats]
@BuiltValue()
abstract class TuningSuggestion
    implements Built<TuningSuggestion, TuningSuggestionBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'kind')
  TuningSuggestionKindEnum get kind;
  // enum kindEnum {  raise-threshold,  lower-threshold,  add-cooldown,  switch-to-enter,  add-edge-min-interval,  shrink-geofence,  lower-anomaly-sensitivity,  ACTIVE_WINDOW,  SEVERITY_UP,  SEVERITY_DOWN,  };

  @BuiltValueField(wireName: r'rationale')
  String get rationale;

  /// Partial TriggerRuleInput ready to apply as an ordinary rule update
  @BuiltValueField(wireName: r'patch')
  BuiltMap<String, JsonObject?> get patch_;

  @BuiltValueField(wireName: r'expectedEffect')
  TuningSuggestionExpectedEffect? get expectedEffect;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  TuningSuggestion._();

  factory TuningSuggestion([void updates(TuningSuggestionBuilder b)]) =
      _$TuningSuggestion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TuningSuggestionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TuningSuggestion> get serializer =>
      _$TuningSuggestionSerializer();
}

class _$TuningSuggestionSerializer
    implements PrimitiveSerializer<TuningSuggestion> {
  @override
  final Iterable<Type> types = const [TuningSuggestion, _$TuningSuggestion];

  @override
  final String wireName = r'TuningSuggestion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TuningSuggestion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(TuningSuggestionKindEnum),
    );
    yield r'rationale';
    yield serializers.serialize(
      object.rationale,
      specifiedType: const FullType(String),
    );
    yield r'patch';
    yield serializers.serialize(
      object.patch_,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType.nullable(JsonObject),
      ]),
    );
    if (object.expectedEffect != null) {
      yield r'expectedEffect';
      yield serializers.serialize(
        object.expectedEffect,
        specifiedType: const FullType.nullable(TuningSuggestionExpectedEffect),
      );
    }
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TuningSuggestion object, {
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
    required TuningSuggestionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(TuningSuggestionKindEnum),
                  )
                  as TuningSuggestionKindEnum;
          result.kind = valueDes;
          break;
        case r'rationale':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.rationale = valueDes;
          break;
        case r'patch':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>;
          result.patch_.replace(valueDes);
          break;
        case r'expectedEffect':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TuningSuggestionExpectedEffect,
                    ),
                  )
                  as TuningSuggestionExpectedEffect?;
          if (valueDes == null) continue;
          result.expectedEffect.replace(valueDes);
          break;
        case r'caveats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Caveat),
                    ]),
                  )
                  as BuiltList<Caveat>?;
          if (valueDes == null) continue;
          result.caveats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TuningSuggestion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TuningSuggestionBuilder();
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

class TuningSuggestionKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'raise-threshold')
  static const TuningSuggestionKindEnum raiseThreshold =
      _$tuningSuggestionKindEnum_raiseThreshold;
  @BuiltValueEnumConst(wireName: r'lower-threshold')
  static const TuningSuggestionKindEnum lowerThreshold =
      _$tuningSuggestionKindEnum_lowerThreshold;
  @BuiltValueEnumConst(wireName: r'add-cooldown')
  static const TuningSuggestionKindEnum addCooldown =
      _$tuningSuggestionKindEnum_addCooldown;
  @BuiltValueEnumConst(wireName: r'switch-to-enter')
  static const TuningSuggestionKindEnum switchToEnter =
      _$tuningSuggestionKindEnum_switchToEnter;
  @BuiltValueEnumConst(wireName: r'add-edge-min-interval')
  static const TuningSuggestionKindEnum addEdgeMinInterval =
      _$tuningSuggestionKindEnum_addEdgeMinInterval;
  @BuiltValueEnumConst(wireName: r'shrink-geofence')
  static const TuningSuggestionKindEnum shrinkGeofence =
      _$tuningSuggestionKindEnum_shrinkGeofence;
  @BuiltValueEnumConst(wireName: r'lower-anomaly-sensitivity')
  static const TuningSuggestionKindEnum lowerAnomalySensitivity =
      _$tuningSuggestionKindEnum_lowerAnomalySensitivity;
  @BuiltValueEnumConst(wireName: r'ACTIVE_WINDOW')
  static const TuningSuggestionKindEnum ACTIVE_WINDOW =
      _$tuningSuggestionKindEnum_ACTIVE_WINDOW;
  @BuiltValueEnumConst(wireName: r'SEVERITY_UP')
  static const TuningSuggestionKindEnum SEVERITY_UP =
      _$tuningSuggestionKindEnum_SEVERITY_UP;
  @BuiltValueEnumConst(wireName: r'SEVERITY_DOWN')
  static const TuningSuggestionKindEnum SEVERITY_DOWN =
      _$tuningSuggestionKindEnum_SEVERITY_DOWN;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TuningSuggestionKindEnum unknownDefaultOpenApi =
      _$tuningSuggestionKindEnum_unknownDefaultOpenApi;

  static Serializer<TuningSuggestionKindEnum> get serializer =>
      _$tuningSuggestionKindEnumSerializer;

  const TuningSuggestionKindEnum._(String name) : super(name);

  static BuiltSet<TuningSuggestionKindEnum> get values =>
      _$tuningSuggestionKindEnumValues;
  static TuningSuggestionKindEnum valueOf(String name) =>
      _$tuningSuggestionKindEnumValueOf(name);
}

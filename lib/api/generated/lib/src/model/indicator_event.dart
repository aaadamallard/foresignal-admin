//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indicator_event.g.dart';

/// SSE payload for `indicator.observed|absent` (topic `hypotheses`)
///
/// Properties:
/// * [indicatorId] - ULID identifier
/// * [setId] - ULID identifier
/// * [description]
/// * [signalFamily]
/// * [state]
/// * [previousState]
/// * [evidence]
/// * [revisionId] - ULID identifier
/// * [private]
/// * [at]
@BuiltValue()
abstract class IndicatorEvent
    implements Built<IndicatorEvent, IndicatorEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'indicatorId')
  String get indicatorId;

  /// ULID identifier
  @BuiltValueField(wireName: r'setId')
  String get setId;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'signalFamily')
  String? get signalFamily;

  @BuiltValueField(wireName: r'state')
  IndicatorEventStateEnum get state;
  // enum stateEnum {  pending,  emerging,  observed,  absent,  unknown-coverage,  retired,  reported,  };

  @BuiltValueField(wireName: r'previousState')
  IndicatorEventPreviousStateEnum? get previousState;
  // enum previousStateEnum {  pending,  emerging,  observed,  absent,  unknown-coverage,  retired,  reported,  };

  @BuiltValueField(wireName: r'evidence')
  JsonObject? get evidence;

  /// ULID identifier
  @BuiltValueField(wireName: r'revisionId')
  String? get revisionId;

  @BuiltValueField(wireName: r'private')
  bool? get private;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  IndicatorEvent._();

  factory IndicatorEvent([void updates(IndicatorEventBuilder b)]) =
      _$IndicatorEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndicatorEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndicatorEvent> get serializer =>
      _$IndicatorEventSerializer();
}

class _$IndicatorEventSerializer
    implements PrimitiveSerializer<IndicatorEvent> {
  @override
  final Iterable<Type> types = const [IndicatorEvent, _$IndicatorEvent];

  @override
  final String wireName = r'IndicatorEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndicatorEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'indicatorId';
    yield serializers.serialize(
      object.indicatorId,
      specifiedType: const FullType(String),
    );
    yield r'setId';
    yield serializers.serialize(
      object.setId,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.signalFamily != null) {
      yield r'signalFamily';
      yield serializers.serialize(
        object.signalFamily,
        specifiedType: const FullType(String),
      );
    }
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(IndicatorEventStateEnum),
    );
    if (object.previousState != null) {
      yield r'previousState';
      yield serializers.serialize(
        object.previousState,
        specifiedType: const FullType(IndicatorEventPreviousStateEnum),
      );
    }
    if (object.evidence != null) {
      yield r'evidence';
      yield serializers.serialize(
        object.evidence,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.revisionId != null) {
      yield r'revisionId';
      yield serializers.serialize(
        object.revisionId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IndicatorEvent object, {
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
    required IndicatorEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'indicatorId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.indicatorId = valueDes;
          break;
        case r'setId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.setId = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'signalFamily':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.signalFamily = valueDes;
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IndicatorEventStateEnum),
                  )
                  as IndicatorEventStateEnum;
          result.state = valueDes;
          break;
        case r'previousState':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IndicatorEventPreviousStateEnum,
                    ),
                  )
                  as IndicatorEventPreviousStateEnum?;
          if (valueDes == null) continue;
          result.previousState = valueDes;
          break;
        case r'evidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.evidence = valueDes;
          break;
        case r'revisionId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.revisionId = valueDes;
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndicatorEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndicatorEventBuilder();
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

class IndicatorEventStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const IndicatorEventStateEnum pending =
      _$indicatorEventStateEnum_pending;
  @BuiltValueEnumConst(wireName: r'emerging')
  static const IndicatorEventStateEnum emerging =
      _$indicatorEventStateEnum_emerging;
  @BuiltValueEnumConst(wireName: r'observed')
  static const IndicatorEventStateEnum observed =
      _$indicatorEventStateEnum_observed;
  @BuiltValueEnumConst(wireName: r'absent')
  static const IndicatorEventStateEnum absent =
      _$indicatorEventStateEnum_absent;
  @BuiltValueEnumConst(wireName: r'unknown-coverage')
  static const IndicatorEventStateEnum unknownCoverage =
      _$indicatorEventStateEnum_unknownCoverage;
  @BuiltValueEnumConst(wireName: r'retired')
  static const IndicatorEventStateEnum retired =
      _$indicatorEventStateEnum_retired;
  @BuiltValueEnumConst(wireName: r'reported')
  static const IndicatorEventStateEnum reported =
      _$indicatorEventStateEnum_reported;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IndicatorEventStateEnum unknownDefaultOpenApi =
      _$indicatorEventStateEnum_unknownDefaultOpenApi;

  static Serializer<IndicatorEventStateEnum> get serializer =>
      _$indicatorEventStateEnumSerializer;

  const IndicatorEventStateEnum._(String name) : super(name);

  static BuiltSet<IndicatorEventStateEnum> get values =>
      _$indicatorEventStateEnumValues;
  static IndicatorEventStateEnum valueOf(String name) =>
      _$indicatorEventStateEnumValueOf(name);
}

class IndicatorEventPreviousStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const IndicatorEventPreviousStateEnum pending =
      _$indicatorEventPreviousStateEnum_pending;
  @BuiltValueEnumConst(wireName: r'emerging')
  static const IndicatorEventPreviousStateEnum emerging =
      _$indicatorEventPreviousStateEnum_emerging;
  @BuiltValueEnumConst(wireName: r'observed')
  static const IndicatorEventPreviousStateEnum observed =
      _$indicatorEventPreviousStateEnum_observed;
  @BuiltValueEnumConst(wireName: r'absent')
  static const IndicatorEventPreviousStateEnum absent =
      _$indicatorEventPreviousStateEnum_absent;
  @BuiltValueEnumConst(wireName: r'unknown-coverage')
  static const IndicatorEventPreviousStateEnum unknownCoverage =
      _$indicatorEventPreviousStateEnum_unknownCoverage;
  @BuiltValueEnumConst(wireName: r'retired')
  static const IndicatorEventPreviousStateEnum retired =
      _$indicatorEventPreviousStateEnum_retired;
  @BuiltValueEnumConst(wireName: r'reported')
  static const IndicatorEventPreviousStateEnum reported =
      _$indicatorEventPreviousStateEnum_reported;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IndicatorEventPreviousStateEnum unknownDefaultOpenApi =
      _$indicatorEventPreviousStateEnum_unknownDefaultOpenApi;

  static Serializer<IndicatorEventPreviousStateEnum> get serializer =>
      _$indicatorEventPreviousStateEnumSerializer;

  const IndicatorEventPreviousStateEnum._(String name) : super(name);

  static BuiltSet<IndicatorEventPreviousStateEnum> get values =>
      _$indicatorEventPreviousStateEnumValues;
  static IndicatorEventPreviousStateEnum valueOf(String name) =>
      _$indicatorEventPreviousStateEnumValueOf(name);
}

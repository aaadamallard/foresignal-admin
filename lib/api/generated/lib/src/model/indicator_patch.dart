//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/indicator_likelihood.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/indicator_signal.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indicator_patch.g.dart';

/// JSON merge patch for an indicator; signal edits update its watch rule
///
/// Properties:
/// * [description]
/// * [signal]
/// * [signalFamily]
/// * [credibility]
/// * [relevance]
/// * [expectedBy]
/// * [lr] - Per hypothesis id (or label when created with its set)
/// * [absenceLr] - Optional absence LR overrides per hypothesis id
/// * [state] - Manual indicators only: record an observation or absence
/// * [observedEvidence]
@BuiltValue()
abstract class IndicatorPatch
    implements Built<IndicatorPatch, IndicatorPatchBuilder> {
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'signal')
  IndicatorSignal? get signal;

  @BuiltValueField(wireName: r'signalFamily')
  String? get signalFamily;

  @BuiltValueField(wireName: r'credibility')
  IndicatorPatchCredibilityEnum? get credibility;
  // enum credibilityEnum {  H,  M,  L,  };

  @BuiltValueField(wireName: r'relevance')
  IndicatorPatchRelevanceEnum? get relevance;
  // enum relevanceEnum {  H,  M,  L,  };

  @BuiltValueField(wireName: r'expectedBy')
  DateTime? get expectedBy;

  /// Per hypothesis id (or label when created with its set)
  @BuiltValueField(wireName: r'lr')
  BuiltMap<String, IndicatorLikelihood>? get lr;

  /// Optional absence LR overrides per hypothesis id
  @BuiltValueField(wireName: r'absenceLr')
  BuiltMap<String, num>? get absenceLr;

  /// Manual indicators only: record an observation or absence
  @BuiltValueField(wireName: r'state')
  IndicatorPatchStateEnum? get state;
  // enum stateEnum {  observed,  absent,  };

  @BuiltValueField(wireName: r'observedEvidence')
  JsonObject? get observedEvidence;

  IndicatorPatch._();

  factory IndicatorPatch([void updates(IndicatorPatchBuilder b)]) =
      _$IndicatorPatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndicatorPatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndicatorPatch> get serializer =>
      _$IndicatorPatchSerializer();
}

class _$IndicatorPatchSerializer
    implements PrimitiveSerializer<IndicatorPatch> {
  @override
  final Iterable<Type> types = const [IndicatorPatch, _$IndicatorPatch];

  @override
  final String wireName = r'IndicatorPatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndicatorPatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.signal != null) {
      yield r'signal';
      yield serializers.serialize(
        object.signal,
        specifiedType: const FullType(IndicatorSignal),
      );
    }
    if (object.signalFamily != null) {
      yield r'signalFamily';
      yield serializers.serialize(
        object.signalFamily,
        specifiedType: const FullType(String),
      );
    }
    if (object.credibility != null) {
      yield r'credibility';
      yield serializers.serialize(
        object.credibility,
        specifiedType: const FullType(IndicatorPatchCredibilityEnum),
      );
    }
    if (object.relevance != null) {
      yield r'relevance';
      yield serializers.serialize(
        object.relevance,
        specifiedType: const FullType(IndicatorPatchRelevanceEnum),
      );
    }
    if (object.expectedBy != null) {
      yield r'expectedBy';
      yield serializers.serialize(
        object.expectedBy,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lr != null) {
      yield r'lr';
      yield serializers.serialize(
        object.lr,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(IndicatorLikelihood),
        ]),
      );
    }
    if (object.absenceLr != null) {
      yield r'absenceLr';
      yield serializers.serialize(
        object.absenceLr,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(num),
        ]),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(IndicatorPatchStateEnum),
      );
    }
    if (object.observedEvidence != null) {
      yield r'observedEvidence';
      yield serializers.serialize(
        object.observedEvidence,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndicatorPatch object, {
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
    required IndicatorPatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'signal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(IndicatorSignal),
                  )
                  as IndicatorSignal?;
          if (valueDes == null) continue;
          result.signal.replace(valueDes);
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
        case r'credibility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IndicatorPatchCredibilityEnum,
                    ),
                  )
                  as IndicatorPatchCredibilityEnum?;
          if (valueDes == null) continue;
          result.credibility = valueDes;
          break;
        case r'relevance':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IndicatorPatchRelevanceEnum,
                    ),
                  )
                  as IndicatorPatchRelevanceEnum?;
          if (valueDes == null) continue;
          result.relevance = valueDes;
          break;
        case r'expectedBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.expectedBy = valueDes;
          break;
        case r'lr':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(IndicatorLikelihood),
                    ]),
                  )
                  as BuiltMap<String, IndicatorLikelihood>?;
          if (valueDes == null) continue;
          result.lr.replace(valueDes);
          break;
        case r'absenceLr':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(num),
                    ]),
                  )
                  as BuiltMap<String, num>?;
          if (valueDes == null) continue;
          result.absenceLr.replace(valueDes);
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IndicatorPatchStateEnum,
                    ),
                  )
                  as IndicatorPatchStateEnum?;
          if (valueDes == null) continue;
          result.state = valueDes;
          break;
        case r'observedEvidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.observedEvidence = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndicatorPatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndicatorPatchBuilder();
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

class IndicatorPatchCredibilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'H')
  static const IndicatorPatchCredibilityEnum H =
      _$indicatorPatchCredibilityEnum_H;
  @BuiltValueEnumConst(wireName: r'M')
  static const IndicatorPatchCredibilityEnum M =
      _$indicatorPatchCredibilityEnum_M;
  @BuiltValueEnumConst(wireName: r'L')
  static const IndicatorPatchCredibilityEnum L =
      _$indicatorPatchCredibilityEnum_L;

  static Serializer<IndicatorPatchCredibilityEnum> get serializer =>
      _$indicatorPatchCredibilityEnumSerializer;

  const IndicatorPatchCredibilityEnum._(String name) : super(name);

  static BuiltSet<IndicatorPatchCredibilityEnum> get values =>
      _$indicatorPatchCredibilityEnumValues;
  static IndicatorPatchCredibilityEnum valueOf(String name) =>
      _$indicatorPatchCredibilityEnumValueOf(name);
}

class IndicatorPatchRelevanceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'H')
  static const IndicatorPatchRelevanceEnum H = _$indicatorPatchRelevanceEnum_H;
  @BuiltValueEnumConst(wireName: r'M')
  static const IndicatorPatchRelevanceEnum M = _$indicatorPatchRelevanceEnum_M;
  @BuiltValueEnumConst(wireName: r'L')
  static const IndicatorPatchRelevanceEnum L = _$indicatorPatchRelevanceEnum_L;

  static Serializer<IndicatorPatchRelevanceEnum> get serializer =>
      _$indicatorPatchRelevanceEnumSerializer;

  const IndicatorPatchRelevanceEnum._(String name) : super(name);

  static BuiltSet<IndicatorPatchRelevanceEnum> get values =>
      _$indicatorPatchRelevanceEnumValues;
  static IndicatorPatchRelevanceEnum valueOf(String name) =>
      _$indicatorPatchRelevanceEnumValueOf(name);
}

/// Manual indicators only: record an observation or absence
class IndicatorPatchStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'observed')
  static const IndicatorPatchStateEnum observed =
      _$indicatorPatchStateEnum_observed;
  @BuiltValueEnumConst(wireName: r'absent')
  static const IndicatorPatchStateEnum absent =
      _$indicatorPatchStateEnum_absent;

  static Serializer<IndicatorPatchStateEnum> get serializer =>
      _$indicatorPatchStateEnumSerializer;

  const IndicatorPatchStateEnum._(String name) : super(name);

  static BuiltSet<IndicatorPatchStateEnum> get values =>
      _$indicatorPatchStateEnumValues;
  static IndicatorPatchStateEnum valueOf(String name) =>
      _$indicatorPatchStateEnumValueOf(name);
}

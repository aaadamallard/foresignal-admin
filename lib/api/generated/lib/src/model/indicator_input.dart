//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/indicator_likelihood.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/indicator_signal.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indicator_input.g.dart';

/// A new indicator
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
@BuiltValue()
abstract class IndicatorInput
    implements Built<IndicatorInput, IndicatorInputBuilder> {
  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'signal')
  IndicatorSignal get signal;

  @BuiltValueField(wireName: r'signalFamily')
  String get signalFamily;

  @BuiltValueField(wireName: r'credibility')
  IndicatorInputCredibilityEnum get credibility;
  // enum credibilityEnum {  H,  M,  L,  };

  @BuiltValueField(wireName: r'relevance')
  IndicatorInputRelevanceEnum get relevance;
  // enum relevanceEnum {  H,  M,  L,  };

  @BuiltValueField(wireName: r'expectedBy')
  DateTime? get expectedBy;

  /// Per hypothesis id (or label when created with its set)
  @BuiltValueField(wireName: r'lr')
  BuiltMap<String, IndicatorLikelihood> get lr;

  /// Optional absence LR overrides per hypothesis id
  @BuiltValueField(wireName: r'absenceLr')
  BuiltMap<String, num>? get absenceLr;

  IndicatorInput._();

  factory IndicatorInput([void updates(IndicatorInputBuilder b)]) =
      _$IndicatorInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndicatorInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndicatorInput> get serializer =>
      _$IndicatorInputSerializer();
}

class _$IndicatorInputSerializer
    implements PrimitiveSerializer<IndicatorInput> {
  @override
  final Iterable<Type> types = const [IndicatorInput, _$IndicatorInput];

  @override
  final String wireName = r'IndicatorInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndicatorInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'signal';
    yield serializers.serialize(
      object.signal,
      specifiedType: const FullType(IndicatorSignal),
    );
    yield r'signalFamily';
    yield serializers.serialize(
      object.signalFamily,
      specifiedType: const FullType(String),
    );
    yield r'credibility';
    yield serializers.serialize(
      object.credibility,
      specifiedType: const FullType(IndicatorInputCredibilityEnum),
    );
    yield r'relevance';
    yield serializers.serialize(
      object.relevance,
      specifiedType: const FullType(IndicatorInputRelevanceEnum),
    );
    if (object.expectedBy != null) {
      yield r'expectedBy';
      yield serializers.serialize(
        object.expectedBy,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'lr';
    yield serializers.serialize(
      object.lr,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(IndicatorLikelihood),
      ]),
    );
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
  }

  @override
  Object serialize(
    Serializers serializers,
    IndicatorInput object, {
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
    required IndicatorInputBuilder result,
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
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.description = valueDes;
          break;
        case r'signal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IndicatorSignal),
                  )
                  as IndicatorSignal;
          result.signal.replace(valueDes);
          break;
        case r'signalFamily':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.signalFamily = valueDes;
          break;
        case r'credibility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      IndicatorInputCredibilityEnum,
                    ),
                  )
                  as IndicatorInputCredibilityEnum;
          result.credibility = valueDes;
          break;
        case r'relevance':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IndicatorInputRelevanceEnum),
                  )
                  as IndicatorInputRelevanceEnum;
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
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(IndicatorLikelihood),
                    ]),
                  )
                  as BuiltMap<String, IndicatorLikelihood>;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndicatorInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndicatorInputBuilder();
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

class IndicatorInputCredibilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'H')
  static const IndicatorInputCredibilityEnum H =
      _$indicatorInputCredibilityEnum_H;
  @BuiltValueEnumConst(wireName: r'M')
  static const IndicatorInputCredibilityEnum M =
      _$indicatorInputCredibilityEnum_M;
  @BuiltValueEnumConst(wireName: r'L')
  static const IndicatorInputCredibilityEnum L =
      _$indicatorInputCredibilityEnum_L;

  static Serializer<IndicatorInputCredibilityEnum> get serializer =>
      _$indicatorInputCredibilityEnumSerializer;

  const IndicatorInputCredibilityEnum._(String name) : super(name);

  static BuiltSet<IndicatorInputCredibilityEnum> get values =>
      _$indicatorInputCredibilityEnumValues;
  static IndicatorInputCredibilityEnum valueOf(String name) =>
      _$indicatorInputCredibilityEnumValueOf(name);
}

class IndicatorInputRelevanceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'H')
  static const IndicatorInputRelevanceEnum H = _$indicatorInputRelevanceEnum_H;
  @BuiltValueEnumConst(wireName: r'M')
  static const IndicatorInputRelevanceEnum M = _$indicatorInputRelevanceEnum_M;
  @BuiltValueEnumConst(wireName: r'L')
  static const IndicatorInputRelevanceEnum L = _$indicatorInputRelevanceEnum_L;

  static Serializer<IndicatorInputRelevanceEnum> get serializer =>
      _$indicatorInputRelevanceEnumSerializer;

  const IndicatorInputRelevanceEnum._(String name) : super(name);

  static BuiltSet<IndicatorInputRelevanceEnum> get values =>
      _$indicatorInputRelevanceEnumValues;
  static IndicatorInputRelevanceEnum valueOf(String name) =>
      _$indicatorInputRelevanceEnumValueOf(name);
}

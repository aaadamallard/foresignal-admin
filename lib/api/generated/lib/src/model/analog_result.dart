//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/analog_result_outcome_distribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/analog.dart';
import 'package:foresignal_api/src/model/analog_result_signature.dart';
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:foresignal_api/src/model/analog_result_target.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analog_result.g.dart';

/// Analog search result with the count found and an outcome distribution shrunk toward the base rate
///
/// Properties:
/// * [target]
/// * [k]
/// * [countFound] - Analogs found before truncation to k
/// * [method]
/// * [methodNote] - e.g. `feature similarity only: embeddings unavailable`
/// * [signature]
/// * [analogs]
/// * [outcomeDistribution]
/// * [caveats]
/// * [detector]
/// * [manifestId] - ULID identifier
@BuiltValue()
abstract class AnalogResult
    implements Built<AnalogResult, AnalogResultBuilder> {
  @BuiltValueField(wireName: r'target')
  AnalogResultTarget get target;

  @BuiltValueField(wireName: r'k')
  int get k;

  /// Analogs found before truncation to k
  @BuiltValueField(wireName: r'countFound')
  int get countFound;

  @BuiltValueField(wireName: r'method')
  AnalogResultMethodEnum get method;
  // enum methodEnum {  fused,  feature-only,  };

  /// e.g. `feature similarity only: embeddings unavailable`
  @BuiltValueField(wireName: r'methodNote')
  String? get methodNote;

  @BuiltValueField(wireName: r'signature')
  AnalogResultSignature? get signature;

  @BuiltValueField(wireName: r'analogs')
  BuiltList<Analog> get analogs;

  @BuiltValueField(wireName: r'outcomeDistribution')
  AnalogResultOutcomeDistribution? get outcomeDistribution;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat> get caveats;

  @BuiltValueField(wireName: r'detector')
  DetectorRef get detector;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String get manifestId;

  AnalogResult._();

  factory AnalogResult([void updates(AnalogResultBuilder b)]) = _$AnalogResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalogResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalogResult> get serializer => _$AnalogResultSerializer();
}

class _$AnalogResultSerializer implements PrimitiveSerializer<AnalogResult> {
  @override
  final Iterable<Type> types = const [AnalogResult, _$AnalogResult];

  @override
  final String wireName = r'AnalogResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalogResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'target';
    yield serializers.serialize(
      object.target,
      specifiedType: const FullType(AnalogResultTarget),
    );
    yield r'k';
    yield serializers.serialize(
      object.k,
      specifiedType: const FullType(int),
    );
    yield r'countFound';
    yield serializers.serialize(
      object.countFound,
      specifiedType: const FullType(int),
    );
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(AnalogResultMethodEnum),
    );
    if (object.methodNote != null) {
      yield r'methodNote';
      yield serializers.serialize(
        object.methodNote,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.signature != null) {
      yield r'signature';
      yield serializers.serialize(
        object.signature,
        specifiedType: const FullType.nullable(AnalogResultSignature),
      );
    }
    yield r'analogs';
    yield serializers.serialize(
      object.analogs,
      specifiedType: const FullType(BuiltList, [FullType(Analog)]),
    );
    if (object.outcomeDistribution != null) {
      yield r'outcomeDistribution';
      yield serializers.serialize(
        object.outcomeDistribution,
        specifiedType: const FullType.nullable(AnalogResultOutcomeDistribution),
      );
    }
    yield r'caveats';
    yield serializers.serialize(
      object.caveats,
      specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
    );
    yield r'detector';
    yield serializers.serialize(
      object.detector,
      specifiedType: const FullType(DetectorRef),
    );
    yield r'manifestId';
    yield serializers.serialize(
      object.manifestId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalogResult object, {
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
    required AnalogResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'target':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnalogResultTarget),
          ) as AnalogResultTarget;
          result.target.replace(valueDes);
          break;
        case r'k':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.k = valueDes;
          break;
        case r'countFound':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.countFound = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnalogResultMethodEnum),
          ) as AnalogResultMethodEnum;
          result.method = valueDes;
          break;
        case r'methodNote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.methodNote = valueDes;
          break;
        case r'signature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AnalogResultSignature),
          ) as AnalogResultSignature?;
          if (valueDes == null) continue;
          result.signature.replace(valueDes);
          break;
        case r'analogs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Analog)]),
          ) as BuiltList<Analog>;
          result.analogs.replace(valueDes);
          break;
        case r'outcomeDistribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(AnalogResultOutcomeDistribution),
          ) as AnalogResultOutcomeDistribution?;
          if (valueDes == null) continue;
          result.outcomeDistribution.replace(valueDes);
          break;
        case r'caveats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
          ) as BuiltList<Caveat>;
          result.caveats.replace(valueDes);
          break;
        case r'detector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DetectorRef),
          ) as DetectorRef;
          result.detector.replace(valueDes);
          break;
        case r'manifestId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.manifestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalogResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalogResultBuilder();
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

class AnalogResultMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'fused')
  static const AnalogResultMethodEnum fused = _$analogResultMethodEnum_fused;
  @BuiltValueEnumConst(wireName: r'feature-only')
  static const AnalogResultMethodEnum featureOnly =
      _$analogResultMethodEnum_featureOnly;

  static Serializer<AnalogResultMethodEnum> get serializer =>
      _$analogResultMethodEnumSerializer;

  const AnalogResultMethodEnum._(String name) : super(name);

  static BuiltSet<AnalogResultMethodEnum> get values =>
      _$analogResultMethodEnumValues;
  static AnalogResultMethodEnum valueOf(String name) =>
      _$analogResultMethodEnumValueOf(name);
}

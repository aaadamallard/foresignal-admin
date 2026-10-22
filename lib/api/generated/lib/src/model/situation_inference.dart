//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_inference.g.dart';

/// Inference by named, versioned components: status, severity and the deterministic summary
///
/// Properties:
/// * [summary]
/// * [summaryTemplateVersion]
/// * [statusBasis] - Why the status is what it is, e.g. `3 signal families, 2 independent evidence groups`
/// * [severityBasis] - Max core-member severity, or the override and who set it
/// * [linker]
/// * [manifestId] - ULID identifier
@BuiltValue()
abstract class SituationInference
    implements Built<SituationInference, SituationInferenceBuilder> {
  @BuiltValueField(wireName: r'summary')
  String get summary;

  @BuiltValueField(wireName: r'summaryTemplateVersion')
  String? get summaryTemplateVersion;

  /// Why the status is what it is, e.g. `3 signal families, 2 independent evidence groups`
  @BuiltValueField(wireName: r'statusBasis')
  String get statusBasis;

  /// Max core-member severity, or the override and who set it
  @BuiltValueField(wireName: r'severityBasis')
  String get severityBasis;

  @BuiltValueField(wireName: r'linker')
  DetectorRef? get linker;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  SituationInference._();

  factory SituationInference([void updates(SituationInferenceBuilder b)]) =
      _$SituationInference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationInferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationInference> get serializer =>
      _$SituationInferenceSerializer();
}

class _$SituationInferenceSerializer
    implements PrimitiveSerializer<SituationInference> {
  @override
  final Iterable<Type> types = const [SituationInference, _$SituationInference];

  @override
  final String wireName = r'SituationInference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationInference object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'summary';
    yield serializers.serialize(
      object.summary,
      specifiedType: const FullType(String),
    );
    if (object.summaryTemplateVersion != null) {
      yield r'summaryTemplateVersion';
      yield serializers.serialize(
        object.summaryTemplateVersion,
        specifiedType: const FullType(String),
      );
    }
    yield r'statusBasis';
    yield serializers.serialize(
      object.statusBasis,
      specifiedType: const FullType(String),
    );
    yield r'severityBasis';
    yield serializers.serialize(
      object.severityBasis,
      specifiedType: const FullType(String),
    );
    if (object.linker != null) {
      yield r'linker';
      yield serializers.serialize(
        object.linker,
        specifiedType: const FullType(DetectorRef),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationInference object, {
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
    required SituationInferenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.summary = valueDes;
          break;
        case r'summaryTemplateVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.summaryTemplateVersion = valueDes;
          break;
        case r'statusBasis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statusBasis = valueDes;
          break;
        case r'severityBasis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.severityBasis = valueDes;
          break;
        case r'linker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DetectorRef),
          ) as DetectorRef?;
          if (valueDes == null) continue;
          result.linker.replace(valueDes);
          break;
        case r'manifestId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
  SituationInference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationInferenceBuilder();
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

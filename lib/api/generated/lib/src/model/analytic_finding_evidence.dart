//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analytic_finding_evidence.g.dart';

/// Evidence: the series and pinned members the finding rests on
///
/// Properties:
/// * [seriesRefs]
/// * [members] - Pinned refs (records with `@seq`, intel events, situations, findings)
/// * [valuesWithheld] - Raw values of `LOCAL_ONLY` series withheld; standardised statistics remain
@BuiltValue()
abstract class AnalyticFindingEvidence
    implements Built<AnalyticFindingEvidence, AnalyticFindingEvidenceBuilder> {
  @BuiltValueField(wireName: r'seriesRefs')
  BuiltList<String> get seriesRefs;

  /// Pinned refs (records with `@seq`, intel events, situations, findings)
  @BuiltValueField(wireName: r'members')
  BuiltList<String> get members;

  /// Raw values of `LOCAL_ONLY` series withheld; standardised statistics remain
  @BuiltValueField(wireName: r'valuesWithheld')
  bool? get valuesWithheld;

  AnalyticFindingEvidence._();

  factory AnalyticFindingEvidence(
          [void updates(AnalyticFindingEvidenceBuilder b)]) =
      _$AnalyticFindingEvidence;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalyticFindingEvidenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalyticFindingEvidence> get serializer =>
      _$AnalyticFindingEvidenceSerializer();
}

class _$AnalyticFindingEvidenceSerializer
    implements PrimitiveSerializer<AnalyticFindingEvidence> {
  @override
  final Iterable<Type> types = const [
    AnalyticFindingEvidence,
    _$AnalyticFindingEvidence
  ];

  @override
  final String wireName = r'AnalyticFindingEvidence';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalyticFindingEvidence object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'seriesRefs';
    yield serializers.serialize(
      object.seriesRefs,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'members';
    yield serializers.serialize(
      object.members,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.valuesWithheld != null) {
      yield r'valuesWithheld';
      yield serializers.serialize(
        object.valuesWithheld,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalyticFindingEvidence object, {
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
    required AnalyticFindingEvidenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'seriesRefs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.seriesRefs.replace(valueDes);
          break;
        case r'members':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.members.replace(valueDes);
          break;
        case r'valuesWithheld':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.valuesWithheld = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalyticFindingEvidence deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalyticFindingEvidenceBuilder();
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

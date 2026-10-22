//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/situation_link_decision.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_linker_test_result.g.dart';

/// Would-be links from a linker dry run; nothing is stored
///
/// Properties:
/// * [fromSeq]
/// * [toSeq]
/// * [linkerVersion]
/// * [inputsConsidered]
/// * [decisions]
/// * [truncated] - True when the decision list was capped
@BuiltValue()
abstract class SituationLinkerTestResult
    implements
        Built<SituationLinkerTestResult, SituationLinkerTestResultBuilder> {
  @BuiltValueField(wireName: r'fromSeq')
  int get fromSeq;

  @BuiltValueField(wireName: r'toSeq')
  int get toSeq;

  @BuiltValueField(wireName: r'linkerVersion')
  String get linkerVersion;

  @BuiltValueField(wireName: r'inputsConsidered')
  int? get inputsConsidered;

  @BuiltValueField(wireName: r'decisions')
  BuiltList<SituationLinkDecision> get decisions;

  /// True when the decision list was capped
  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  SituationLinkerTestResult._();

  factory SituationLinkerTestResult([
    void updates(SituationLinkerTestResultBuilder b),
  ]) = _$SituationLinkerTestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationLinkerTestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationLinkerTestResult> get serializer =>
      _$SituationLinkerTestResultSerializer();
}

class _$SituationLinkerTestResultSerializer
    implements PrimitiveSerializer<SituationLinkerTestResult> {
  @override
  final Iterable<Type> types = const [
    SituationLinkerTestResult,
    _$SituationLinkerTestResult,
  ];

  @override
  final String wireName = r'SituationLinkerTestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationLinkerTestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'fromSeq';
    yield serializers.serialize(
      object.fromSeq,
      specifiedType: const FullType(int),
    );
    yield r'toSeq';
    yield serializers.serialize(
      object.toSeq,
      specifiedType: const FullType(int),
    );
    yield r'linkerVersion';
    yield serializers.serialize(
      object.linkerVersion,
      specifiedType: const FullType(String),
    );
    if (object.inputsConsidered != null) {
      yield r'inputsConsidered';
      yield serializers.serialize(
        object.inputsConsidered,
        specifiedType: const FullType(int),
      );
    }
    yield r'decisions';
    yield serializers.serialize(
      object.decisions,
      specifiedType: const FullType(BuiltList, [
        FullType(SituationLinkDecision),
      ]),
    );
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationLinkerTestResult object, {
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
    required SituationLinkerTestResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fromSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.fromSeq = valueDes;
          break;
        case r'toSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.toSeq = valueDes;
          break;
        case r'linkerVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.linkerVersion = valueDes;
          break;
        case r'inputsConsidered':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.inputsConsidered = valueDes;
          break;
        case r'decisions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SituationLinkDecision),
                    ]),
                  )
                  as BuiltList<SituationLinkDecision>;
          result.decisions.replace(valueDes);
          break;
        case r'truncated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.truncated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationLinkerTestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationLinkerTestResultBuilder();
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

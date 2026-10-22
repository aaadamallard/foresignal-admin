//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/icd_term.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_set_event_band_changes_inner.g.dart';

/// Band change
///
/// Properties:
/// * [hypothesisId] - ULID identifier
/// * [label]
/// * [fromTerm]
/// * [toTerm]
/// * [probability]
@BuiltValue()
abstract class HypothesisSetEventBandChangesInner
    implements
        Built<HypothesisSetEventBandChangesInner,
            HypothesisSetEventBandChangesInnerBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'hypothesisId')
  String get hypothesisId;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'fromTerm')
  IcdTerm get fromTerm;
  // enum fromTermEnum {  almost no chance,  very unlikely,  unlikely,  roughly even chance,  likely,  very likely,  almost certain,  };

  @BuiltValueField(wireName: r'toTerm')
  IcdTerm get toTerm;
  // enum toTermEnum {  almost no chance,  very unlikely,  unlikely,  roughly even chance,  likely,  very likely,  almost certain,  };

  @BuiltValueField(wireName: r'probability')
  num get probability;

  HypothesisSetEventBandChangesInner._();

  factory HypothesisSetEventBandChangesInner(
          [void updates(HypothesisSetEventBandChangesInnerBuilder b)]) =
      _$HypothesisSetEventBandChangesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisSetEventBandChangesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisSetEventBandChangesInner> get serializer =>
      _$HypothesisSetEventBandChangesInnerSerializer();
}

class _$HypothesisSetEventBandChangesInnerSerializer
    implements PrimitiveSerializer<HypothesisSetEventBandChangesInner> {
  @override
  final Iterable<Type> types = const [
    HypothesisSetEventBandChangesInner,
    _$HypothesisSetEventBandChangesInner
  ];

  @override
  final String wireName = r'HypothesisSetEventBandChangesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisSetEventBandChangesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'hypothesisId';
    yield serializers.serialize(
      object.hypothesisId,
      specifiedType: const FullType(String),
    );
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    yield r'fromTerm';
    yield serializers.serialize(
      object.fromTerm,
      specifiedType: const FullType(IcdTerm),
    );
    yield r'toTerm';
    yield serializers.serialize(
      object.toTerm,
      specifiedType: const FullType(IcdTerm),
    );
    yield r'probability';
    yield serializers.serialize(
      object.probability,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetEventBandChangesInner object, {
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
    required HypothesisSetEventBandChangesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hypothesisId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hypothesisId = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'fromTerm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IcdTerm),
          ) as IcdTerm;
          result.fromTerm = valueDes;
          break;
        case r'toTerm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IcdTerm),
          ) as IcdTerm;
          result.toTerm = valueDes;
          break;
        case r'probability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.probability = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisSetEventBandChangesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisSetEventBandChangesInnerBuilder();
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

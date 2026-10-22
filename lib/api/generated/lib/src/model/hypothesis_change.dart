//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/icd_term.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_change.g.dart';

/// Change since the previous revision
///
/// Properties:
/// * [previousProbability]
/// * [previousTerm]
/// * [delta]
/// * [sinceRevisionId] - ULID identifier
@BuiltValue()
abstract class HypothesisChange
    implements Built<HypothesisChange, HypothesisChangeBuilder> {
  @BuiltValueField(wireName: r'previousProbability')
  num get previousProbability;

  @BuiltValueField(wireName: r'previousTerm')
  IcdTerm? get previousTerm;
  // enum previousTermEnum {  almost no chance,  very unlikely,  unlikely,  roughly even chance,  likely,  very likely,  almost certain,  };

  @BuiltValueField(wireName: r'delta')
  num get delta;

  /// ULID identifier
  @BuiltValueField(wireName: r'sinceRevisionId')
  String? get sinceRevisionId;

  HypothesisChange._();

  factory HypothesisChange([void updates(HypothesisChangeBuilder b)]) =
      _$HypothesisChange;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisChangeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisChange> get serializer =>
      _$HypothesisChangeSerializer();
}

class _$HypothesisChangeSerializer
    implements PrimitiveSerializer<HypothesisChange> {
  @override
  final Iterable<Type> types = const [HypothesisChange, _$HypothesisChange];

  @override
  final String wireName = r'HypothesisChange';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisChange object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'previousProbability';
    yield serializers.serialize(
      object.previousProbability,
      specifiedType: const FullType(num),
    );
    if (object.previousTerm != null) {
      yield r'previousTerm';
      yield serializers.serialize(
        object.previousTerm,
        specifiedType: const FullType(IcdTerm),
      );
    }
    yield r'delta';
    yield serializers.serialize(
      object.delta,
      specifiedType: const FullType(num),
    );
    if (object.sinceRevisionId != null) {
      yield r'sinceRevisionId';
      yield serializers.serialize(
        object.sinceRevisionId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisChange object, {
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
    required HypothesisChangeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'previousProbability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.previousProbability = valueDes;
          break;
        case r'previousTerm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(IcdTerm),
          ) as IcdTerm?;
          if (valueDes == null) continue;
          result.previousTerm = valueDes;
          break;
        case r'delta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.delta = valueDes;
          break;
        case r'sinceRevisionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sinceRevisionId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisChange deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisChangeBuilder();
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

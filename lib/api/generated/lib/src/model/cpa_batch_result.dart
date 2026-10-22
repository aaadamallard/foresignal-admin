//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/cpa_result.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/kinematic_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cpa_batch_result.g.dart';

/// Top N CPA results by dcpa (114)
///
/// Properties:
/// * [subject]
/// * [asOf]
/// * [evaluated]
/// * [truncated] - More than 500 candidates matched the filter
/// * [items]
@BuiltValue()
abstract class CpaBatchResult
    implements Built<CpaBatchResult, CpaBatchResultBuilder> {
  @BuiltValueField(wireName: r'subject')
  KinematicState get subject;

  @BuiltValueField(wireName: r'asOf')
  DateTime get asOf;

  @BuiltValueField(wireName: r'evaluated')
  int get evaluated;

  /// More than 500 candidates matched the filter
  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  @BuiltValueField(wireName: r'items')
  BuiltList<CpaResult> get items;

  CpaBatchResult._();

  factory CpaBatchResult([void updates(CpaBatchResultBuilder b)]) =
      _$CpaBatchResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CpaBatchResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CpaBatchResult> get serializer =>
      _$CpaBatchResultSerializer();
}

class _$CpaBatchResultSerializer
    implements PrimitiveSerializer<CpaBatchResult> {
  @override
  final Iterable<Type> types = const [CpaBatchResult, _$CpaBatchResult];

  @override
  final String wireName = r'CpaBatchResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CpaBatchResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'subject';
    yield serializers.serialize(
      object.subject,
      specifiedType: const FullType(KinematicState),
    );
    yield r'asOf';
    yield serializers.serialize(
      object.asOf,
      specifiedType: const FullType(DateTime),
    );
    yield r'evaluated';
    yield serializers.serialize(
      object.evaluated,
      specifiedType: const FullType(int),
    );
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(CpaResult)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CpaBatchResult object, {
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
    required CpaBatchResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'subject':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(KinematicState),
                  )
                  as KinematicState;
          result.subject.replace(valueDes);
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.asOf = valueDes;
          break;
        case r'evaluated':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.evaluated = valueDes;
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
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(CpaResult),
                    ]),
                  )
                  as BuiltList<CpaResult>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CpaBatchResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CpaBatchResultBuilder();
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

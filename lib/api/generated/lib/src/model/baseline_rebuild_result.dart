//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'baseline_rebuild_result.g.dart';

/// Accepted baseline rebuild
///
/// Properties:
/// * [ruleId]
/// * [accepted]
/// * [weeksAvailable]
/// * [backfillFrom]
@BuiltValue()
abstract class BaselineRebuildResult
    implements Built<BaselineRebuildResult, BaselineRebuildResultBuilder> {
  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  @BuiltValueField(wireName: r'accepted')
  bool get accepted;

  @BuiltValueField(wireName: r'weeksAvailable')
  num? get weeksAvailable;

  @BuiltValueField(wireName: r'backfillFrom')
  DateTime? get backfillFrom;

  BaselineRebuildResult._();

  factory BaselineRebuildResult([
    void updates(BaselineRebuildResultBuilder b),
  ]) = _$BaselineRebuildResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BaselineRebuildResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BaselineRebuildResult> get serializer =>
      _$BaselineRebuildResultSerializer();
}

class _$BaselineRebuildResultSerializer
    implements PrimitiveSerializer<BaselineRebuildResult> {
  @override
  final Iterable<Type> types = const [
    BaselineRebuildResult,
    _$BaselineRebuildResult,
  ];

  @override
  final String wireName = r'BaselineRebuildResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaselineRebuildResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    yield r'accepted';
    yield serializers.serialize(
      object.accepted,
      specifiedType: const FullType(bool),
    );
    if (object.weeksAvailable != null) {
      yield r'weeksAvailable';
      yield serializers.serialize(
        object.weeksAvailable,
        specifiedType: const FullType(num),
      );
    }
    if (object.backfillFrom != null) {
      yield r'backfillFrom';
      yield serializers.serialize(
        object.backfillFrom,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BaselineRebuildResult object, {
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
    required BaselineRebuildResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ruleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ruleId = valueDes;
          break;
        case r'accepted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.accepted = valueDes;
          break;
        case r'weeksAvailable':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.weeksAvailable = valueDes;
          break;
        case r'backfillFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.backfillFrom = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BaselineRebuildResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaselineRebuildResultBuilder();
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

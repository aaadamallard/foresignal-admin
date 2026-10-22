//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_merge_input.g.dart';

/// Merge this situation with another; the older id survives
///
/// Properties:
/// * [intoId] - ULID identifier
/// * [version] - Expected version of the path situation
/// * [reason]
@BuiltValue()
abstract class SituationMergeInput
    implements Built<SituationMergeInput, SituationMergeInputBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'intoId')
  String get intoId;

  /// Expected version of the path situation
  @BuiltValueField(wireName: r'version')
  int? get version;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  SituationMergeInput._();

  factory SituationMergeInput([void updates(SituationMergeInputBuilder b)]) =
      _$SituationMergeInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationMergeInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationMergeInput> get serializer =>
      _$SituationMergeInputSerializer();
}

class _$SituationMergeInputSerializer
    implements PrimitiveSerializer<SituationMergeInput> {
  @override
  final Iterable<Type> types = const [
    SituationMergeInput,
    _$SituationMergeInput,
  ];

  @override
  final String wireName = r'SituationMergeInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationMergeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'intoId';
    yield serializers.serialize(
      object.intoId,
      specifiedType: const FullType(String),
    );
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationMergeInput object, {
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
    required SituationMergeInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'intoId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.intoId = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationMergeInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationMergeInputBuilder();
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

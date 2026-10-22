//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'problem_errors_inner.g.dart';

/// ProblemErrorsInner
///
/// Properties:
/// * [field]
/// * [message]
@BuiltValue()
abstract class ProblemErrorsInner
    implements Built<ProblemErrorsInner, ProblemErrorsInnerBuilder> {
  @BuiltValueField(wireName: r'field')
  String? get field;

  @BuiltValueField(wireName: r'message')
  String? get message;

  ProblemErrorsInner._();

  factory ProblemErrorsInner([void updates(ProblemErrorsInnerBuilder b)]) =
      _$ProblemErrorsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProblemErrorsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProblemErrorsInner> get serializer =>
      _$ProblemErrorsInnerSerializer();
}

class _$ProblemErrorsInnerSerializer
    implements PrimitiveSerializer<ProblemErrorsInner> {
  @override
  final Iterable<Type> types = const [ProblemErrorsInner, _$ProblemErrorsInner];

  @override
  final String wireName = r'ProblemErrorsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProblemErrorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.field != null) {
      yield r'field';
      yield serializers.serialize(
        object.field,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProblemErrorsInner object, {
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
    required ProblemErrorsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'field':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.field = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProblemErrorsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProblemErrorsInnerBuilder();
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

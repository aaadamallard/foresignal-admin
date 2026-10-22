//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_set_draft_warnings_inner.g.dart';

/// Validation or lint warning
///
/// Properties:
/// * [code]
/// * [message]
/// * [path]
@BuiltValue()
abstract class HypothesisSetDraftWarningsInner
    implements
        Built<HypothesisSetDraftWarningsInner,
            HypothesisSetDraftWarningsInnerBuilder> {
  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'path')
  String? get path;

  HypothesisSetDraftWarningsInner._();

  factory HypothesisSetDraftWarningsInner(
          [void updates(HypothesisSetDraftWarningsInnerBuilder b)]) =
      _$HypothesisSetDraftWarningsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisSetDraftWarningsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisSetDraftWarningsInner> get serializer =>
      _$HypothesisSetDraftWarningsInnerSerializer();
}

class _$HypothesisSetDraftWarningsInnerSerializer
    implements PrimitiveSerializer<HypothesisSetDraftWarningsInner> {
  @override
  final Iterable<Type> types = const [
    HypothesisSetDraftWarningsInner,
    _$HypothesisSetDraftWarningsInner
  ];

  @override
  final String wireName = r'HypothesisSetDraftWarningsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisSetDraftWarningsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetDraftWarningsInner object, {
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
    required HypothesisSetDraftWarningsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisSetDraftWarningsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisSetDraftWarningsInnerBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_source_pull.g.dart';

/// ExternalSourcePull
///
/// Properties:
/// * [cursor]
/// * [lastPollAt]
/// * [lastError]
@BuiltValue()
abstract class ExternalSourcePull
    implements Built<ExternalSourcePull, ExternalSourcePullBuilder> {
  @BuiltValueField(wireName: r'cursor')
  String? get cursor;

  @BuiltValueField(wireName: r'lastPollAt')
  DateTime? get lastPollAt;

  @BuiltValueField(wireName: r'lastError')
  String? get lastError;

  ExternalSourcePull._();

  factory ExternalSourcePull([void updates(ExternalSourcePullBuilder b)]) =
      _$ExternalSourcePull;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalSourcePullBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalSourcePull> get serializer =>
      _$ExternalSourcePullSerializer();
}

class _$ExternalSourcePullSerializer
    implements PrimitiveSerializer<ExternalSourcePull> {
  @override
  final Iterable<Type> types = const [ExternalSourcePull, _$ExternalSourcePull];

  @override
  final String wireName = r'ExternalSourcePull';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalSourcePull object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cursor != null) {
      yield r'cursor';
      yield serializers.serialize(
        object.cursor,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastPollAt != null) {
      yield r'lastPollAt';
      yield serializers.serialize(
        object.lastPollAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastError != null) {
      yield r'lastError';
      yield serializers.serialize(
        object.lastError,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalSourcePull object, {
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
    required ExternalSourcePullBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cursor = valueDes;
          break;
        case r'lastPollAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastPollAt = valueDes;
          break;
        case r'lastError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastError = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalSourcePull deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalSourcePullBuilder();
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

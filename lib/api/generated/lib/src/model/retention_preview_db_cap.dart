//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'retention_preview_db_cap.g.dart';

/// The database-size cap as the next run would find it; null when it is off
///
/// Properties:
/// * [capBytes]
/// * [sizeBytes]
/// * [exceeded]
/// * [windowDays] - Window the cap has stepped down to, or null
/// * [overwriteOldest]
@BuiltValue()
abstract class RetentionPreviewDbCap
    implements Built<RetentionPreviewDbCap, RetentionPreviewDbCapBuilder> {
  @BuiltValueField(wireName: r'capBytes')
  int? get capBytes;

  @BuiltValueField(wireName: r'sizeBytes')
  int? get sizeBytes;

  @BuiltValueField(wireName: r'exceeded')
  bool? get exceeded;

  /// Window the cap has stepped down to, or null
  @BuiltValueField(wireName: r'windowDays')
  int? get windowDays;

  @BuiltValueField(wireName: r'overwriteOldest')
  bool? get overwriteOldest;

  RetentionPreviewDbCap._();

  factory RetentionPreviewDbCap([
    void updates(RetentionPreviewDbCapBuilder b),
  ]) = _$RetentionPreviewDbCap;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RetentionPreviewDbCapBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RetentionPreviewDbCap> get serializer =>
      _$RetentionPreviewDbCapSerializer();
}

class _$RetentionPreviewDbCapSerializer
    implements PrimitiveSerializer<RetentionPreviewDbCap> {
  @override
  final Iterable<Type> types = const [
    RetentionPreviewDbCap,
    _$RetentionPreviewDbCap,
  ];

  @override
  final String wireName = r'RetentionPreviewDbCap';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RetentionPreviewDbCap object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.capBytes != null) {
      yield r'capBytes';
      yield serializers.serialize(
        object.capBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.sizeBytes != null) {
      yield r'sizeBytes';
      yield serializers.serialize(
        object.sizeBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.exceeded != null) {
      yield r'exceeded';
      yield serializers.serialize(
        object.exceeded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.windowDays != null) {
      yield r'windowDays';
      yield serializers.serialize(
        object.windowDays,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.overwriteOldest != null) {
      yield r'overwriteOldest';
      yield serializers.serialize(
        object.overwriteOldest,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RetentionPreviewDbCap object, {
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
    required RetentionPreviewDbCapBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'capBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.capBytes = valueDes;
          break;
        case r'sizeBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.sizeBytes = valueDes;
          break;
        case r'exceeded':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.exceeded = valueDes;
          break;
        case r'windowDays':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.windowDays = valueDes;
          break;
        case r'overwriteOldest':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.overwriteOldest = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RetentionPreviewDbCap deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetentionPreviewDbCapBuilder();
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

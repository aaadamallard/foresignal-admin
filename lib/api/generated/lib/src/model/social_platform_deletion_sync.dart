//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_platform_deletion_sync.g.dart';

/// Deletion sync state
///
/// Properties:
/// * [enabled]
/// * [lastRunAt]
/// * [tombstonedLast30d]
@BuiltValue()
abstract class SocialPlatformDeletionSync
    implements
        Built<SocialPlatformDeletionSync, SocialPlatformDeletionSyncBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'lastRunAt')
  DateTime? get lastRunAt;

  @BuiltValueField(wireName: r'tombstonedLast30d')
  int? get tombstonedLast30d;

  SocialPlatformDeletionSync._();

  factory SocialPlatformDeletionSync([
    void updates(SocialPlatformDeletionSyncBuilder b),
  ]) = _$SocialPlatformDeletionSync;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialPlatformDeletionSyncBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialPlatformDeletionSync> get serializer =>
      _$SocialPlatformDeletionSyncSerializer();
}

class _$SocialPlatformDeletionSyncSerializer
    implements PrimitiveSerializer<SocialPlatformDeletionSync> {
  @override
  final Iterable<Type> types = const [
    SocialPlatformDeletionSync,
    _$SocialPlatformDeletionSync,
  ];

  @override
  final String wireName = r'SocialPlatformDeletionSync';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialPlatformDeletionSync object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.lastRunAt != null) {
      yield r'lastRunAt';
      yield serializers.serialize(
        object.lastRunAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.tombstonedLast30d != null) {
      yield r'tombstonedLast30d';
      yield serializers.serialize(
        object.tombstonedLast30d,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialPlatformDeletionSync object, {
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
    required SocialPlatformDeletionSyncBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'lastRunAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastRunAt = valueDes;
          break;
        case r'tombstonedLast30d':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.tombstonedLast30d = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialPlatformDeletionSync deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialPlatformDeletionSyncBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quota.g.dart';

/// Per-user limits so one user cannot exhaust the instance (D5/189, R2-026). In a user's quota a null member uses the instance default; unset there too it is unlimited. `0` allows nothing.
///
/// Properties:
/// * [apiRateLimitPerMinute] - Requests a minute across the user's sessions and own API tokens; over it is 429 RATE_LIMITED
/// * [maxStorageBytes] - Bytes of uploaded attachments plus the JSON of owned workspaces
/// * [maxAlerts] - Trigger rules the user owns
/// * [maxChannels] - Notification channels the user owns
/// * [maxSavedViews] - Saved views the user owns
@BuiltValue()
abstract class Quota implements Built<Quota, QuotaBuilder> {
  /// Requests a minute across the user's sessions and own API tokens; over it is 429 RATE_LIMITED
  @BuiltValueField(wireName: r'apiRateLimitPerMinute')
  int? get apiRateLimitPerMinute;

  /// Bytes of uploaded attachments plus the JSON of owned workspaces
  @BuiltValueField(wireName: r'maxStorageBytes')
  int? get maxStorageBytes;

  /// Trigger rules the user owns
  @BuiltValueField(wireName: r'maxAlerts')
  int? get maxAlerts;

  /// Notification channels the user owns
  @BuiltValueField(wireName: r'maxChannels')
  int? get maxChannels;

  /// Saved views the user owns
  @BuiltValueField(wireName: r'maxSavedViews')
  int? get maxSavedViews;

  Quota._();

  factory Quota([void updates(QuotaBuilder b)]) = _$Quota;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuotaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Quota> get serializer => _$QuotaSerializer();
}

class _$QuotaSerializer implements PrimitiveSerializer<Quota> {
  @override
  final Iterable<Type> types = const [Quota, _$Quota];

  @override
  final String wireName = r'Quota';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Quota object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiRateLimitPerMinute != null) {
      yield r'apiRateLimitPerMinute';
      yield serializers.serialize(
        object.apiRateLimitPerMinute,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.maxStorageBytes != null) {
      yield r'maxStorageBytes';
      yield serializers.serialize(
        object.maxStorageBytes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.maxAlerts != null) {
      yield r'maxAlerts';
      yield serializers.serialize(
        object.maxAlerts,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.maxChannels != null) {
      yield r'maxChannels';
      yield serializers.serialize(
        object.maxChannels,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.maxSavedViews != null) {
      yield r'maxSavedViews';
      yield serializers.serialize(
        object.maxSavedViews,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Quota object, {
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
    required QuotaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apiRateLimitPerMinute':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.apiRateLimitPerMinute = valueDes;
          break;
        case r'maxStorageBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxStorageBytes = valueDes;
          break;
        case r'maxAlerts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxAlerts = valueDes;
          break;
        case r'maxChannels':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxChannels = valueDes;
          break;
        case r'maxSavedViews':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxSavedViews = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Quota deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuotaBuilder();
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

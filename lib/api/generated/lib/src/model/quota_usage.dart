//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/quota.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quota_usage.g.dart';

/// The caller's effective quota (own limits over the instance default; null is unlimited) with current usage against each limit
///
/// Properties:
/// * [quota]
/// * [usage] - Current usage: `alerts`, `channels`, `savedViews`, `storageBytes` and `apiRequestsThisMinute`
@BuiltValue()
abstract class QuotaUsage implements Built<QuotaUsage, QuotaUsageBuilder> {
  @BuiltValueField(wireName: r'quota')
  Quota get quota;

  /// Current usage: `alerts`, `channels`, `savedViews`, `storageBytes` and `apiRequestsThisMinute`
  @BuiltValueField(wireName: r'usage')
  BuiltMap<String, JsonObject?> get usage;

  QuotaUsage._();

  factory QuotaUsage([void updates(QuotaUsageBuilder b)]) = _$QuotaUsage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuotaUsageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuotaUsage> get serializer => _$QuotaUsageSerializer();
}

class _$QuotaUsageSerializer implements PrimitiveSerializer<QuotaUsage> {
  @override
  final Iterable<Type> types = const [QuotaUsage, _$QuotaUsage];

  @override
  final String wireName = r'QuotaUsage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuotaUsage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'quota';
    yield serializers.serialize(
      object.quota,
      specifiedType: const FullType(Quota),
    );
    yield r'usage';
    yield serializers.serialize(
      object.usage,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType.nullable(JsonObject),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    QuotaUsage object, {
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
    required QuotaUsageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'quota':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Quota),
                  )
                  as Quota;
          result.quota.replace(valueDes);
          break;
        case r'usage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>;
          result.usage.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuotaUsage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuotaUsageBuilder();
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

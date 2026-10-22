//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/system_info_history_tiers_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_history.g.dart';

/// Per-tier history storage from pg_partition_tree('record_version')
///
/// Properties:
/// * [tiers]
/// * [versionsPerMinute]
/// * [projectedBytes]
@BuiltValue()
abstract class SystemInfoHistory
    implements Built<SystemInfoHistory, SystemInfoHistoryBuilder> {
  @BuiltValueField(wireName: r'tiers')
  BuiltList<SystemInfoHistoryTiersInner>? get tiers;

  @BuiltValueField(wireName: r'versionsPerMinute')
  num? get versionsPerMinute;

  @BuiltValueField(wireName: r'projectedBytes')
  int? get projectedBytes;

  SystemInfoHistory._();

  factory SystemInfoHistory([void updates(SystemInfoHistoryBuilder b)]) =
      _$SystemInfoHistory;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoHistoryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoHistory> get serializer =>
      _$SystemInfoHistorySerializer();
}

class _$SystemInfoHistorySerializer
    implements PrimitiveSerializer<SystemInfoHistory> {
  @override
  final Iterable<Type> types = const [SystemInfoHistory, _$SystemInfoHistory];

  @override
  final String wireName = r'SystemInfoHistory';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoHistory object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tiers != null) {
      yield r'tiers';
      yield serializers.serialize(
        object.tiers,
        specifiedType: const FullType(BuiltList, [
          FullType(SystemInfoHistoryTiersInner),
        ]),
      );
    }
    if (object.versionsPerMinute != null) {
      yield r'versionsPerMinute';
      yield serializers.serialize(
        object.versionsPerMinute,
        specifiedType: const FullType(num),
      );
    }
    if (object.projectedBytes != null) {
      yield r'projectedBytes';
      yield serializers.serialize(
        object.projectedBytes,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoHistory object, {
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
    required SystemInfoHistoryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tiers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(SystemInfoHistoryTiersInner),
                    ]),
                  )
                  as BuiltList<SystemInfoHistoryTiersInner>?;
          if (valueDes == null) continue;
          result.tiers.replace(valueDes);
          break;
        case r'versionsPerMinute':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.versionsPerMinute = valueDes;
          break;
        case r'projectedBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.projectedBytes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoHistory deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoHistoryBuilder();
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

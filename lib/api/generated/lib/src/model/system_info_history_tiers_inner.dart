//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/history_tier.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_history_tiers_inner.g.dart';

/// SystemInfoHistoryTiersInner
///
/// Properties:
/// * [tier]
/// * [partitions]
/// * [rows] - Σ reltuples
/// * [bytes] - Σ pg_total_relation_size
/// * [headroomSeq]
/// * [windowDays]
/// * [downsampledLeaves] - TRACK leaves thinned by history downsampling (044); 0 for STANDARD
/// * [downsampledRows] - Rows the downsampled leaves kept (044)
@BuiltValue()
abstract class SystemInfoHistoryTiersInner
    implements
        Built<SystemInfoHistoryTiersInner, SystemInfoHistoryTiersInnerBuilder> {
  @BuiltValueField(wireName: r'tier')
  HistoryTier get tier;
  // enum tierEnum {  STANDARD,  TRACK,  };

  @BuiltValueField(wireName: r'partitions')
  int get partitions;

  /// Σ reltuples
  @BuiltValueField(wireName: r'rows')
  int get rows;

  /// Σ pg_total_relation_size
  @BuiltValueField(wireName: r'bytes')
  int get bytes;

  @BuiltValueField(wireName: r'headroomSeq')
  int? get headroomSeq;

  @BuiltValueField(wireName: r'windowDays')
  num? get windowDays;

  /// TRACK leaves thinned by history downsampling (044); 0 for STANDARD
  @BuiltValueField(wireName: r'downsampledLeaves')
  int? get downsampledLeaves;

  /// Rows the downsampled leaves kept (044)
  @BuiltValueField(wireName: r'downsampledRows')
  int? get downsampledRows;

  SystemInfoHistoryTiersInner._();

  factory SystemInfoHistoryTiersInner(
          [void updates(SystemInfoHistoryTiersInnerBuilder b)]) =
      _$SystemInfoHistoryTiersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoHistoryTiersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoHistoryTiersInner> get serializer =>
      _$SystemInfoHistoryTiersInnerSerializer();
}

class _$SystemInfoHistoryTiersInnerSerializer
    implements PrimitiveSerializer<SystemInfoHistoryTiersInner> {
  @override
  final Iterable<Type> types = const [
    SystemInfoHistoryTiersInner,
    _$SystemInfoHistoryTiersInner
  ];

  @override
  final String wireName = r'SystemInfoHistoryTiersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoHistoryTiersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tier';
    yield serializers.serialize(
      object.tier,
      specifiedType: const FullType(HistoryTier),
    );
    yield r'partitions';
    yield serializers.serialize(
      object.partitions,
      specifiedType: const FullType(int),
    );
    yield r'rows';
    yield serializers.serialize(
      object.rows,
      specifiedType: const FullType(int),
    );
    yield r'bytes';
    yield serializers.serialize(
      object.bytes,
      specifiedType: const FullType(int),
    );
    if (object.headroomSeq != null) {
      yield r'headroomSeq';
      yield serializers.serialize(
        object.headroomSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.windowDays != null) {
      yield r'windowDays';
      yield serializers.serialize(
        object.windowDays,
        specifiedType: const FullType(num),
      );
    }
    if (object.downsampledLeaves != null) {
      yield r'downsampledLeaves';
      yield serializers.serialize(
        object.downsampledLeaves,
        specifiedType: const FullType(int),
      );
    }
    if (object.downsampledRows != null) {
      yield r'downsampledRows';
      yield serializers.serialize(
        object.downsampledRows,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoHistoryTiersInner object, {
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
    required SystemInfoHistoryTiersInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HistoryTier),
          ) as HistoryTier;
          result.tier = valueDes;
          break;
        case r'partitions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.partitions = valueDes;
          break;
        case r'rows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rows = valueDes;
          break;
        case r'bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bytes = valueDes;
          break;
        case r'headroomSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.headroomSeq = valueDes;
          break;
        case r'windowDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.windowDays = valueDes;
          break;
        case r'downsampledLeaves':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.downsampledLeaves = valueDes;
          break;
        case r'downsampledRows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.downsampledRows = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoHistoryTiersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoHistoryTiersInnerBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/resource_status_database.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/resource_gauge.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resource_status.g.dart';

/// Live host disk, memory and database gauges with an overall status (177)
///
/// Properties:
/// * [status] - Worst of the gauges
/// * [disk] - The most severe of the instance's data volumes (the data directory and the raster/media store, de-duplicated by file system). The Postgres data volume belongs to the database container and is gauged by `database.sizeBytes` instead.
/// * [memory] - Physical memory as the JVM sees it (inside a container, its limit), or the heap when that is unavailable
/// * [database]
/// * [warnings] - Human-readable breach messages
/// * [checkedAt] - When the reading was taken; readings are reused for up to 30 s
@BuiltValue()
abstract class ResourceStatus
    implements Built<ResourceStatus, ResourceStatusBuilder> {
  /// Worst of the gauges
  @BuiltValueField(wireName: r'status')
  String get status;

  /// The most severe of the instance's data volumes (the data directory and the raster/media store, de-duplicated by file system). The Postgres data volume belongs to the database container and is gauged by `database.sizeBytes` instead.
  @BuiltValueField(wireName: r'disk')
  ResourceGauge get disk;

  /// Physical memory as the JVM sees it (inside a container, its limit), or the heap when that is unavailable
  @BuiltValueField(wireName: r'memory')
  ResourceGauge? get memory;

  @BuiltValueField(wireName: r'database')
  ResourceStatusDatabase? get database;

  /// Human-readable breach messages
  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  /// When the reading was taken; readings are reused for up to 30 s
  @BuiltValueField(wireName: r'checkedAt')
  DateTime get checkedAt;

  ResourceStatus._();

  factory ResourceStatus([void updates(ResourceStatusBuilder b)]) =
      _$ResourceStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResourceStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResourceStatus> get serializer =>
      _$ResourceStatusSerializer();
}

class _$ResourceStatusSerializer
    implements PrimitiveSerializer<ResourceStatus> {
  @override
  final Iterable<Type> types = const [ResourceStatus, _$ResourceStatus];

  @override
  final String wireName = r'ResourceStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResourceStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'disk';
    yield serializers.serialize(
      object.disk,
      specifiedType: const FullType(ResourceGauge),
    );
    if (object.memory != null) {
      yield r'memory';
      yield serializers.serialize(
        object.memory,
        specifiedType: const FullType(ResourceGauge),
      );
    }
    if (object.database != null) {
      yield r'database';
      yield serializers.serialize(
        object.database,
        specifiedType: const FullType(ResourceStatusDatabase),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'checkedAt';
    yield serializers.serialize(
      object.checkedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ResourceStatus object, {
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
    required ResourceStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.status = valueDes;
          break;
        case r'disk':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ResourceGauge),
                  )
                  as ResourceGauge;
          result.disk.replace(valueDes);
          break;
        case r'memory':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ResourceGauge),
                  )
                  as ResourceGauge?;
          if (valueDes == null) continue;
          result.memory.replace(valueDes);
          break;
        case r'database':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ResourceStatusDatabase,
                    ),
                  )
                  as ResourceStatusDatabase?;
          if (valueDes == null) continue;
          result.database.replace(valueDes);
          break;
        case r'warnings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        case r'checkedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.checkedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResourceStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceStatusBuilder();
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

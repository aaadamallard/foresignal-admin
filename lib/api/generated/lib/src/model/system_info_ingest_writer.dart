//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_ingest_writer.g.dart';

/// SystemInfoIngestWriter
///
/// Properties:
/// * [state]
/// * [warnings]
/// * [lastSeq]
/// * [lastIngestedAt]
/// * [queueDepth]
@BuiltValue()
abstract class SystemInfoIngestWriter
    implements Built<SystemInfoIngestWriter, SystemInfoIngestWriterBuilder> {
  @BuiltValueField(wireName: r'state')
  SystemInfoIngestWriterStateEnum? get state;
  // enum stateEnum {  RUNNING,  CLOCK_BEHIND,  LOCK_LOST,  STOPPED,  };

  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  @BuiltValueField(wireName: r'lastSeq')
  int? get lastSeq;

  @BuiltValueField(wireName: r'lastIngestedAt')
  DateTime? get lastIngestedAt;

  @BuiltValueField(wireName: r'queueDepth')
  int? get queueDepth;

  SystemInfoIngestWriter._();

  factory SystemInfoIngestWriter([
    void updates(SystemInfoIngestWriterBuilder b),
  ]) = _$SystemInfoIngestWriter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoIngestWriterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoIngestWriter> get serializer =>
      _$SystemInfoIngestWriterSerializer();
}

class _$SystemInfoIngestWriterSerializer
    implements PrimitiveSerializer<SystemInfoIngestWriter> {
  @override
  final Iterable<Type> types = const [
    SystemInfoIngestWriter,
    _$SystemInfoIngestWriter,
  ];

  @override
  final String wireName = r'SystemInfoIngestWriter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoIngestWriter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(SystemInfoIngestWriterStateEnum),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.lastSeq != null) {
      yield r'lastSeq';
      yield serializers.serialize(
        object.lastSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastIngestedAt != null) {
      yield r'lastIngestedAt';
      yield serializers.serialize(
        object.lastIngestedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.queueDepth != null) {
      yield r'queueDepth';
      yield serializers.serialize(
        object.queueDepth,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoIngestWriter object, {
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
    required SystemInfoIngestWriterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SystemInfoIngestWriterStateEnum,
                    ),
                  )
                  as SystemInfoIngestWriterStateEnum?;
          if (valueDes == null) continue;
          result.state = valueDes;
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
        case r'lastSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.lastSeq = valueDes;
          break;
        case r'lastIngestedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastIngestedAt = valueDes;
          break;
        case r'queueDepth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.queueDepth = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoIngestWriter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoIngestWriterBuilder();
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

class SystemInfoIngestWriterStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'RUNNING')
  static const SystemInfoIngestWriterStateEnum RUNNING =
      _$systemInfoIngestWriterStateEnum_RUNNING;
  @BuiltValueEnumConst(wireName: r'CLOCK_BEHIND')
  static const SystemInfoIngestWriterStateEnum CLOCK_BEHIND =
      _$systemInfoIngestWriterStateEnum_CLOCK_BEHIND;
  @BuiltValueEnumConst(wireName: r'LOCK_LOST')
  static const SystemInfoIngestWriterStateEnum LOCK_LOST =
      _$systemInfoIngestWriterStateEnum_LOCK_LOST;
  @BuiltValueEnumConst(wireName: r'STOPPED')
  static const SystemInfoIngestWriterStateEnum STOPPED =
      _$systemInfoIngestWriterStateEnum_STOPPED;

  static Serializer<SystemInfoIngestWriterStateEnum> get serializer =>
      _$systemInfoIngestWriterStateEnumSerializer;

  const SystemInfoIngestWriterStateEnum._(String name) : super(name);

  static BuiltSet<SystemInfoIngestWriterStateEnum> get values =>
      _$systemInfoIngestWriterStateEnumValues;
  static SystemInfoIngestWriterStateEnum valueOf(String name) =>
      _$systemInfoIngestWriterStateEnumValueOf(name);
}

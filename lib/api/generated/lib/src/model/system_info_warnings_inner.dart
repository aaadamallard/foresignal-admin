//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_warnings_inner.g.dart';

/// SystemInfoWarningsInner
///
/// Properties:
/// * [code] - OPEN_READS_EXPOSED, OPEN_READS_ALL_INTERFACES, HISTORY_RATE_HIGH, PARTITION_HEADROOM_LOW, RETENTION_CONSUMER_LAG, RASTER_DISK_QUOTA (042: the raster store is at 90 % of its quota or more) (open set)
/// * [severity]
/// * [message]
@BuiltValue()
abstract class SystemInfoWarningsInner
    implements Built<SystemInfoWarningsInner, SystemInfoWarningsInnerBuilder> {
  /// OPEN_READS_EXPOSED, OPEN_READS_ALL_INTERFACES, HISTORY_RATE_HIGH, PARTITION_HEADROOM_LOW, RETENTION_CONSUMER_LAG, RASTER_DISK_QUOTA (042: the raster store is at 90 % of its quota or more) (open set)
  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'severity')
  SystemInfoWarningsInnerSeverityEnum? get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'message')
  String get message;

  SystemInfoWarningsInner._();

  factory SystemInfoWarningsInner([
    void updates(SystemInfoWarningsInnerBuilder b),
  ]) = _$SystemInfoWarningsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoWarningsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoWarningsInner> get serializer =>
      _$SystemInfoWarningsInnerSerializer();
}

class _$SystemInfoWarningsInnerSerializer
    implements PrimitiveSerializer<SystemInfoWarningsInner> {
  @override
  final Iterable<Type> types = const [
    SystemInfoWarningsInner,
    _$SystemInfoWarningsInner,
  ];

  @override
  final String wireName = r'SystemInfoWarningsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoWarningsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
        specifiedType: const FullType(SystemInfoWarningsInnerSeverityEnum),
      );
    }
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoWarningsInner object, {
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
    required SystemInfoWarningsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.code = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SystemInfoWarningsInnerSeverityEnum,
                    ),
                  )
                  as SystemInfoWarningsInnerSeverityEnum?;
          if (valueDes == null) continue;
          result.severity = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoWarningsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoWarningsInnerBuilder();
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

class SystemInfoWarningsInnerSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const SystemInfoWarningsInnerSeverityEnum info =
      _$systemInfoWarningsInnerSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const SystemInfoWarningsInnerSeverityEnum warning =
      _$systemInfoWarningsInnerSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const SystemInfoWarningsInnerSeverityEnum critical =
      _$systemInfoWarningsInnerSeverityEnum_critical;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SystemInfoWarningsInnerSeverityEnum unknownDefaultOpenApi =
      _$systemInfoWarningsInnerSeverityEnum_unknownDefaultOpenApi;

  static Serializer<SystemInfoWarningsInnerSeverityEnum> get serializer =>
      _$systemInfoWarningsInnerSeverityEnumSerializer;

  const SystemInfoWarningsInnerSeverityEnum._(String name) : super(name);

  static BuiltSet<SystemInfoWarningsInnerSeverityEnum> get values =>
      _$systemInfoWarningsInnerSeverityEnumValues;
  static SystemInfoWarningsInnerSeverityEnum valueOf(String name) =>
      _$systemInfoWarningsInnerSeverityEnumValueOf(name);
}

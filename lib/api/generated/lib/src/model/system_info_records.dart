//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_records.g.dart';

/// SystemInfoRecords
///
/// Properties:
/// * [current]
/// * [versions]
/// * [lastSeq]
@BuiltValue()
abstract class SystemInfoRecords
    implements Built<SystemInfoRecords, SystemInfoRecordsBuilder> {
  @BuiltValueField(wireName: r'current')
  int? get current;

  @BuiltValueField(wireName: r'versions')
  int? get versions;

  @BuiltValueField(wireName: r'lastSeq')
  int? get lastSeq;

  SystemInfoRecords._();

  factory SystemInfoRecords([void updates(SystemInfoRecordsBuilder b)]) =
      _$SystemInfoRecords;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoRecordsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoRecords> get serializer =>
      _$SystemInfoRecordsSerializer();
}

class _$SystemInfoRecordsSerializer
    implements PrimitiveSerializer<SystemInfoRecords> {
  @override
  final Iterable<Type> types = const [SystemInfoRecords, _$SystemInfoRecords];

  @override
  final String wireName = r'SystemInfoRecords';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoRecords object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.current != null) {
      yield r'current';
      yield serializers.serialize(
        object.current,
        specifiedType: const FullType(int),
      );
    }
    if (object.versions != null) {
      yield r'versions';
      yield serializers.serialize(
        object.versions,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastSeq != null) {
      yield r'lastSeq';
      yield serializers.serialize(
        object.lastSeq,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoRecords object, {
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
    required SystemInfoRecordsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'current':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.current = valueDes;
          break;
        case r'versions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.versions = valueDes;
          break;
        case r'lastSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lastSeq = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoRecords deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoRecordsBuilder();
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

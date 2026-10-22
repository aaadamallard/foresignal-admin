//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'record_mapping_tombstone.g.dart';

/// A record whose value at `path` equals `equals` (or is in `in`) is a tombstone
///
/// Properties:
/// * [path]
/// * [equals]
/// * [in_]
@BuiltValue()
abstract class RecordMappingTombstone
    implements Built<RecordMappingTombstone, RecordMappingTombstoneBuilder> {
  @BuiltValueField(wireName: r'path')
  String get path;

  @BuiltValueField(wireName: r'equals')
  JsonObject? get equals;

  @BuiltValueField(wireName: r'in')
  BuiltList<JsonObject?>? get in_;

  RecordMappingTombstone._();

  factory RecordMappingTombstone(
          [void updates(RecordMappingTombstoneBuilder b)]) =
      _$RecordMappingTombstone;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecordMappingTombstoneBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecordMappingTombstone> get serializer =>
      _$RecordMappingTombstoneSerializer();
}

class _$RecordMappingTombstoneSerializer
    implements PrimitiveSerializer<RecordMappingTombstone> {
  @override
  final Iterable<Type> types = const [
    RecordMappingTombstone,
    _$RecordMappingTombstone
  ];

  @override
  final String wireName = r'RecordMappingTombstone';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecordMappingTombstone object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    if (object.equals != null) {
      yield r'equals';
      yield serializers.serialize(
        object.equals,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.in_ != null) {
      yield r'in';
      yield serializers.serialize(
        object.in_,
        specifiedType:
            const FullType(BuiltList, [FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecordMappingTombstone object, {
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
    required RecordMappingTombstoneBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'equals':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.equals = valueDes;
          break;
        case r'in':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType.nullable(JsonObject)]),
          ) as BuiltList<JsonObject?>?;
          if (valueDes == null) continue;
          result.in_.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecordMappingTombstone deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordMappingTombstoneBuilder();
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

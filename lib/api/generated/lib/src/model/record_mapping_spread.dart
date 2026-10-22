//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'record_mapping_spread.g.dart';

/// Copies the scalar members of one object into top-level fields (ChirpStack `object`, TTS `decoded_payload`). Members in `drop`, members whose name is not a valid field name, and names a field already produced are skipped (059)
///
/// Properties:
/// * [path] - JSONPath of the object
/// * [type] - Type every copied value must have; others are skipped
/// * [max]
@BuiltValue()
abstract class RecordMappingSpread
    implements Built<RecordMappingSpread, RecordMappingSpreadBuilder> {
  /// JSONPath of the object
  @BuiltValueField(wireName: r'path')
  String get path;

  /// Type every copied value must have; others are skipped
  @BuiltValueField(wireName: r'type')
  RecordMappingSpreadTypeEnum? get type;
  // enum typeEnum {  number,  integer,  string,  boolean,  };

  @BuiltValueField(wireName: r'max')
  int? get max;

  RecordMappingSpread._();

  factory RecordMappingSpread([void updates(RecordMappingSpreadBuilder b)]) =
      _$RecordMappingSpread;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecordMappingSpreadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecordMappingSpread> get serializer =>
      _$RecordMappingSpreadSerializer();
}

class _$RecordMappingSpreadSerializer
    implements PrimitiveSerializer<RecordMappingSpread> {
  @override
  final Iterable<Type> types = const [
    RecordMappingSpread,
    _$RecordMappingSpread
  ];

  @override
  final String wireName = r'RecordMappingSpread';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecordMappingSpread object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(RecordMappingSpreadTypeEnum),
      );
    }
    if (object.max != null) {
      yield r'max';
      yield serializers.serialize(
        object.max,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecordMappingSpread object, {
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
    required RecordMappingSpreadBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RecordMappingSpreadTypeEnum),
          ) as RecordMappingSpreadTypeEnum?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'max':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.max = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecordMappingSpread deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordMappingSpreadBuilder();
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

/// Type every copied value must have; others are skipped
class RecordMappingSpreadTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'number')
  static const RecordMappingSpreadTypeEnum number =
      _$recordMappingSpreadTypeEnum_number;
  @BuiltValueEnumConst(wireName: r'integer')
  static const RecordMappingSpreadTypeEnum integer =
      _$recordMappingSpreadTypeEnum_integer;
  @BuiltValueEnumConst(wireName: r'string')
  static const RecordMappingSpreadTypeEnum string =
      _$recordMappingSpreadTypeEnum_string;
  @BuiltValueEnumConst(wireName: r'boolean')
  static const RecordMappingSpreadTypeEnum boolean =
      _$recordMappingSpreadTypeEnum_boolean;

  static Serializer<RecordMappingSpreadTypeEnum> get serializer =>
      _$recordMappingSpreadTypeEnumSerializer;

  const RecordMappingSpreadTypeEnum._(String name) : super(name);

  static BuiltSet<RecordMappingSpreadTypeEnum> get values =>
      _$recordMappingSpreadTypeEnumValues;
  static RecordMappingSpreadTypeEnum valueOf(String name) =>
      _$recordMappingSpreadTypeEnumValueOf(name);
}

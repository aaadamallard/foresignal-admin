//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/mapping_field_unit.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mapping_field.g.dart';

/// One payload field produced by a RecordMapping (059)
///
/// Properties:
/// * [name] - Top-level payload key
/// * [path] - JSONPath, or `$pairs.<key>`
/// * [type]
/// * [unit]
/// * [scale]
/// * [offset]
/// * [default_] - Value used when the path is absent or holds a sentinel
/// * [sentinels] - Input values treated as absent (e.g. AIS heading 511), compared before conversion
@BuiltValue()
abstract class MappingField
    implements Built<MappingField, MappingFieldBuilder> {
  /// Top-level payload key
  @BuiltValueField(wireName: r'name')
  String get name;

  /// JSONPath, or `$pairs.<key>`
  @BuiltValueField(wireName: r'path')
  String get path;

  @BuiltValueField(wireName: r'type')
  MappingFieldTypeEnum get type;
  // enum typeEnum {  number,  integer,  string,  boolean,  };

  @BuiltValueField(wireName: r'unit')
  MappingFieldUnit? get unit;

  @BuiltValueField(wireName: r'scale')
  num? get scale;

  @BuiltValueField(wireName: r'offset')
  num? get offset;

  /// Value used when the path is absent or holds a sentinel
  @BuiltValueField(wireName: r'default')
  JsonObject? get default_;

  /// Input values treated as absent (e.g. AIS heading 511), compared before conversion
  @BuiltValueField(wireName: r'sentinels')
  BuiltList<JsonObject?>? get sentinels;

  MappingField._();

  factory MappingField([void updates(MappingFieldBuilder b)]) = _$MappingField;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MappingFieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MappingField> get serializer => _$MappingFieldSerializer();
}

class _$MappingFieldSerializer implements PrimitiveSerializer<MappingField> {
  @override
  final Iterable<Type> types = const [MappingField, _$MappingField];

  @override
  final String wireName = r'MappingField';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MappingField object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(MappingFieldTypeEnum),
    );
    if (object.unit != null) {
      yield r'unit';
      yield serializers.serialize(
        object.unit,
        specifiedType: const FullType(MappingFieldUnit),
      );
    }
    if (object.scale != null) {
      yield r'scale';
      yield serializers.serialize(
        object.scale,
        specifiedType: const FullType(num),
      );
    }
    if (object.offset != null) {
      yield r'offset';
      yield serializers.serialize(
        object.offset,
        specifiedType: const FullType(num),
      );
    }
    if (object.default_ != null) {
      yield r'default';
      yield serializers.serialize(
        object.default_,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.sentinels != null) {
      yield r'sentinels';
      yield serializers.serialize(
        object.sentinels,
        specifiedType: const FullType(BuiltList, [
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MappingField object, {
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
    required MappingFieldBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'path':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.path = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(MappingFieldTypeEnum),
                  )
                  as MappingFieldTypeEnum;
          result.type = valueDes;
          break;
        case r'unit':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(MappingFieldUnit),
                  )
                  as MappingFieldUnit?;
          if (valueDes == null) continue;
          result.unit.replace(valueDes);
          break;
        case r'scale':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.scale = valueDes;
          break;
        case r'offset':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.offset = valueDes;
          break;
        case r'default':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.default_ = valueDes;
          break;
        case r'sentinels':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltList<JsonObject?>?;
          if (valueDes == null) continue;
          result.sentinels.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MappingField deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MappingFieldBuilder();
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

class MappingFieldTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'number')
  static const MappingFieldTypeEnum number = _$mappingFieldTypeEnum_number;
  @BuiltValueEnumConst(wireName: r'integer')
  static const MappingFieldTypeEnum integer = _$mappingFieldTypeEnum_integer;
  @BuiltValueEnumConst(wireName: r'string')
  static const MappingFieldTypeEnum string = _$mappingFieldTypeEnum_string;
  @BuiltValueEnumConst(wireName: r'boolean')
  static const MappingFieldTypeEnum boolean = _$mappingFieldTypeEnum_boolean;

  static Serializer<MappingFieldTypeEnum> get serializer =>
      _$mappingFieldTypeEnumSerializer;

  const MappingFieldTypeEnum._(String name) : super(name);

  static BuiltSet<MappingFieldTypeEnum> get values =>
      _$mappingFieldTypeEnumValues;
  static MappingFieldTypeEnum valueOf(String name) =>
      _$mappingFieldTypeEnumValueOf(name);
}

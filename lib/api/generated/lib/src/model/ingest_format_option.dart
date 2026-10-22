//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_format_option.g.dart';

/// One option a format accepts under `formats.{id}` (024)
///
/// Properties:
/// * [name]
/// * [type]
/// * [required_]
/// * [default_]
/// * [description]
@BuiltValue()
abstract class IngestFormatOption
    implements Built<IngestFormatOption, IngestFormatOptionBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'type')
  IngestFormatOptionTypeEnum get type;
  // enum typeEnum {  string,  integer,  number,  boolean,  object,  array,  };

  @BuiltValueField(wireName: r'required')
  bool? get required_;

  @BuiltValueField(wireName: r'default')
  JsonObject? get default_;

  @BuiltValueField(wireName: r'description')
  String? get description;

  IngestFormatOption._();

  factory IngestFormatOption([void updates(IngestFormatOptionBuilder b)]) =
      _$IngestFormatOption;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestFormatOptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestFormatOption> get serializer =>
      _$IngestFormatOptionSerializer();
}

class _$IngestFormatOptionSerializer
    implements PrimitiveSerializer<IngestFormatOption> {
  @override
  final Iterable<Type> types = const [IngestFormatOption, _$IngestFormatOption];

  @override
  final String wireName = r'IngestFormatOption';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestFormatOption object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(IngestFormatOptionTypeEnum),
    );
    if (object.required_ != null) {
      yield r'required';
      yield serializers.serialize(
        object.required_,
        specifiedType: const FullType(bool),
      );
    }
    if (object.default_ != null) {
      yield r'default';
      yield serializers.serialize(
        object.default_,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IngestFormatOption object, {
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
    required IngestFormatOptionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IngestFormatOptionTypeEnum),
          ) as IngestFormatOptionTypeEnum;
          result.type = valueDes;
          break;
        case r'required':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.required_ = valueDes;
          break;
        case r'default':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.default_ = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IngestFormatOption deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestFormatOptionBuilder();
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

class IngestFormatOptionTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'string')
  static const IngestFormatOptionTypeEnum string =
      _$ingestFormatOptionTypeEnum_string;
  @BuiltValueEnumConst(wireName: r'integer')
  static const IngestFormatOptionTypeEnum integer =
      _$ingestFormatOptionTypeEnum_integer;
  @BuiltValueEnumConst(wireName: r'number')
  static const IngestFormatOptionTypeEnum number =
      _$ingestFormatOptionTypeEnum_number;
  @BuiltValueEnumConst(wireName: r'boolean')
  static const IngestFormatOptionTypeEnum boolean =
      _$ingestFormatOptionTypeEnum_boolean;
  @BuiltValueEnumConst(wireName: r'object')
  static const IngestFormatOptionTypeEnum object =
      _$ingestFormatOptionTypeEnum_object;
  @BuiltValueEnumConst(wireName: r'array')
  static const IngestFormatOptionTypeEnum array =
      _$ingestFormatOptionTypeEnum_array;

  static Serializer<IngestFormatOptionTypeEnum> get serializer =>
      _$ingestFormatOptionTypeEnumSerializer;

  const IngestFormatOptionTypeEnum._(String name) : super(name);

  static BuiltSet<IngestFormatOptionTypeEnum> get values =>
      _$ingestFormatOptionTypeEnumValues;
  static IngestFormatOptionTypeEnum valueOf(String name) =>
      _$ingestFormatOptionTypeEnumValueOf(name);
}

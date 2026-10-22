//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field_spec.g.dart';

/// Declared payload field (descriptor `fieldSpecs`): JSON type, UCUM unit, label and optional vertical datum
///
/// Properties:
/// * [type]
/// * [unit] - UCUM unit code, e.g. `m`, `km`, `[kn_i]`, `[ft_i]`, `deg`, `s`, `1`
/// * [unitLabel] - Human-readable unit label (emitted as `x-unitLabel` by getKindSchema)
/// * [label] - Display label
/// * [description]
/// * [datum] - Vertical datum, for vertical fields only: MSL, WGS84, AGL, PRESSURE or free text
/// * [format] - Display format hint (emitted as `x-format` by getKindSchema)
/// * [enumLabels] - Allowed values mapped to display labels (emitted as `enum` by getKindSchema)
/// * [kinds] - Kinds this spec applies to; empty means every kind of the source
/// * [noLink] - Display hint: never render this value as a link (hostile URLs, 076)
@BuiltValue()
abstract class FieldSpec implements Built<FieldSpec, FieldSpecBuilder> {
  @BuiltValueField(wireName: r'type')
  FieldSpecTypeEnum get type;
  // enum typeEnum {  STRING,  INTEGER,  NUMBER,  BOOLEAN,  TIMESTAMP,  OBJECT,  ARRAY,  };

  /// UCUM unit code, e.g. `m`, `km`, `[kn_i]`, `[ft_i]`, `deg`, `s`, `1`
  @BuiltValueField(wireName: r'unit')
  String? get unit;

  /// Human-readable unit label (emitted as `x-unitLabel` by getKindSchema)
  @BuiltValueField(wireName: r'unitLabel')
  String? get unitLabel;

  /// Display label
  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Vertical datum, for vertical fields only: MSL, WGS84, AGL, PRESSURE or free text
  @BuiltValueField(wireName: r'datum')
  String? get datum;

  /// Display format hint (emitted as `x-format` by getKindSchema)
  @BuiltValueField(wireName: r'format')
  String? get format;

  /// Allowed values mapped to display labels (emitted as `enum` by getKindSchema)
  @BuiltValueField(wireName: r'enumLabels')
  BuiltMap<String, String>? get enumLabels;

  /// Kinds this spec applies to; empty means every kind of the source
  @BuiltValueField(wireName: r'kinds')
  BuiltList<String>? get kinds;

  /// Display hint: never render this value as a link (hostile URLs, 076)
  @BuiltValueField(wireName: r'noLink')
  bool? get noLink;

  FieldSpec._();

  factory FieldSpec([void updates(FieldSpecBuilder b)]) = _$FieldSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FieldSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FieldSpec> get serializer => _$FieldSpecSerializer();
}

class _$FieldSpecSerializer implements PrimitiveSerializer<FieldSpec> {
  @override
  final Iterable<Type> types = const [FieldSpec, _$FieldSpec];

  @override
  final String wireName = r'FieldSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FieldSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(FieldSpecTypeEnum),
    );
    if (object.unit != null) {
      yield r'unit';
      yield serializers.serialize(
        object.unit,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.unitLabel != null) {
      yield r'unitLabel';
      yield serializers.serialize(
        object.unitLabel,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.datum != null) {
      yield r'datum';
      yield serializers.serialize(
        object.datum,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.enumLabels != null) {
      yield r'enumLabels';
      yield serializers.serialize(
        object.enumLabels,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.kinds != null) {
      yield r'kinds';
      yield serializers.serialize(
        object.kinds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.noLink != null) {
      yield r'noLink';
      yield serializers.serialize(
        object.noLink,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FieldSpec object, {
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
    required FieldSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FieldSpecTypeEnum),
          ) as FieldSpecTypeEnum;
          result.type = valueDes;
          break;
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.unit = valueDes;
          break;
        case r'unitLabel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.unitLabel = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'datum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.datum = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.format = valueDes;
          break;
        case r'enumLabels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.enumLabels.replace(valueDes);
          break;
        case r'kinds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.kinds.replace(valueDes);
          break;
        case r'noLink':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.noLink = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FieldSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldSpecBuilder();
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

class FieldSpecTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'STRING')
  static const FieldSpecTypeEnum STRING = _$fieldSpecTypeEnum_STRING;
  @BuiltValueEnumConst(wireName: r'INTEGER')
  static const FieldSpecTypeEnum INTEGER = _$fieldSpecTypeEnum_INTEGER;
  @BuiltValueEnumConst(wireName: r'NUMBER')
  static const FieldSpecTypeEnum NUMBER = _$fieldSpecTypeEnum_NUMBER;
  @BuiltValueEnumConst(wireName: r'BOOLEAN')
  static const FieldSpecTypeEnum BOOLEAN = _$fieldSpecTypeEnum_BOOLEAN;
  @BuiltValueEnumConst(wireName: r'TIMESTAMP')
  static const FieldSpecTypeEnum TIMESTAMP = _$fieldSpecTypeEnum_TIMESTAMP;
  @BuiltValueEnumConst(wireName: r'OBJECT')
  static const FieldSpecTypeEnum OBJECT = _$fieldSpecTypeEnum_OBJECT;
  @BuiltValueEnumConst(wireName: r'ARRAY')
  static const FieldSpecTypeEnum ARRAY = _$fieldSpecTypeEnum_ARRAY;

  static Serializer<FieldSpecTypeEnum> get serializer =>
      _$fieldSpecTypeEnumSerializer;

  const FieldSpecTypeEnum._(String name) : super(name);

  static BuiltSet<FieldSpecTypeEnum> get values => _$fieldSpecTypeEnumValues;
  static FieldSpecTypeEnum valueOf(String name) =>
      _$fieldSpecTypeEnumValueOf(name);
}

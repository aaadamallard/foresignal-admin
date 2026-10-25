//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_source_info_originator.g.dart';

/// EdpSourceInfoOriginator
///
/// Properties:
/// * [id]
/// * [class_]
/// * [aggregates]
@BuiltValue()
abstract class EdpSourceInfoOriginator
    implements Built<EdpSourceInfoOriginator, EdpSourceInfoOriginatorBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'class')
  EdpSourceInfoOriginatorClass_Enum get class_;
  // enum class_Enum {  sensor-network,  agency,  aggregator,  media,  crowd,  social,  operator,  derived,  };

  @BuiltValueField(wireName: r'aggregates')
  BuiltList<String>? get aggregates;

  EdpSourceInfoOriginator._();

  factory EdpSourceInfoOriginator([
    void updates(EdpSourceInfoOriginatorBuilder b),
  ]) = _$EdpSourceInfoOriginator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpSourceInfoOriginatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpSourceInfoOriginator> get serializer =>
      _$EdpSourceInfoOriginatorSerializer();
}

class _$EdpSourceInfoOriginatorSerializer
    implements PrimitiveSerializer<EdpSourceInfoOriginator> {
  @override
  final Iterable<Type> types = const [
    EdpSourceInfoOriginator,
    _$EdpSourceInfoOriginator,
  ];

  @override
  final String wireName = r'EdpSourceInfoOriginator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpSourceInfoOriginator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'class';
    yield serializers.serialize(
      object.class_,
      specifiedType: const FullType(EdpSourceInfoOriginatorClass_Enum),
    );
    if (object.aggregates != null) {
      yield r'aggregates';
      yield serializers.serialize(
        object.aggregates,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpSourceInfoOriginator object, {
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
    required EdpSourceInfoOriginatorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'class':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      EdpSourceInfoOriginatorClass_Enum,
                    ),
                  )
                  as EdpSourceInfoOriginatorClass_Enum;
          result.class_ = valueDes;
          break;
        case r'aggregates':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.aggregates.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpSourceInfoOriginator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpSourceInfoOriginatorBuilder();
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

class EdpSourceInfoOriginatorClass_Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'sensor-network')
  static const EdpSourceInfoOriginatorClass_Enum sensorNetwork =
      _$edpSourceInfoOriginatorClassEnum_sensorNetwork;
  @BuiltValueEnumConst(wireName: r'agency')
  static const EdpSourceInfoOriginatorClass_Enum agency =
      _$edpSourceInfoOriginatorClassEnum_agency;
  @BuiltValueEnumConst(wireName: r'aggregator')
  static const EdpSourceInfoOriginatorClass_Enum aggregator =
      _$edpSourceInfoOriginatorClassEnum_aggregator;
  @BuiltValueEnumConst(wireName: r'media')
  static const EdpSourceInfoOriginatorClass_Enum media =
      _$edpSourceInfoOriginatorClassEnum_media;
  @BuiltValueEnumConst(wireName: r'crowd')
  static const EdpSourceInfoOriginatorClass_Enum crowd =
      _$edpSourceInfoOriginatorClassEnum_crowd;
  @BuiltValueEnumConst(wireName: r'social')
  static const EdpSourceInfoOriginatorClass_Enum social =
      _$edpSourceInfoOriginatorClassEnum_social;
  @BuiltValueEnumConst(wireName: r'operator')
  static const EdpSourceInfoOriginatorClass_Enum operator_ =
      _$edpSourceInfoOriginatorClassEnum_operator_;
  @BuiltValueEnumConst(wireName: r'derived')
  static const EdpSourceInfoOriginatorClass_Enum derived =
      _$edpSourceInfoOriginatorClassEnum_derived;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EdpSourceInfoOriginatorClass_Enum unknownDefaultOpenApi =
      _$edpSourceInfoOriginatorClassEnum_unknownDefaultOpenApi;

  static Serializer<EdpSourceInfoOriginatorClass_Enum> get serializer =>
      _$edpSourceInfoOriginatorClassEnumSerializer;

  const EdpSourceInfoOriginatorClass_Enum._(String name) : super(name);

  static BuiltSet<EdpSourceInfoOriginatorClass_Enum> get values =>
      _$edpSourceInfoOriginatorClassEnumValues;
  static EdpSourceInfoOriginatorClass_Enum valueOf(String name) =>
      _$edpSourceInfoOriginatorClassEnumValueOf(name);
}

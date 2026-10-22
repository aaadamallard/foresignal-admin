//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_origin.g.dart';

/// Item-level provenance: who originally observed or published this item, when it differs from the manifest originator (for evidence independence)
///
/// Properties:
/// * [originator]
/// * [class_]
/// * [upstreamId] - The original publisher's id for the observation or report
/// * [derivedFrom] - Other items (stream:id) or upstream ids this item was derived from
@BuiltValue()
abstract class EdpOrigin implements Built<EdpOrigin, EdpOriginBuilder> {
  @BuiltValueField(wireName: r'originator')
  String get originator;

  @BuiltValueField(wireName: r'class')
  EdpOriginClass_Enum? get class_;
  // enum class_Enum {  sensor-network,  agency,  aggregator,  media,  crowd,  social,  operator,  derived,  };

  /// The original publisher's id for the observation or report
  @BuiltValueField(wireName: r'upstreamId')
  String? get upstreamId;

  /// Other items (stream:id) or upstream ids this item was derived from
  @BuiltValueField(wireName: r'derivedFrom')
  BuiltList<String>? get derivedFrom;

  EdpOrigin._();

  factory EdpOrigin([void updates(EdpOriginBuilder b)]) = _$EdpOrigin;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpOriginBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpOrigin> get serializer => _$EdpOriginSerializer();
}

class _$EdpOriginSerializer implements PrimitiveSerializer<EdpOrigin> {
  @override
  final Iterable<Type> types = const [EdpOrigin, _$EdpOrigin];

  @override
  final String wireName = r'EdpOrigin';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpOrigin object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'originator';
    yield serializers.serialize(
      object.originator,
      specifiedType: const FullType(String),
    );
    if (object.class_ != null) {
      yield r'class';
      yield serializers.serialize(
        object.class_,
        specifiedType: const FullType.nullable(EdpOriginClass_Enum),
      );
    }
    if (object.upstreamId != null) {
      yield r'upstreamId';
      yield serializers.serialize(
        object.upstreamId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.derivedFrom != null) {
      yield r'derivedFrom';
      yield serializers.serialize(
        object.derivedFrom,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpOrigin object, {
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
    required EdpOriginBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'originator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.originator = valueDes;
          break;
        case r'class':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdpOriginClass_Enum),
          ) as EdpOriginClass_Enum?;
          if (valueDes == null) continue;
          result.class_ = valueDes;
          break;
        case r'upstreamId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.upstreamId = valueDes;
          break;
        case r'derivedFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.derivedFrom.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpOrigin deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpOriginBuilder();
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

class EdpOriginClass_Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'sensor-network')
  static const EdpOriginClass_Enum sensorNetwork =
      _$edpOriginClassEnum_sensorNetwork;
  @BuiltValueEnumConst(wireName: r'agency')
  static const EdpOriginClass_Enum agency = _$edpOriginClassEnum_agency;
  @BuiltValueEnumConst(wireName: r'aggregator')
  static const EdpOriginClass_Enum aggregator = _$edpOriginClassEnum_aggregator;
  @BuiltValueEnumConst(wireName: r'media')
  static const EdpOriginClass_Enum media = _$edpOriginClassEnum_media;
  @BuiltValueEnumConst(wireName: r'crowd')
  static const EdpOriginClass_Enum crowd = _$edpOriginClassEnum_crowd;
  @BuiltValueEnumConst(wireName: r'social')
  static const EdpOriginClass_Enum social = _$edpOriginClassEnum_social;
  @BuiltValueEnumConst(wireName: r'operator')
  static const EdpOriginClass_Enum operator_ = _$edpOriginClassEnum_operator_;
  @BuiltValueEnumConst(wireName: r'derived')
  static const EdpOriginClass_Enum derived = _$edpOriginClassEnum_derived;

  static Serializer<EdpOriginClass_Enum> get serializer =>
      _$edpOriginClassEnumSerializer;

  const EdpOriginClass_Enum._(String name) : super(name);

  static BuiltSet<EdpOriginClass_Enum> get values => _$edpOriginClassEnumValues;
  static EdpOriginClass_Enum valueOf(String name) =>
      _$edpOriginClassEnumValueOf(name);
}

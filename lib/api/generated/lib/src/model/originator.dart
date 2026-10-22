//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'originator.g.dart';

/// Who originated an observation (116)
///
/// Properties:
/// * [id]
/// * [class_]
/// * [independenceGroup] - Sources in the same group are never independent of each other
/// * [aggregates] - Originator ids this originator republishes
/// * [notes]
@BuiltValue()
abstract class Originator implements Built<Originator, OriginatorBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'class')
  OriginatorClass_Enum get class_;
  // enum class_Enum {  sensor-network,  agency,  aggregator,  media,  crowd,  operator,  derived,  social,  };

  /// Sources in the same group are never independent of each other
  @BuiltValueField(wireName: r'independenceGroup')
  String? get independenceGroup;

  /// Originator ids this originator republishes
  @BuiltValueField(wireName: r'aggregates')
  BuiltList<String>? get aggregates;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  Originator._();

  factory Originator([void updates(OriginatorBuilder b)]) = _$Originator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OriginatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Originator> get serializer => _$OriginatorSerializer();
}

class _$OriginatorSerializer implements PrimitiveSerializer<Originator> {
  @override
  final Iterable<Type> types = const [Originator, _$Originator];

  @override
  final String wireName = r'Originator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Originator object, {
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
      specifiedType: const FullType(OriginatorClass_Enum),
    );
    if (object.independenceGroup != null) {
      yield r'independenceGroup';
      yield serializers.serialize(
        object.independenceGroup,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.aggregates != null) {
      yield r'aggregates';
      yield serializers.serialize(
        object.aggregates,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Originator object, {
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
    required OriginatorBuilder result,
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
                    specifiedType: const FullType(OriginatorClass_Enum),
                  )
                  as OriginatorClass_Enum;
          result.class_ = valueDes;
          break;
        case r'independenceGroup':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.independenceGroup = valueDes;
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
        case r'notes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.notes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Originator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OriginatorBuilder();
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

class OriginatorClass_Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'sensor-network')
  static const OriginatorClass_Enum sensorNetwork =
      _$originatorClassEnum_sensorNetwork;
  @BuiltValueEnumConst(wireName: r'agency')
  static const OriginatorClass_Enum agency = _$originatorClassEnum_agency;
  @BuiltValueEnumConst(wireName: r'aggregator')
  static const OriginatorClass_Enum aggregator =
      _$originatorClassEnum_aggregator;
  @BuiltValueEnumConst(wireName: r'media')
  static const OriginatorClass_Enum media = _$originatorClassEnum_media;
  @BuiltValueEnumConst(wireName: r'crowd')
  static const OriginatorClass_Enum crowd = _$originatorClassEnum_crowd;
  @BuiltValueEnumConst(wireName: r'operator')
  static const OriginatorClass_Enum operator_ = _$originatorClassEnum_operator_;
  @BuiltValueEnumConst(wireName: r'derived')
  static const OriginatorClass_Enum derived = _$originatorClassEnum_derived;
  @BuiltValueEnumConst(wireName: r'social')
  static const OriginatorClass_Enum social = _$originatorClassEnum_social;

  static Serializer<OriginatorClass_Enum> get serializer =>
      _$originatorClassEnumSerializer;

  const OriginatorClass_Enum._(String name) : super(name);

  static BuiltSet<OriginatorClass_Enum> get values =>
      _$originatorClassEnumValues;
  static OriginatorClass_Enum valueOf(String name) =>
      _$originatorClassEnumValueOf(name);
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_rate_licences_inner.g.dart';

/// Licence of a contributing source
///
/// Properties:
/// * [source_]
/// * [licence]
/// * [egress]
@BuiltValue()
abstract class BaseRateLicencesInner
    implements Built<BaseRateLicencesInner, BaseRateLicencesInnerBuilder> {
  @BuiltValueField(wireName: r'source')
  String get source_;

  @BuiltValueField(wireName: r'licence')
  String get licence;

  @BuiltValueField(wireName: r'egress')
  BaseRateLicencesInnerEgressEnum? get egress;
  // enum egressEnum {  OPEN,  LOCAL_ONLY,  };

  BaseRateLicencesInner._();

  factory BaseRateLicencesInner([
    void updates(BaseRateLicencesInnerBuilder b),
  ]) = _$BaseRateLicencesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BaseRateLicencesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseRateLicencesInner> get serializer =>
      _$BaseRateLicencesInnerSerializer();
}

class _$BaseRateLicencesInnerSerializer
    implements PrimitiveSerializer<BaseRateLicencesInner> {
  @override
  final Iterable<Type> types = const [
    BaseRateLicencesInner,
    _$BaseRateLicencesInner,
  ];

  @override
  final String wireName = r'BaseRateLicencesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseRateLicencesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(String),
    );
    yield r'licence';
    yield serializers.serialize(
      object.licence,
      specifiedType: const FullType(String),
    );
    if (object.egress != null) {
      yield r'egress';
      yield serializers.serialize(
        object.egress,
        specifiedType: const FullType(BaseRateLicencesInnerEgressEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BaseRateLicencesInner object, {
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
    required BaseRateLicencesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.source_ = valueDes;
          break;
        case r'licence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.licence = valueDes;
          break;
        case r'egress':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      BaseRateLicencesInnerEgressEnum,
                    ),
                  )
                  as BaseRateLicencesInnerEgressEnum?;
          if (valueDes == null) continue;
          result.egress = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BaseRateLicencesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaseRateLicencesInnerBuilder();
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

class BaseRateLicencesInnerEgressEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OPEN')
  static const BaseRateLicencesInnerEgressEnum OPEN =
      _$baseRateLicencesInnerEgressEnum_OPEN;
  @BuiltValueEnumConst(wireName: r'LOCAL_ONLY')
  static const BaseRateLicencesInnerEgressEnum LOCAL_ONLY =
      _$baseRateLicencesInnerEgressEnum_LOCAL_ONLY;

  static Serializer<BaseRateLicencesInnerEgressEnum> get serializer =>
      _$baseRateLicencesInnerEgressEnumSerializer;

  const BaseRateLicencesInnerEgressEnum._(String name) : super(name);

  static BuiltSet<BaseRateLicencesInnerEgressEnum> get values =>
      _$baseRateLicencesInnerEgressEnumValues;
  static BaseRateLicencesInnerEgressEnum valueOf(String name) =>
      _$baseRateLicencesInnerEgressEnumValueOf(name);
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stix_bundle.g.dart';

/// STIX 2.1 bundle (vulnerability, indicator and identity objects with deterministic UUIDv5 ids)
///
/// Properties:
/// * [type]
/// * [id]
/// * [objects]
@BuiltValue()
abstract class StixBundle implements Built<StixBundle, StixBundleBuilder> {
  @BuiltValueField(wireName: r'type')
  StixBundleTypeEnum get type;
  // enum typeEnum {  bundle,  };

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'objects')
  BuiltList<BuiltMap<String, JsonObject?>> get objects;

  StixBundle._();

  factory StixBundle([void updates(StixBundleBuilder b)]) = _$StixBundle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StixBundleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StixBundle> get serializer => _$StixBundleSerializer();
}

class _$StixBundleSerializer implements PrimitiveSerializer<StixBundle> {
  @override
  final Iterable<Type> types = const [StixBundle, _$StixBundle];

  @override
  final String wireName = r'StixBundle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StixBundle object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(StixBundleTypeEnum),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'objects';
    yield serializers.serialize(
      object.objects,
      specifiedType: const FullType(BuiltList, [
        FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StixBundle object, {
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
    required StixBundleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StixBundleTypeEnum),
          ) as StixBundleTypeEnum;
          result.type = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'objects':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [
              FullType(
                  BuiltMap, [FullType(String), FullType.nullable(JsonObject)])
            ]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>;
          result.objects.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StixBundle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StixBundleBuilder();
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

class StixBundleTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'bundle')
  static const StixBundleTypeEnum bundle = _$stixBundleTypeEnum_bundle;

  static Serializer<StixBundleTypeEnum> get serializer =>
      _$stixBundleTypeEnumSerializer;

  const StixBundleTypeEnum._(String name) : super(name);

  static BuiltSet<StixBundleTypeEnum> get values => _$stixBundleTypeEnumValues;
  static StixBundleTypeEnum valueOf(String name) =>
      _$stixBundleTypeEnumValueOf(name);
}

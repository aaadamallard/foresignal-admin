//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/exposure_places_items_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exposure_places.g.dart';

/// Places (036) inside the area
///
/// Properties:
/// * [status]
/// * [attribution]
/// * [items]
@BuiltValue()
abstract class ExposurePlaces
    implements Built<ExposurePlaces, ExposurePlacesBuilder> {
  @BuiltValueField(wireName: r'status')
  ExposurePlacesStatusEnum get status;
  // enum statusEnum {  ok,  unavailable,  not-installed,  };

  @BuiltValueField(wireName: r'attribution')
  BuiltList<Attribution>? get attribution;

  @BuiltValueField(wireName: r'items')
  BuiltList<ExposurePlacesItemsInner>? get items;

  ExposurePlaces._();

  factory ExposurePlaces([void updates(ExposurePlacesBuilder b)]) =
      _$ExposurePlaces;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExposurePlacesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExposurePlaces> get serializer =>
      _$ExposurePlacesSerializer();
}

class _$ExposurePlacesSerializer
    implements PrimitiveSerializer<ExposurePlaces> {
  @override
  final Iterable<Type> types = const [ExposurePlaces, _$ExposurePlaces];

  @override
  final String wireName = r'ExposurePlaces';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExposurePlaces object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ExposurePlacesStatusEnum),
    );
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(BuiltList, [FullType(Attribution)]),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType:
            const FullType(BuiltList, [FullType(ExposurePlacesItemsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExposurePlaces object, {
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
    required ExposurePlacesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExposurePlacesStatusEnum),
          ) as ExposurePlacesStatusEnum;
          result.status = valueDes;
          break;
        case r'attribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Attribution)]),
          ) as BuiltList<Attribution>?;
          if (valueDes == null) continue;
          result.attribution.replace(valueDes);
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ExposurePlacesItemsInner)]),
          ) as BuiltList<ExposurePlacesItemsInner>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExposurePlaces deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExposurePlacesBuilder();
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

class ExposurePlacesStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const ExposurePlacesStatusEnum ok = _$exposurePlacesStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'unavailable')
  static const ExposurePlacesStatusEnum unavailable =
      _$exposurePlacesStatusEnum_unavailable;
  @BuiltValueEnumConst(wireName: r'not-installed')
  static const ExposurePlacesStatusEnum notInstalled =
      _$exposurePlacesStatusEnum_notInstalled;

  static Serializer<ExposurePlacesStatusEnum> get serializer =>
      _$exposurePlacesStatusEnumSerializer;

  const ExposurePlacesStatusEnum._(String name) : super(name);

  static BuiltSet<ExposurePlacesStatusEnum> get values =>
      _$exposurePlacesStatusEnumValues;
  static ExposurePlacesStatusEnum valueOf(String name) =>
      _$exposurePlacesStatusEnumValueOf(name);
}

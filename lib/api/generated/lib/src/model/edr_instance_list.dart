//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ogc_link.dart';
import 'package:foresignal_api/src/model/edr_instance_list_instances_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edr_instance_list.g.dart';

/// EDR instances of a forecast product (one per run)
///
/// Properties:
/// * [instances]
/// * [links]
@BuiltValue()
abstract class EdrInstanceList
    implements Built<EdrInstanceList, EdrInstanceListBuilder> {
  @BuiltValueField(wireName: r'instances')
  BuiltList<EdrInstanceListInstancesInner> get instances;

  @BuiltValueField(wireName: r'links')
  BuiltList<OgcLink>? get links;

  EdrInstanceList._();

  factory EdrInstanceList([void updates(EdrInstanceListBuilder b)]) =
      _$EdrInstanceList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdrInstanceListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdrInstanceList> get serializer =>
      _$EdrInstanceListSerializer();
}

class _$EdrInstanceListSerializer
    implements PrimitiveSerializer<EdrInstanceList> {
  @override
  final Iterable<Type> types = const [EdrInstanceList, _$EdrInstanceList];

  @override
  final String wireName = r'EdrInstanceList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdrInstanceList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'instances';
    yield serializers.serialize(
      object.instances,
      specifiedType:
          const FullType(BuiltList, [FullType(EdrInstanceListInstancesInner)]),
    );
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(BuiltList, [FullType(OgcLink)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdrInstanceList object, {
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
    required EdrInstanceListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'instances':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(EdrInstanceListInstancesInner)]),
          ) as BuiltList<EdrInstanceListInstancesInner>;
          result.instances.replace(valueDes);
          break;
        case r'links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(OgcLink)]),
          ) as BuiltList<OgcLink>?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdrInstanceList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdrInstanceListBuilder();
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

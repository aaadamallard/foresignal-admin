//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/velocity_json_component_header.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'velocity_json_component.g.dart';

/// One component (U or V) in leaflet-velocity / wind-js format; data row-major north→south
///
/// Properties:
/// * [header]
/// * [data]
@BuiltValue()
abstract class VelocityJsonComponent
    implements Built<VelocityJsonComponent, VelocityJsonComponentBuilder> {
  @BuiltValueField(wireName: r'header')
  VelocityJsonComponentHeader get header;

  @BuiltValueField(wireName: r'data')
  BuiltList<num?> get data;

  VelocityJsonComponent._();

  factory VelocityJsonComponent([
    void updates(VelocityJsonComponentBuilder b),
  ]) = _$VelocityJsonComponent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VelocityJsonComponentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VelocityJsonComponent> get serializer =>
      _$VelocityJsonComponentSerializer();
}

class _$VelocityJsonComponentSerializer
    implements PrimitiveSerializer<VelocityJsonComponent> {
  @override
  final Iterable<Type> types = const [
    VelocityJsonComponent,
    _$VelocityJsonComponent,
  ];

  @override
  final String wireName = r'VelocityJsonComponent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VelocityJsonComponent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'header';
    yield serializers.serialize(
      object.header,
      specifiedType: const FullType(VelocityJsonComponentHeader),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType.nullable(num)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VelocityJsonComponent object, {
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
    required VelocityJsonComponentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'header':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(VelocityJsonComponentHeader),
                  )
                  as VelocityJsonComponentHeader;
          result.header.replace(valueDes);
          break;
        case r'data':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType.nullable(num),
                    ]),
                  )
                  as BuiltList<num?>;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VelocityJsonComponent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VelocityJsonComponentBuilder();
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

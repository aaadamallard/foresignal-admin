//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ogc_link.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edr_instance_list_instances_inner.g.dart';

/// One run
///
/// Properties:
/// * [id] - Run time, ISO extended
/// * [title]
/// * [extent]
/// * [links]
@BuiltValue()
abstract class EdrInstanceListInstancesInner
    implements
        Built<
          EdrInstanceListInstancesInner,
          EdrInstanceListInstancesInnerBuilder
        > {
  /// Run time, ISO extended
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'extent')
  BuiltMap<String, JsonObject?>? get extent;

  @BuiltValueField(wireName: r'links')
  BuiltList<OgcLink> get links;

  EdrInstanceListInstancesInner._();

  factory EdrInstanceListInstancesInner([
    void updates(EdrInstanceListInstancesInnerBuilder b),
  ]) = _$EdrInstanceListInstancesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdrInstanceListInstancesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdrInstanceListInstancesInner> get serializer =>
      _$EdrInstanceListInstancesInnerSerializer();
}

class _$EdrInstanceListInstancesInnerSerializer
    implements PrimitiveSerializer<EdrInstanceListInstancesInner> {
  @override
  final Iterable<Type> types = const [
    EdrInstanceListInstancesInner,
    _$EdrInstanceListInstancesInner,
  ];

  @override
  final String wireName = r'EdrInstanceListInstancesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdrInstanceListInstancesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.extent != null) {
      yield r'extent';
      yield serializers.serialize(
        object.extent,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    yield r'links';
    yield serializers.serialize(
      object.links,
      specifiedType: const FullType(BuiltList, [FullType(OgcLink)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EdrInstanceListInstancesInner object, {
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
    required EdrInstanceListInstancesInnerBuilder result,
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
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'extent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.extent.replace(valueDes);
          break;
        case r'links':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(OgcLink),
                    ]),
                  )
                  as BuiltList<OgcLink>;
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
  EdrInstanceListInstancesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdrInstanceListInstancesInnerBuilder();
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

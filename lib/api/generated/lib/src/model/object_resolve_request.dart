//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'object_resolve_request.g.dart';

/// Batch of references to resolve
///
/// Properties:
/// * [refs]
/// * [asOf]
@BuiltValue()
abstract class ObjectResolveRequest
    implements Built<ObjectResolveRequest, ObjectResolveRequestBuilder> {
  @BuiltValueField(wireName: r'refs')
  BuiltList<String> get refs;

  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  ObjectResolveRequest._();

  factory ObjectResolveRequest([void updates(ObjectResolveRequestBuilder b)]) =
      _$ObjectResolveRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObjectResolveRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ObjectResolveRequest> get serializer =>
      _$ObjectResolveRequestSerializer();
}

class _$ObjectResolveRequestSerializer
    implements PrimitiveSerializer<ObjectResolveRequest> {
  @override
  final Iterable<Type> types = const [
    ObjectResolveRequest,
    _$ObjectResolveRequest
  ];

  @override
  final String wireName = r'ObjectResolveRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ObjectResolveRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'refs';
    yield serializers.serialize(
      object.refs,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ObjectResolveRequest object, {
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
    required ObjectResolveRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.refs.replace(valueDes);
          break;
        case r'asOf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ObjectResolveRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectResolveRequestBuilder();
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

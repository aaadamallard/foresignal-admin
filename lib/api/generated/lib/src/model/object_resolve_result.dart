//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'object_resolve_result.g.dart';

/// Envelopes for resolvable refs; missing or invisible refs listed, not errors
///
/// Properties:
/// * [items]
/// * [missing]
/// * [asOf]
@BuiltValue()
abstract class ObjectResolveResult
    implements Built<ObjectResolveResult, ObjectResolveResultBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ObjectEnvelope> get items;

  @BuiltValueField(wireName: r'missing')
  BuiltList<String> get missing;

  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  ObjectResolveResult._();

  factory ObjectResolveResult([void updates(ObjectResolveResultBuilder b)]) =
      _$ObjectResolveResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObjectResolveResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ObjectResolveResult> get serializer =>
      _$ObjectResolveResultSerializer();
}

class _$ObjectResolveResultSerializer
    implements PrimitiveSerializer<ObjectResolveResult> {
  @override
  final Iterable<Type> types = const [
    ObjectResolveResult,
    _$ObjectResolveResult,
  ];

  @override
  final String wireName = r'ObjectResolveResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ObjectResolveResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ObjectEnvelope)]),
    );
    yield r'missing';
    yield serializers.serialize(
      object.missing,
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
    ObjectResolveResult object, {
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
    required ObjectResolveResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ObjectEnvelope),
                    ]),
                  )
                  as BuiltList<ObjectEnvelope>;
          result.items.replace(valueDes);
          break;
        case r'missing':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.missing.replace(valueDes);
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
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
  ObjectResolveResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectResolveResultBuilder();
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

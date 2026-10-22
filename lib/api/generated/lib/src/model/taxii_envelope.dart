//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'taxii_envelope.g.dart';

/// TAXII 2.1 envelope of STIX objects
///
/// Properties:
/// * [more]
/// * [next]
/// * [objects]
@BuiltValue()
abstract class TaxiiEnvelope
    implements Built<TaxiiEnvelope, TaxiiEnvelopeBuilder> {
  @BuiltValueField(wireName: r'more')
  bool? get more;

  @BuiltValueField(wireName: r'next')
  String? get next;

  @BuiltValueField(wireName: r'objects')
  BuiltList<BuiltMap<String, JsonObject?>>? get objects;

  TaxiiEnvelope._();

  factory TaxiiEnvelope([void updates(TaxiiEnvelopeBuilder b)]) =
      _$TaxiiEnvelope;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaxiiEnvelopeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TaxiiEnvelope> get serializer =>
      _$TaxiiEnvelopeSerializer();
}

class _$TaxiiEnvelopeSerializer implements PrimitiveSerializer<TaxiiEnvelope> {
  @override
  final Iterable<Type> types = const [TaxiiEnvelope, _$TaxiiEnvelope];

  @override
  final String wireName = r'TaxiiEnvelope';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TaxiiEnvelope object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.more != null) {
      yield r'more';
      yield serializers.serialize(
        object.more,
        specifiedType: const FullType(bool),
      );
    }
    if (object.next != null) {
      yield r'next';
      yield serializers.serialize(
        object.next,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.objects != null) {
      yield r'objects';
      yield serializers.serialize(
        object.objects,
        specifiedType: const FullType(BuiltList, [
          FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TaxiiEnvelope object, {
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
    required TaxiiEnvelopeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'more':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.more = valueDes;
          break;
        case r'next':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.next = valueDes;
          break;
        case r'objects':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(
                  BuiltMap, [FullType(String), FullType.nullable(JsonObject)])
            ]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
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
  TaxiiEnvelope deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaxiiEnvelopeBuilder();
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

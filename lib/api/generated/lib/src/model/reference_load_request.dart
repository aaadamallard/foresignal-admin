//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reference_load_request.g.dart';

/// Datasets to (re)load from the bundled manifest (040)
///
/// Properties:
/// * [datasets]
@BuiltValue()
abstract class ReferenceLoadRequest
    implements Built<ReferenceLoadRequest, ReferenceLoadRequestBuilder> {
  @BuiltValueField(wireName: r'datasets')
  BuiltList<String> get datasets;

  ReferenceLoadRequest._();

  factory ReferenceLoadRequest([void updates(ReferenceLoadRequestBuilder b)]) =
      _$ReferenceLoadRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReferenceLoadRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReferenceLoadRequest> get serializer =>
      _$ReferenceLoadRequestSerializer();
}

class _$ReferenceLoadRequestSerializer
    implements PrimitiveSerializer<ReferenceLoadRequest> {
  @override
  final Iterable<Type> types = const [
    ReferenceLoadRequest,
    _$ReferenceLoadRequest,
  ];

  @override
  final String wireName = r'ReferenceLoadRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReferenceLoadRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'datasets';
    yield serializers.serialize(
      object.datasets,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ReferenceLoadRequest object, {
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
    required ReferenceLoadRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'datasets':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.datasets.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReferenceLoadRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReferenceLoadRequestBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/edition_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_my_editions200_response.g.dart';

/// ListMyEditions200Response
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class ListMyEditions200Response
    implements
        Built<ListMyEditions200Response, ListMyEditions200ResponseBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<EditionSummary> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  ListMyEditions200Response._();

  factory ListMyEditions200Response([
    void updates(ListMyEditions200ResponseBuilder b),
  ]) = _$ListMyEditions200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListMyEditions200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListMyEditions200Response> get serializer =>
      _$ListMyEditions200ResponseSerializer();
}

class _$ListMyEditions200ResponseSerializer
    implements PrimitiveSerializer<ListMyEditions200Response> {
  @override
  final Iterable<Type> types = const [
    ListMyEditions200Response,
    _$ListMyEditions200Response,
  ];

  @override
  final String wireName = r'ListMyEditions200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListMyEditions200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(EditionSummary)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListMyEditions200Response object, {
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
    required ListMyEditions200ResponseBuilder result,
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
                      FullType(EditionSummary),
                    ]),
                  )
                  as BuiltList<EditionSummary>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListMyEditions200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListMyEditions200ResponseBuilder();
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

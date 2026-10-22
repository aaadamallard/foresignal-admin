//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/canonical_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'canonical_event_page.g.dart';

/// A page of canonical events (summaries without observations)
///
/// Properties:
/// * [items]
/// * [nextCursor] - Pass as `cursor` for the next page; null on the last page
@BuiltValue()
abstract class CanonicalEventPage
    implements Built<CanonicalEventPage, CanonicalEventPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<CanonicalEvent> get items;

  /// Pass as `cursor` for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  CanonicalEventPage._();

  factory CanonicalEventPage([void updates(CanonicalEventPageBuilder b)]) =
      _$CanonicalEventPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CanonicalEventPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CanonicalEventPage> get serializer =>
      _$CanonicalEventPageSerializer();
}

class _$CanonicalEventPageSerializer
    implements PrimitiveSerializer<CanonicalEventPage> {
  @override
  final Iterable<Type> types = const [CanonicalEventPage, _$CanonicalEventPage];

  @override
  final String wireName = r'CanonicalEventPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CanonicalEventPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(CanonicalEvent)]),
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
    CanonicalEventPage object, {
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
    required CanonicalEventPageBuilder result,
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
                      FullType(CanonicalEvent),
                    ]),
                  )
                  as BuiltList<CanonicalEvent>;
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
  CanonicalEventPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CanonicalEventPageBuilder();
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

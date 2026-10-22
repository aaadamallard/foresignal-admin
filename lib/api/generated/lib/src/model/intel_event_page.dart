//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/intel_event_summary.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_event_page.g.dart';

/// Keyset page of intelligence events (ordered by updatedAt, id)
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class IntelEventPage
    implements Built<IntelEventPage, IntelEventPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<IntelEventSummary> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  IntelEventPage._();

  factory IntelEventPage([void updates(IntelEventPageBuilder b)]) =
      _$IntelEventPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelEventPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelEventPage> get serializer =>
      _$IntelEventPageSerializer();
}

class _$IntelEventPageSerializer
    implements PrimitiveSerializer<IntelEventPage> {
  @override
  final Iterable<Type> types = const [IntelEventPage, _$IntelEventPage];

  @override
  final String wireName = r'IntelEventPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelEventPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(IntelEventSummary)]),
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
    IntelEventPage object, {
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
    required IntelEventPageBuilder result,
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
                      FullType(IntelEventSummary),
                    ]),
                  )
                  as BuiltList<IntelEventSummary>;
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
  IntelEventPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelEventPageBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/precursor.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_page.g.dart';

/// A page of precursors
///
/// Properties:
/// * [items]
/// * [nextCursor] - Cursor for the next page; null on the last page
@BuiltValue()
abstract class PrecursorPage
    implements Built<PrecursorPage, PrecursorPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<Precursor> get items;

  /// Cursor for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  PrecursorPage._();

  factory PrecursorPage([void updates(PrecursorPageBuilder b)]) =
      _$PrecursorPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorPage> get serializer =>
      _$PrecursorPageSerializer();
}

class _$PrecursorPageSerializer implements PrimitiveSerializer<PrecursorPage> {
  @override
  final Iterable<Type> types = const [PrecursorPage, _$PrecursorPage];

  @override
  final String wireName = r'PrecursorPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Precursor)]),
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
    PrecursorPage object, {
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
    required PrecursorPageBuilder result,
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
                      FullType(Precursor),
                    ]),
                  )
                  as BuiltList<Precursor>;
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
  PrecursorPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorPageBuilder();
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

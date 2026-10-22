//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/analyst_note.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_note_page.g.dart';

/// Page of analyst notes
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null on the last page
@BuiltValue()
abstract class AnalystNotePage
    implements Built<AnalystNotePage, AnalystNotePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<AnalystNote> get items;

  /// Opaque cursor for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  AnalystNotePage._();

  factory AnalystNotePage([void updates(AnalystNotePageBuilder b)]) =
      _$AnalystNotePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystNotePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystNotePage> get serializer =>
      _$AnalystNotePageSerializer();
}

class _$AnalystNotePageSerializer
    implements PrimitiveSerializer<AnalystNotePage> {
  @override
  final Iterable<Type> types = const [AnalystNotePage, _$AnalystNotePage];

  @override
  final String wireName = r'AnalystNotePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystNotePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(AnalystNote)]),
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
    AnalystNotePage object, {
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
    required AnalystNotePageBuilder result,
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
                      FullType(AnalystNote),
                    ]),
                  )
                  as BuiltList<AnalystNote>;
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
  AnalystNotePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystNotePageBuilder();
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

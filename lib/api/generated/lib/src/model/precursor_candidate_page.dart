//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/precursor_candidate.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_candidate_page.g.dart';

/// A page of precursor candidates
///
/// Properties:
/// * [items]
/// * [nextCursor] - Cursor for the next page; null on the last page
@BuiltValue()
abstract class PrecursorCandidatePage
    implements Built<PrecursorCandidatePage, PrecursorCandidatePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<PrecursorCandidate> get items;

  /// Cursor for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  PrecursorCandidatePage._();

  factory PrecursorCandidatePage([
    void updates(PrecursorCandidatePageBuilder b),
  ]) = _$PrecursorCandidatePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorCandidatePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorCandidatePage> get serializer =>
      _$PrecursorCandidatePageSerializer();
}

class _$PrecursorCandidatePageSerializer
    implements PrimitiveSerializer<PrecursorCandidatePage> {
  @override
  final Iterable<Type> types = const [
    PrecursorCandidatePage,
    _$PrecursorCandidatePage,
  ];

  @override
  final String wireName = r'PrecursorCandidatePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorCandidatePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(PrecursorCandidate)]),
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
    PrecursorCandidatePage object, {
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
    required PrecursorCandidatePageBuilder result,
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
                      FullType(PrecursorCandidate),
                    ]),
                  )
                  as BuiltList<PrecursorCandidate>;
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
  PrecursorCandidatePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorCandidatePageBuilder();
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

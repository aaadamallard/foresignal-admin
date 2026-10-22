//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'saved_search_matches_event.g.dart';

/// SSE `saved-search.matches` on the `me` topic (at most hourly per saved search)
///
/// Properties:
/// * [savedSearchId] - ULID identifier
/// * [name]
/// * [newMatches]
/// * [refs]
/// * [at]
@BuiltValue()
abstract class SavedSearchMatchesEvent
    implements Built<SavedSearchMatchesEvent, SavedSearchMatchesEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'savedSearchId')
  String get savedSearchId;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'newMatches')
  int get newMatches;

  @BuiltValueField(wireName: r'refs')
  BuiltList<String>? get refs;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  SavedSearchMatchesEvent._();

  factory SavedSearchMatchesEvent([
    void updates(SavedSearchMatchesEventBuilder b),
  ]) = _$SavedSearchMatchesEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SavedSearchMatchesEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SavedSearchMatchesEvent> get serializer =>
      _$SavedSearchMatchesEventSerializer();
}

class _$SavedSearchMatchesEventSerializer
    implements PrimitiveSerializer<SavedSearchMatchesEvent> {
  @override
  final Iterable<Type> types = const [
    SavedSearchMatchesEvent,
    _$SavedSearchMatchesEvent,
  ];

  @override
  final String wireName = r'SavedSearchMatchesEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SavedSearchMatchesEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'savedSearchId';
    yield serializers.serialize(
      object.savedSearchId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'newMatches';
    yield serializers.serialize(
      object.newMatches,
      specifiedType: const FullType(int),
    );
    if (object.refs != null) {
      yield r'refs';
      yield serializers.serialize(
        object.refs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SavedSearchMatchesEvent object, {
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
    required SavedSearchMatchesEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'savedSearchId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.savedSearchId = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'newMatches':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.newMatches = valueDes;
          break;
        case r'refs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.refs.replace(valueDes);
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SavedSearchMatchesEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SavedSearchMatchesEventBuilder();
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

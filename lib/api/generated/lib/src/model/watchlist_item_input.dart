//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'watchlist_item_input.g.dart';

/// Add or update one watchlist item (036)
///
/// Properties:
/// * [value] - Validated per identity (icao24 6 hex; mmsi 9 digits; imo 7 digits with check digit) and normalised
/// * [label]
/// * [notes]
/// * [tags]
@BuiltValue()
abstract class WatchlistItemInput
    implements Built<WatchlistItemInput, WatchlistItemInputBuilder> {
  /// Validated per identity (icao24 6 hex; mmsi 9 digits; imo 7 digits with check digit) and normalised
  @BuiltValueField(wireName: r'value')
  String get value;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  WatchlistItemInput._();

  factory WatchlistItemInput([void updates(WatchlistItemInputBuilder b)]) =
      _$WatchlistItemInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WatchlistItemInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WatchlistItemInput> get serializer =>
      _$WatchlistItemInputSerializer();
}

class _$WatchlistItemInputSerializer
    implements PrimitiveSerializer<WatchlistItemInput> {
  @override
  final Iterable<Type> types = const [WatchlistItemInput, _$WatchlistItemInput];

  @override
  final String wireName = r'WatchlistItemInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WatchlistItemInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WatchlistItemInput object, {
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
    required WatchlistItemInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.value = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'notes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.notes = valueDes;
          break;
        case r'tags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WatchlistItemInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WatchlistItemInputBuilder();
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

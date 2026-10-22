//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/watchlist_item_input.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'watchlist_items_input.g.dart';

/// Items to add or update (036)
///
/// Properties:
/// * [items]
@BuiltValue()
abstract class WatchlistItemsInput
    implements Built<WatchlistItemsInput, WatchlistItemsInputBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<WatchlistItemInput> get items;

  WatchlistItemsInput._();

  factory WatchlistItemsInput([void updates(WatchlistItemsInputBuilder b)]) =
      _$WatchlistItemsInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WatchlistItemsInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WatchlistItemsInput> get serializer =>
      _$WatchlistItemsInputSerializer();
}

class _$WatchlistItemsInputSerializer
    implements PrimitiveSerializer<WatchlistItemsInput> {
  @override
  final Iterable<Type> types = const [
    WatchlistItemsInput,
    _$WatchlistItemsInput,
  ];

  @override
  final String wireName = r'WatchlistItemsInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WatchlistItemsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(WatchlistItemInput)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WatchlistItemsInput object, {
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
    required WatchlistItemsInputBuilder result,
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
                      FullType(WatchlistItemInput),
                    ]),
                  )
                  as BuiltList<WatchlistItemInput>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WatchlistItemsInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WatchlistItemsInputBuilder();
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

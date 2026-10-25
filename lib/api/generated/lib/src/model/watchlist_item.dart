//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'watchlist_item.g.dart';

/// One watchlist item (036)
///
/// Properties:
/// * [value] - Normalised
/// * [label]
/// * [notes]
/// * [tags]
/// * [addedAt]
/// * [origin]
@BuiltValue()
abstract class WatchlistItem
    implements Built<WatchlistItem, WatchlistItemBuilder> {
  /// Normalised
  @BuiltValueField(wireName: r'value')
  String get value;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'addedAt')
  DateTime get addedAt;

  @BuiltValueField(wireName: r'origin')
  WatchlistItemOriginEnum get origin;
  // enum originEnum {  manual,  csv,  json,  };

  WatchlistItem._();

  factory WatchlistItem([void updates(WatchlistItemBuilder b)]) =
      _$WatchlistItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WatchlistItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WatchlistItem> get serializer =>
      _$WatchlistItemSerializer();
}

class _$WatchlistItemSerializer implements PrimitiveSerializer<WatchlistItem> {
  @override
  final Iterable<Type> types = const [WatchlistItem, _$WatchlistItem];

  @override
  final String wireName = r'WatchlistItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WatchlistItem object, {
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
    yield r'addedAt';
    yield serializers.serialize(
      object.addedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'origin';
    yield serializers.serialize(
      object.origin,
      specifiedType: const FullType(WatchlistItemOriginEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WatchlistItem object, {
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
    required WatchlistItemBuilder result,
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
        case r'addedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.addedAt = valueDes;
          break;
        case r'origin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(WatchlistItemOriginEnum),
                  )
                  as WatchlistItemOriginEnum;
          result.origin = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WatchlistItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WatchlistItemBuilder();
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

class WatchlistItemOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'manual')
  static const WatchlistItemOriginEnum manual =
      _$watchlistItemOriginEnum_manual;
  @BuiltValueEnumConst(wireName: r'csv')
  static const WatchlistItemOriginEnum csv = _$watchlistItemOriginEnum_csv;
  @BuiltValueEnumConst(wireName: r'json')
  static const WatchlistItemOriginEnum json = _$watchlistItemOriginEnum_json;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const WatchlistItemOriginEnum unknownDefaultOpenApi =
      _$watchlistItemOriginEnum_unknownDefaultOpenApi;

  static Serializer<WatchlistItemOriginEnum> get serializer =>
      _$watchlistItemOriginEnumSerializer;

  const WatchlistItemOriginEnum._(String name) : super(name);

  static BuiltSet<WatchlistItemOriginEnum> get values =>
      _$watchlistItemOriginEnumValues;
  static WatchlistItemOriginEnum valueOf(String name) =>
      _$watchlistItemOriginEnumValueOf(name);
}

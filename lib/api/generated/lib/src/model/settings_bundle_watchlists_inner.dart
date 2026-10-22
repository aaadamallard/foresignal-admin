//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/watchlist.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/watchlist_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'settings_bundle_watchlists_inner.g.dart';

/// Watchlist with items
///
/// Properties:
/// * [watchlist]
/// * [items]
@BuiltValue()
abstract class SettingsBundleWatchlistsInner
    implements
        Built<SettingsBundleWatchlistsInner,
            SettingsBundleWatchlistsInnerBuilder> {
  @BuiltValueField(wireName: r'watchlist')
  Watchlist? get watchlist;

  @BuiltValueField(wireName: r'items')
  BuiltList<WatchlistItem>? get items;

  SettingsBundleWatchlistsInner._();

  factory SettingsBundleWatchlistsInner(
          [void updates(SettingsBundleWatchlistsInnerBuilder b)]) =
      _$SettingsBundleWatchlistsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SettingsBundleWatchlistsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SettingsBundleWatchlistsInner> get serializer =>
      _$SettingsBundleWatchlistsInnerSerializer();
}

class _$SettingsBundleWatchlistsInnerSerializer
    implements PrimitiveSerializer<SettingsBundleWatchlistsInner> {
  @override
  final Iterable<Type> types = const [
    SettingsBundleWatchlistsInner,
    _$SettingsBundleWatchlistsInner
  ];

  @override
  final String wireName = r'SettingsBundleWatchlistsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SettingsBundleWatchlistsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.watchlist != null) {
      yield r'watchlist';
      yield serializers.serialize(
        object.watchlist,
        specifiedType: const FullType(Watchlist),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(WatchlistItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SettingsBundleWatchlistsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SettingsBundleWatchlistsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'watchlist':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Watchlist),
          ) as Watchlist?;
          if (valueDes == null) continue;
          result.watchlist.replace(valueDes);
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(WatchlistItem)]),
          ) as BuiltList<WatchlistItem>?;
          if (valueDes == null) continue;
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
  SettingsBundleWatchlistsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SettingsBundleWatchlistsInnerBuilder();
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

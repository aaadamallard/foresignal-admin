//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_stream_changes_filter.g.dart';

/// Filter block for the `changes` topic of /v1/events/stream (same semantics as /v1/changes/stream)
///
/// Properties:
/// * [source_] - Source ids
/// * [kind] - Kinds
/// * [externalId] - External ids
/// * [bbox] - minLon,minLat,maxLon,maxLat; minLon > maxLon crosses the antimeridian
/// * [near] - `lon,lat`; requires radiusKm
/// * [radiusKm]
/// * [live] - Send `live` events
/// * [touches] - Send `touch` events
/// * [payload] - Include payloads on `change` events
/// * [place] - Place ids (036): their areas (buffered by radiusKm when near is absent); needs a token
/// * [view] - Saved view id or slug (036); a view referencing a place or watchlist needs a token
/// * [inWatchlist] - Watchlist id (036); needs a token
@BuiltValue()
abstract class EventStreamChangesFilter
    implements
        Built<EventStreamChangesFilter, EventStreamChangesFilterBuilder> {
  /// Source ids
  @BuiltValueField(wireName: r'source')
  BuiltList<String>? get source_;

  /// Kinds
  @BuiltValueField(wireName: r'kind')
  BuiltList<String>? get kind;

  /// External ids
  @BuiltValueField(wireName: r'externalId')
  BuiltList<String>? get externalId;

  /// minLon,minLat,maxLon,maxLat; minLon > maxLon crosses the antimeridian
  @BuiltValueField(wireName: r'bbox')
  String? get bbox;

  /// `lon,lat`; requires radiusKm
  @BuiltValueField(wireName: r'near')
  String? get near;

  @BuiltValueField(wireName: r'radiusKm')
  num? get radiusKm;

  /// Send `live` events
  @BuiltValueField(wireName: r'live')
  bool? get live;

  /// Send `touch` events
  @BuiltValueField(wireName: r'touches')
  bool? get touches;

  /// Include payloads on `change` events
  @BuiltValueField(wireName: r'payload')
  bool? get payload;

  /// Place ids (036): their areas (buffered by radiusKm when near is absent); needs a token
  @BuiltValueField(wireName: r'place')
  BuiltList<String>? get place;

  /// Saved view id or slug (036); a view referencing a place or watchlist needs a token
  @BuiltValueField(wireName: r'view')
  String? get view;

  /// Watchlist id (036); needs a token
  @BuiltValueField(wireName: r'inWatchlist')
  String? get inWatchlist;

  EventStreamChangesFilter._();

  factory EventStreamChangesFilter(
          [void updates(EventStreamChangesFilterBuilder b)]) =
      _$EventStreamChangesFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventStreamChangesFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventStreamChangesFilter> get serializer =>
      _$EventStreamChangesFilterSerializer();
}

class _$EventStreamChangesFilterSerializer
    implements PrimitiveSerializer<EventStreamChangesFilter> {
  @override
  final Iterable<Type> types = const [
    EventStreamChangesFilter,
    _$EventStreamChangesFilter
  ];

  @override
  final String wireName = r'EventStreamChangesFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventStreamChangesFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.externalId != null) {
      yield r'externalId';
      yield serializers.serialize(
        object.externalId,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.near != null) {
      yield r'near';
      yield serializers.serialize(
        object.near,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.radiusKm != null) {
      yield r'radiusKm';
      yield serializers.serialize(
        object.radiusKm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.live != null) {
      yield r'live';
      yield serializers.serialize(
        object.live,
        specifiedType: const FullType(bool),
      );
    }
    if (object.touches != null) {
      yield r'touches';
      yield serializers.serialize(
        object.touches,
        specifiedType: const FullType(bool),
      );
    }
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType(bool),
      );
    }
    if (object.place != null) {
      yield r'place';
      yield serializers.serialize(
        object.place,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.view != null) {
      yield r'view';
      yield serializers.serialize(
        object.view,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.inWatchlist != null) {
      yield r'inWatchlist';
      yield serializers.serialize(
        object.inWatchlist,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EventStreamChangesFilter object, {
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
    required EventStreamChangesFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.source_.replace(valueDes);
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.kind.replace(valueDes);
          break;
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.externalId.replace(valueDes);
          break;
        case r'bbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bbox = valueDes;
          break;
        case r'near':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.near = valueDes;
          break;
        case r'radiusKm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.radiusKm = valueDes;
          break;
        case r'live':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.live = valueDes;
          break;
        case r'touches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.touches = valueDes;
          break;
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.payload = valueDes;
          break;
        case r'place':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.place.replace(valueDes);
          break;
        case r'view':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.view = valueDes;
          break;
        case r'inWatchlist':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.inWatchlist = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventStreamChangesFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventStreamChangesFilterBuilder();
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

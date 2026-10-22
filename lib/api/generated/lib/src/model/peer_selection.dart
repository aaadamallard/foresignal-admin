//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'peer_selection.g.dart';

/// Selective replication from a peer; remote filters are passed as query parameters and re-checked locally (113)
///
/// Properties:
/// * [sources]
/// * [kinds]
/// * [bbox] - [minLon, minLat, maxLon, maxLat] (WGS84)
/// * [placeId]
/// * [maxAge] - Drop items whose observedAt is older than this. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
/// * [backfill] - `none` (current snapshot only) or a duration of history to page from /changes
/// * [live] - Also receive the live lane
/// * [maxHops]
/// * [trackTtl] - TTL of peer-{id}-trk when the remote kind's TTL is unknown. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
@BuiltValue()
abstract class PeerSelection
    implements Built<PeerSelection, PeerSelectionBuilder> {
  @BuiltValueField(wireName: r'sources')
  BuiltList<String>? get sources;

  @BuiltValueField(wireName: r'kinds')
  BuiltList<String>? get kinds;

  /// [minLon, minLat, maxLon, maxLat] (WGS84)
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  /// Drop items whose observedAt is older than this. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
  @BuiltValueField(wireName: r'maxAge')
  String? get maxAge;

  /// `none` (current snapshot only) or a duration of history to page from /changes
  @BuiltValueField(wireName: r'backfill')
  String? get backfill;

  /// Also receive the live lane
  @BuiltValueField(wireName: r'live')
  bool? get live;

  @BuiltValueField(wireName: r'maxHops')
  int? get maxHops;

  /// TTL of peer-{id}-trk when the remote kind's TTL is unknown. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
  @BuiltValueField(wireName: r'trackTtl')
  String? get trackTtl;

  PeerSelection._();

  factory PeerSelection([void updates(PeerSelectionBuilder b)]) =
      _$PeerSelection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PeerSelectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PeerSelection> get serializer =>
      _$PeerSelectionSerializer();
}

class _$PeerSelectionSerializer implements PrimitiveSerializer<PeerSelection> {
  @override
  final Iterable<Type> types = const [PeerSelection, _$PeerSelection];

  @override
  final String wireName = r'PeerSelection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PeerSelection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.kinds != null) {
      yield r'kinds';
      yield serializers.serialize(
        object.kinds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.maxAge != null) {
      yield r'maxAge';
      yield serializers.serialize(
        object.maxAge,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.backfill != null) {
      yield r'backfill';
      yield serializers.serialize(
        object.backfill,
        specifiedType: const FullType(String),
      );
    }
    if (object.live != null) {
      yield r'live';
      yield serializers.serialize(
        object.live,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maxHops != null) {
      yield r'maxHops';
      yield serializers.serialize(
        object.maxHops,
        specifiedType: const FullType(int),
      );
    }
    if (object.trackTtl != null) {
      yield r'trackTtl';
      yield serializers.serialize(
        object.trackTtl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PeerSelection object, {
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
    required PeerSelectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        case r'kinds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.kinds.replace(valueDes);
          break;
        case r'bbox':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(num),
                    ]),
                  )
                  as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        case r'placeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
          break;
        case r'maxAge':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.maxAge = valueDes;
          break;
        case r'backfill':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.backfill = valueDes;
          break;
        case r'live':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.live = valueDes;
          break;
        case r'maxHops':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxHops = valueDes;
          break;
        case r'trackTtl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.trackTtl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PeerSelection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PeerSelectionBuilder();
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

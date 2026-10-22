//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sink_filter.g.dart';

/// Which records a sink receives (110)
///
/// Properties:
/// * [sources]
/// * [kinds]
/// * [bbox] - [minLon, minLat, maxLon, maxLat] (WGS84)
/// * [placeId] - Place (036) whose geometry filters records
/// * [watchlistId] - Watchlist (036) whose members are delivered
/// * [includePrivate] - Include private sources (039); allowed only for SERVE on loopback or a PUSH target that resolves to a private address
@BuiltValue()
abstract class SinkFilter implements Built<SinkFilter, SinkFilterBuilder> {
  @BuiltValueField(wireName: r'sources')
  BuiltList<String>? get sources;

  @BuiltValueField(wireName: r'kinds')
  BuiltList<String>? get kinds;

  /// [minLon, minLat, maxLon, maxLat] (WGS84)
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  /// Place (036) whose geometry filters records
  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  /// Watchlist (036) whose members are delivered
  @BuiltValueField(wireName: r'watchlistId')
  String? get watchlistId;

  /// Include private sources (039); allowed only for SERVE on loopback or a PUSH target that resolves to a private address
  @BuiltValueField(wireName: r'includePrivate')
  bool? get includePrivate;

  SinkFilter._();

  factory SinkFilter([void updates(SinkFilterBuilder b)]) = _$SinkFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SinkFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SinkFilter> get serializer => _$SinkFilterSerializer();
}

class _$SinkFilterSerializer implements PrimitiveSerializer<SinkFilter> {
  @override
  final Iterable<Type> types = const [SinkFilter, _$SinkFilter];

  @override
  final String wireName = r'SinkFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SinkFilter object, {
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
    if (object.watchlistId != null) {
      yield r'watchlistId';
      yield serializers.serialize(
        object.watchlistId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.includePrivate != null) {
      yield r'includePrivate';
      yield serializers.serialize(
        object.includePrivate,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SinkFilter object, {
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
    required SinkFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        case r'kinds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.kinds.replace(valueDes);
          break;
        case r'bbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        case r'placeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
          break;
        case r'watchlistId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.watchlistId = valueDes;
          break;
        case r'includePrivate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.includePrivate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SinkFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SinkFilterBuilder();
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

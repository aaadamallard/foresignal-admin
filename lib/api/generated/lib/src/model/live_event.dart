//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/quality.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'live_event.g.dart';

/// SSE `live` event: a non-persisted position or kinematic update (conflated per entity, no `id:` line)
///
/// Properties:
/// * [sourceId]
/// * [externalId]
/// * [kind]
/// * [observedAt]
/// * [validUntil]
/// * [version] - Persisted version this live state builds on
/// * [geometry]
/// * [bbox] - Current bounding box
/// * [prevBbox] - Bounding box before this update (used by the spatial filter)
/// * [properties] - Kinematic (non-significant) properties after this update, over the persisted payload; a JSON null value means the key was removed
/// * [quality]
/// * [leftFilter] - True when only `prevBbox` matched the spatial filter: remove the feature
@BuiltValue()
abstract class LiveEvent implements Built<LiveEvent, LiveEventBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'kind')
  String get kind;

  @BuiltValueField(wireName: r'observedAt')
  DateTime get observedAt;

  @BuiltValueField(wireName: r'validUntil')
  DateTime? get validUntil;

  /// Persisted version this live state builds on
  @BuiltValueField(wireName: r'version')
  int get version;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  /// Current bounding box
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  /// Bounding box before this update (used by the spatial filter)
  @BuiltValueField(wireName: r'prevBbox')
  BuiltList<num>? get prevBbox;

  /// Kinematic (non-significant) properties after this update, over the persisted payload; a JSON null value means the key was removed
  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, JsonObject?>? get properties;

  @BuiltValueField(wireName: r'quality')
  Quality? get quality;

  /// True when only `prevBbox` matched the spatial filter: remove the feature
  @BuiltValueField(wireName: r'leftFilter')
  bool? get leftFilter;

  LiveEvent._();

  factory LiveEvent([void updates(LiveEventBuilder b)]) = _$LiveEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LiveEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LiveEvent> get serializer => _$LiveEventSerializer();
}

class _$LiveEventSerializer implements PrimitiveSerializer<LiveEvent> {
  @override
  final Iterable<Type> types = const [LiveEvent, _$LiveEvent];

  @override
  final String wireName = r'LiveEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LiveEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    yield r'observedAt';
    yield serializers.serialize(
      object.observedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.validUntil != null) {
      yield r'validUntil';
      yield serializers.serialize(
        object.validUntil,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.prevBbox != null) {
      yield r'prevBbox';
      yield serializers.serialize(
        object.prevBbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.properties != null) {
      yield r'properties';
      yield serializers.serialize(
        object.properties,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType.nullable(Quality),
      );
    }
    if (object.leftFilter != null) {
      yield r'leftFilter';
      yield serializers.serialize(
        object.leftFilter,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LiveEvent object, {
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
    required LiveEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.externalId = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.kind = valueDes;
          break;
        case r'observedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.observedAt = valueDes;
          break;
        case r'validUntil':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.validUntil = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.version = valueDes;
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
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
        case r'prevBbox':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(num),
                    ]),
                  )
                  as BuiltList<num>?;
          if (valueDes == null) continue;
          result.prevBbox.replace(valueDes);
          break;
        case r'properties':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.properties.replace(valueDes);
          break;
        case r'quality':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Quality),
                  )
                  as Quality?;
          if (valueDes == null) continue;
          result.quality.replace(valueDes);
          break;
        case r'leftFilter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.leftFilter = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LiveEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LiveEventBuilder();
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

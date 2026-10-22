//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/persist_reason.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feature_properties.g.dart';

/// FeatureProperties
///
/// Properties:
/// * [source_]
/// * [externalId]
/// * [kind]
/// * [title]
/// * [version]
/// * [seq]
/// * [observedAt]
/// * [validUntil]
/// * [live] - record_live.dirty
/// * [distanceKm]
/// * [payload]
/// * [near] - Region near text with include=region (040)
/// * [ingestedAt] - Version-based features only (history and asOf): the batch time of the version
/// * [persistReason]
@BuiltValue()
abstract class FeatureProperties
    implements Built<FeatureProperties, FeaturePropertiesBuilder> {
  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'externalId')
  String? get externalId;

  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'version')
  int? get version;

  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'observedAt')
  DateTime? get observedAt;

  @BuiltValueField(wireName: r'validUntil')
  DateTime? get validUntil;

  /// record_live.dirty
  @BuiltValueField(wireName: r'live')
  bool? get live;

  @BuiltValueField(wireName: r'distanceKm')
  num? get distanceKm;

  @BuiltValueField(wireName: r'payload')
  BuiltMap<String, JsonObject?>? get payload;

  /// Region near text with include=region (040)
  @BuiltValueField(wireName: r'near')
  String? get near;

  /// Version-based features only (history and asOf): the batch time of the version
  @BuiltValueField(wireName: r'ingestedAt')
  DateTime? get ingestedAt;

  @BuiltValueField(wireName: r'persistReason')
  PersistReason? get persistReason;
  // enum persistReasonEnum {  FIRST,  REAPPEAR,  SIGNIFICANT,  TOMBSTONE,  CHANGE,  SAMPLE,  KEYFRAME,  HEARTBEAT,  TRIGGER_EDGE,  };

  FeatureProperties._();

  factory FeatureProperties([void updates(FeaturePropertiesBuilder b)]) =
      _$FeatureProperties;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FeaturePropertiesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FeatureProperties> get serializer =>
      _$FeaturePropertiesSerializer();
}

class _$FeaturePropertiesSerializer
    implements PrimitiveSerializer<FeatureProperties> {
  @override
  final Iterable<Type> types = const [FeatureProperties, _$FeatureProperties];

  @override
  final String wireName = r'FeatureProperties';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FeatureProperties object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.externalId != null) {
      yield r'externalId';
      yield serializers.serialize(
        object.externalId,
        specifiedType: const FullType(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(
        object.seq,
        specifiedType: const FullType(int),
      );
    }
    if (object.observedAt != null) {
      yield r'observedAt';
      yield serializers.serialize(
        object.observedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.validUntil != null) {
      yield r'validUntil';
      yield serializers.serialize(
        object.validUntil,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.live != null) {
      yield r'live';
      yield serializers.serialize(
        object.live,
        specifiedType: const FullType(bool),
      );
    }
    if (object.distanceKm != null) {
      yield r'distanceKm';
      yield serializers.serialize(
        object.distanceKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.near != null) {
      yield r'near';
      yield serializers.serialize(
        object.near,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ingestedAt != null) {
      yield r'ingestedAt';
      yield serializers.serialize(
        object.ingestedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.persistReason != null) {
      yield r'persistReason';
      yield serializers.serialize(
        object.persistReason,
        specifiedType: const FullType(PersistReason),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FeatureProperties object, {
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
    required FeaturePropertiesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.externalId = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'seq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.seq = valueDes;
          break;
        case r'observedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
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
        case r'distanceKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.distanceKm = valueDes;
          break;
        case r'payload':
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
          result.payload.replace(valueDes);
          break;
        case r'near':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.near = valueDes;
          break;
        case r'ingestedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.ingestedAt = valueDes;
          break;
        case r'persistReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PersistReason),
                  )
                  as PersistReason?;
          if (valueDes == null) continue;
          result.persistReason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FeatureProperties deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FeaturePropertiesBuilder();
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

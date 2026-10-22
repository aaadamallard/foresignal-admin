//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/record_mapping_pairs.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/record_mapping_quality.dart';
import 'package:foresignal_api/src/model/record_mapping_filter_inner.dart';
import 'package:foresignal_api/src/model/record_mapping_spread.dart';
import 'package:foresignal_api/src/model/record_mapping_tombstone.dart';
import 'package:foresignal_api/src/model/mapping_field.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'record_mapping.g.dart';

/// Declarative mapping from an inbound JSON, form or query-string payload to normalized records (059). Data, not script: no expression language. JSONPath is the Jayway dialect (`$` is the document, or the current item under `select`; `['a-b']` quotes a member name); deep scan (`..`), function calls and regex filters (`=~`) are rejected. Unknown members are rejected.
///
/// Properties:
/// * [version]
/// * [select] - Optional JSONPath producing an array; one record per item, other paths item-relative
/// * [externalId] - One mapping value: a Jayway JSONPath (item-relative under `select`; `$pairs.<key>` reads a flattened pair), a substitution-only template, or a constant (059)
/// * [kind] - Required unless the source has exactly one kind
/// * [observedAt] - Time value: a path with a format and zone, or the receive time. Must agree with the source's `observedAtMode` (059)
/// * [eventTime] - Time value: a path with a format and zone, or the receive time. Must agree with the source's `observedAtMode` (059)
/// * [validUntil] - Time value: a path with a format and zone, or the receive time. Must agree with the source's `observedAtMode` (059)
/// * [geometry] - Point from lon/lat specs, a GeoJSON geometry at a path, a constant point, or null (omitted). A coordinate outside the valid range (an AIS sentinel such as lat 91 or lon 181) leaves the geometry out with a GEOMETRY_OUT_OF_RANGE warning. `fallback` (059) is the point used when the mapped values give none, such as a LoRaWAN device's configured position.
/// * [tombstone]
/// * [quality]
/// * [fields] - Payload fields, in order. A name may repeat: the first entry with a value wins (several sensors feeding one field, e.g. airrohr `pm25` from SDS011, PMS or SPS30). A value that cannot be coerced to `type`, or is NaN or infinite, leaves that field out with a FIELD_REJECTED warning.
/// * [pairs]
/// * [drop] - Input keys never stored (secrets, device identifiers)
/// * [filter] - Records failing any condition are skipped and counted
/// * [spread]
@BuiltValue()
abstract class RecordMapping
    implements Built<RecordMapping, RecordMappingBuilder> {
  @BuiltValueField(wireName: r'version')
  RecordMappingVersionEnum get version;
  // enum versionEnum {  1,  };

  /// Optional JSONPath producing an array; one record per item, other paths item-relative
  @BuiltValueField(wireName: r'select')
  String? get select;

  /// One mapping value: a Jayway JSONPath (item-relative under `select`; `$pairs.<key>` reads a flattened pair), a substitution-only template, or a constant (059)
  @BuiltValueField(wireName: r'externalId')
  JsonObject? get externalId;

  /// Required unless the source has exactly one kind
  @BuiltValueField(wireName: r'kind')
  JsonObject? get kind;

  /// Time value: a path with a format and zone, or the receive time. Must agree with the source's `observedAtMode` (059)
  @BuiltValueField(wireName: r'observedAt')
  JsonObject? get observedAt;

  /// Time value: a path with a format and zone, or the receive time. Must agree with the source's `observedAtMode` (059)
  @BuiltValueField(wireName: r'eventTime')
  JsonObject? get eventTime;

  /// Time value: a path with a format and zone, or the receive time. Must agree with the source's `observedAtMode` (059)
  @BuiltValueField(wireName: r'validUntil')
  JsonObject? get validUntil;

  /// Point from lon/lat specs, a GeoJSON geometry at a path, a constant point, or null (omitted). A coordinate outside the valid range (an AIS sentinel such as lat 91 or lon 181) leaves the geometry out with a GEOMETRY_OUT_OF_RANGE warning. `fallback` (059) is the point used when the mapped values give none, such as a LoRaWAN device's configured position.
  @BuiltValueField(wireName: r'geometry')
  JsonObject? get geometry;

  @BuiltValueField(wireName: r'tombstone')
  RecordMappingTombstone? get tombstone;

  @BuiltValueField(wireName: r'quality')
  RecordMappingQuality? get quality;

  /// Payload fields, in order. A name may repeat: the first entry with a value wins (several sensors feeding one field, e.g. airrohr `pm25` from SDS011, PMS or SPS30). A value that cannot be coerced to `type`, or is NaN or infinite, leaves that field out with a FIELD_REJECTED warning.
  @BuiltValueField(wireName: r'fields')
  BuiltList<MappingField>? get fields;

  @BuiltValueField(wireName: r'pairs')
  RecordMappingPairs? get pairs;

  /// Input keys never stored (secrets, device identifiers)
  @BuiltValueField(wireName: r'drop')
  BuiltList<String>? get drop;

  /// Records failing any condition are skipped and counted
  @BuiltValueField(wireName: r'filter')
  BuiltList<RecordMappingFilterInner>? get filter;

  @BuiltValueField(wireName: r'spread')
  RecordMappingSpread? get spread;

  RecordMapping._();

  factory RecordMapping([void updates(RecordMappingBuilder b)]) =
      _$RecordMapping;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecordMappingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecordMapping> get serializer =>
      _$RecordMappingSerializer();
}

class _$RecordMappingSerializer implements PrimitiveSerializer<RecordMapping> {
  @override
  final Iterable<Type> types = const [RecordMapping, _$RecordMapping];

  @override
  final String wireName = r'RecordMapping';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecordMapping object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(RecordMappingVersionEnum),
    );
    if (object.select != null) {
      yield r'select';
      yield serializers.serialize(
        object.select,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'externalId';
    yield object.externalId == null
        ? null
        : serializers.serialize(
            object.externalId,
            specifiedType: const FullType.nullable(JsonObject),
          );
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    yield r'observedAt';
    yield object.observedAt == null
        ? null
        : serializers.serialize(
            object.observedAt,
            specifiedType: const FullType.nullable(JsonObject),
          );
    if (object.eventTime != null) {
      yield r'eventTime';
      yield serializers.serialize(
        object.eventTime,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.validUntil != null) {
      yield r'validUntil';
      yield serializers.serialize(
        object.validUntil,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.tombstone != null) {
      yield r'tombstone';
      yield serializers.serialize(
        object.tombstone,
        specifiedType: const FullType.nullable(RecordMappingTombstone),
      );
    }
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType.nullable(RecordMappingQuality),
      );
    }
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(BuiltList, [FullType(MappingField)]),
      );
    }
    if (object.pairs != null) {
      yield r'pairs';
      yield serializers.serialize(
        object.pairs,
        specifiedType: const FullType.nullable(RecordMappingPairs),
      );
    }
    if (object.drop != null) {
      yield r'drop';
      yield serializers.serialize(
        object.drop,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.filter != null) {
      yield r'filter';
      yield serializers.serialize(
        object.filter,
        specifiedType: const FullType(BuiltList, [
          FullType(RecordMappingFilterInner),
        ]),
      );
    }
    if (object.spread != null) {
      yield r'spread';
      yield serializers.serialize(
        object.spread,
        specifiedType: const FullType.nullable(RecordMappingSpread),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecordMapping object, {
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
    required RecordMappingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(RecordMappingVersionEnum),
                  )
                  as RecordMappingVersionEnum;
          result.version = valueDes;
          break;
        case r'select':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.select = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.externalId = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'observedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.observedAt = valueDes;
          break;
        case r'eventTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.eventTime = valueDes;
          break;
        case r'validUntil':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.validUntil = valueDes;
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.geometry = valueDes;
          break;
        case r'tombstone':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RecordMappingTombstone,
                    ),
                  )
                  as RecordMappingTombstone?;
          if (valueDes == null) continue;
          result.tombstone.replace(valueDes);
          break;
        case r'quality':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RecordMappingQuality,
                    ),
                  )
                  as RecordMappingQuality?;
          if (valueDes == null) continue;
          result.quality.replace(valueDes);
          break;
        case r'fields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(MappingField),
                    ]),
                  )
                  as BuiltList<MappingField>?;
          if (valueDes == null) continue;
          result.fields.replace(valueDes);
          break;
        case r'pairs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(RecordMappingPairs),
                  )
                  as RecordMappingPairs?;
          if (valueDes == null) continue;
          result.pairs.replace(valueDes);
          break;
        case r'drop':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.drop.replace(valueDes);
          break;
        case r'filter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RecordMappingFilterInner),
                    ]),
                  )
                  as BuiltList<RecordMappingFilterInner>?;
          if (valueDes == null) continue;
          result.filter.replace(valueDes);
          break;
        case r'spread':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(RecordMappingSpread),
                  )
                  as RecordMappingSpread?;
          if (valueDes == null) continue;
          result.spread.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecordMapping deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordMappingBuilder();
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

class RecordMappingVersionEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 1)
  static const RecordMappingVersionEnum number1 =
      _$recordMappingVersionEnum_number1;

  static Serializer<RecordMappingVersionEnum> get serializer =>
      _$recordMappingVersionEnumSerializer;

  const RecordMappingVersionEnum._(String name) : super(name);

  static BuiltSet<RecordMappingVersionEnum> get values =>
      _$recordMappingVersionEnumValues;
  static RecordMappingVersionEnum valueOf(String name) =>
      _$recordMappingVersionEnumValueOf(name);
}

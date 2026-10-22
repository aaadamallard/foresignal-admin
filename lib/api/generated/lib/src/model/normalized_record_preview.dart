//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/quality.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/normalized_record_preview_geometry.dart';
import 'package:foresignal_api/src/model/observer.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'normalized_record_preview.g.dart';

/// NormalizedRecordPreview
///
/// Properties:
/// * [externalId]
/// * [kind]
/// * [observedAt]
/// * [geometry]
/// * [validUntil]
/// * [tombstone]
/// * [payload]
/// * [eventTime]
/// * [validFrom]
/// * [quality]
/// * [observers]
@BuiltValue()
abstract class NormalizedRecordPreview
    implements Built<NormalizedRecordPreview, NormalizedRecordPreviewBuilder> {
  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'kind')
  String get kind;

  @BuiltValueField(wireName: r'observedAt')
  DateTime get observedAt;

  @BuiltValueField(wireName: r'geometry')
  NormalizedRecordPreviewGeometry? get geometry;

  @BuiltValueField(wireName: r'validUntil')
  DateTime? get validUntil;

  @BuiltValueField(wireName: r'tombstone')
  bool? get tombstone;

  @BuiltValueField(wireName: r'payload')
  BuiltMap<String, JsonObject?> get payload;

  @BuiltValueField(wireName: r'eventTime')
  DateTime? get eventTime;

  @BuiltValueField(wireName: r'validFrom')
  DateTime? get validFrom;

  @BuiltValueField(wireName: r'quality')
  Quality? get quality;

  @BuiltValueField(wireName: r'observers')
  BuiltList<Observer>? get observers;

  NormalizedRecordPreview._();

  factory NormalizedRecordPreview([
    void updates(NormalizedRecordPreviewBuilder b),
  ]) = _$NormalizedRecordPreview;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NormalizedRecordPreviewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NormalizedRecordPreview> get serializer =>
      _$NormalizedRecordPreviewSerializer();
}

class _$NormalizedRecordPreviewSerializer
    implements PrimitiveSerializer<NormalizedRecordPreview> {
  @override
  final Iterable<Type> types = const [
    NormalizedRecordPreview,
    _$NormalizedRecordPreview,
  ];

  @override
  final String wireName = r'NormalizedRecordPreview';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NormalizedRecordPreview object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(NormalizedRecordPreviewGeometry),
      );
    }
    if (object.validUntil != null) {
      yield r'validUntil';
      yield serializers.serialize(
        object.validUntil,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.tombstone != null) {
      yield r'tombstone';
      yield serializers.serialize(
        object.tombstone,
        specifiedType: const FullType(bool),
      );
    }
    yield r'payload';
    yield serializers.serialize(
      object.payload,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType.nullable(JsonObject),
      ]),
    );
    if (object.eventTime != null) {
      yield r'eventTime';
      yield serializers.serialize(
        object.eventTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.validFrom != null) {
      yield r'validFrom';
      yield serializers.serialize(
        object.validFrom,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType.nullable(Quality),
      );
    }
    if (object.observers != null) {
      yield r'observers';
      yield serializers.serialize(
        object.observers,
        specifiedType: const FullType(BuiltList, [FullType(Observer)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NormalizedRecordPreview object, {
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
    required NormalizedRecordPreviewBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NormalizedRecordPreviewGeometry,
                    ),
                  )
                  as NormalizedRecordPreviewGeometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
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
        case r'tombstone':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.tombstone = valueDes;
          break;
        case r'payload':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>;
          result.payload.replace(valueDes);
          break;
        case r'eventTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.eventTime = valueDes;
          break;
        case r'validFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.validFrom = valueDes;
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
        case r'observers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Observer),
                    ]),
                  )
                  as BuiltList<Observer>?;
          if (valueDes == null) continue;
          result.observers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NormalizedRecordPreview deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NormalizedRecordPreviewBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/chronicle_summary_layers_inner.dart';
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/chronicle_summary_storage.dart';
import 'package:foresignal_api/src/model/chronicle_summary_top_entities_inner.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:foresignal_api/src/model/chronicle_summary_gaps_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_summary.g.dart';

/// Summary of a chronicle's capture (reused by 132 reports)
///
/// Properties:
/// * [chronicleId] - ULID identifier
/// * [span]
/// * [layers]
/// * [topEntities]
/// * [situations]
/// * [hypothesisSets]
/// * [forecasts]
/// * [storage]
/// * [gaps]
@BuiltValue()
abstract class ChronicleSummary
    implements Built<ChronicleSummary, ChronicleSummaryBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'chronicleId')
  String get chronicleId;

  @BuiltValueField(wireName: r'span')
  TimeRange get span;

  @BuiltValueField(wireName: r'layers')
  BuiltList<ChronicleSummaryLayersInner> get layers;

  @BuiltValueField(wireName: r'topEntities')
  BuiltList<ChronicleSummaryTopEntitiesInner>? get topEntities;

  @BuiltValueField(wireName: r'situations')
  BuiltList<ObjectEnvelope>? get situations;

  @BuiltValueField(wireName: r'hypothesisSets')
  BuiltList<ObjectEnvelope>? get hypothesisSets;

  @BuiltValueField(wireName: r'forecasts')
  BuiltList<ObjectEnvelope>? get forecasts;

  @BuiltValueField(wireName: r'storage')
  ChronicleSummaryStorage get storage;

  @BuiltValueField(wireName: r'gaps')
  BuiltList<ChronicleSummaryGapsInner> get gaps;

  ChronicleSummary._();

  factory ChronicleSummary([void updates(ChronicleSummaryBuilder b)]) =
      _$ChronicleSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSummary> get serializer =>
      _$ChronicleSummarySerializer();
}

class _$ChronicleSummarySerializer
    implements PrimitiveSerializer<ChronicleSummary> {
  @override
  final Iterable<Type> types = const [ChronicleSummary, _$ChronicleSummary];

  @override
  final String wireName = r'ChronicleSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'chronicleId';
    yield serializers.serialize(
      object.chronicleId,
      specifiedType: const FullType(String),
    );
    yield r'span';
    yield serializers.serialize(
      object.span,
      specifiedType: const FullType(TimeRange),
    );
    yield r'layers';
    yield serializers.serialize(
      object.layers,
      specifiedType:
          const FullType(BuiltList, [FullType(ChronicleSummaryLayersInner)]),
    );
    if (object.topEntities != null) {
      yield r'topEntities';
      yield serializers.serialize(
        object.topEntities,
        specifiedType: const FullType(
            BuiltList, [FullType(ChronicleSummaryTopEntitiesInner)]),
      );
    }
    if (object.situations != null) {
      yield r'situations';
      yield serializers.serialize(
        object.situations,
        specifiedType: const FullType(BuiltList, [FullType(ObjectEnvelope)]),
      );
    }
    if (object.hypothesisSets != null) {
      yield r'hypothesisSets';
      yield serializers.serialize(
        object.hypothesisSets,
        specifiedType: const FullType(BuiltList, [FullType(ObjectEnvelope)]),
      );
    }
    if (object.forecasts != null) {
      yield r'forecasts';
      yield serializers.serialize(
        object.forecasts,
        specifiedType: const FullType(BuiltList, [FullType(ObjectEnvelope)]),
      );
    }
    yield r'storage';
    yield serializers.serialize(
      object.storage,
      specifiedType: const FullType(ChronicleSummaryStorage),
    );
    yield r'gaps';
    yield serializers.serialize(
      object.gaps,
      specifiedType:
          const FullType(BuiltList, [FullType(ChronicleSummaryGapsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSummary object, {
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
    required ChronicleSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chronicleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.chronicleId = valueDes;
          break;
        case r'span':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TimeRange),
          ) as TimeRange;
          result.span.replace(valueDes);
          break;
        case r'layers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ChronicleSummaryLayersInner)]),
          ) as BuiltList<ChronicleSummaryLayersInner>;
          result.layers.replace(valueDes);
          break;
        case r'topEntities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ChronicleSummaryTopEntitiesInner)]),
          ) as BuiltList<ChronicleSummaryTopEntitiesInner>?;
          if (valueDes == null) continue;
          result.topEntities.replace(valueDes);
          break;
        case r'situations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(ObjectEnvelope)]),
          ) as BuiltList<ObjectEnvelope>?;
          if (valueDes == null) continue;
          result.situations.replace(valueDes);
          break;
        case r'hypothesisSets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(ObjectEnvelope)]),
          ) as BuiltList<ObjectEnvelope>?;
          if (valueDes == null) continue;
          result.hypothesisSets.replace(valueDes);
          break;
        case r'forecasts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(ObjectEnvelope)]),
          ) as BuiltList<ObjectEnvelope>?;
          if (valueDes == null) continue;
          result.forecasts.replace(valueDes);
          break;
        case r'storage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChronicleSummaryStorage),
          ) as ChronicleSummaryStorage;
          result.storage.replace(valueDes);
          break;
        case r'gaps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ChronicleSummaryGapsInner)]),
          ) as BuiltList<ChronicleSummaryGapsInner>;
          result.gaps.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSummaryBuilder();
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

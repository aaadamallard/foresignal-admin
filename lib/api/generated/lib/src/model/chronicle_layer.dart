//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/chronicle_area.dart';
import 'package:foresignal_api/src/model/chronicle_layer_stats.dart';
import 'package:foresignal_api/src/model/chronicle_layer_estimate.dart';
import 'package:foresignal_api/src/model/capture_mode.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_layer.g.dart';

/// One layer of a chronicle with its selector and capture mode
///
/// Properties:
/// * [id] - ULID identifier
/// * [chronicleId] - ULID identifier
/// * [name]
/// * [selector] - What a chronicle layer selects (one variant by `type`)
/// * [areaOverride]
/// * [capture]
/// * [effectiveCapture]
/// * [enabled]
/// * [addedAt]
/// * [addedAtSeq] - Edits apply from this seq onward
/// * [removedAt]
/// * [estimate]
/// * [stats]
@BuiltValue()
abstract class ChronicleLayer
    implements Built<ChronicleLayer, ChronicleLayerBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'chronicleId')
  String get chronicleId;

  @BuiltValueField(wireName: r'name')
  String get name;

  /// What a chronicle layer selects (one variant by `type`)
  @BuiltValueField(wireName: r'selector')
  JsonObject? get selector;

  @BuiltValueField(wireName: r'areaOverride')
  ChronicleArea? get areaOverride;

  @BuiltValueField(wireName: r'capture')
  CaptureMode get capture;

  @BuiltValueField(wireName: r'effectiveCapture')
  CaptureMode? get effectiveCapture;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'addedAt')
  DateTime get addedAt;

  /// Edits apply from this seq onward
  @BuiltValueField(wireName: r'addedAtSeq')
  int? get addedAtSeq;

  @BuiltValueField(wireName: r'removedAt')
  DateTime? get removedAt;

  @BuiltValueField(wireName: r'estimate')
  ChronicleLayerEstimate? get estimate;

  @BuiltValueField(wireName: r'stats')
  ChronicleLayerStats? get stats;

  ChronicleLayer._();

  factory ChronicleLayer([void updates(ChronicleLayerBuilder b)]) =
      _$ChronicleLayer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleLayerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleLayer> get serializer =>
      _$ChronicleLayerSerializer();
}

class _$ChronicleLayerSerializer
    implements PrimitiveSerializer<ChronicleLayer> {
  @override
  final Iterable<Type> types = const [ChronicleLayer, _$ChronicleLayer];

  @override
  final String wireName = r'ChronicleLayer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleLayer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'chronicleId';
    yield serializers.serialize(
      object.chronicleId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'selector';
    yield object.selector == null
        ? null
        : serializers.serialize(
            object.selector,
            specifiedType: const FullType.nullable(JsonObject),
          );
    if (object.areaOverride != null) {
      yield r'areaOverride';
      yield serializers.serialize(
        object.areaOverride,
        specifiedType: const FullType.nullable(ChronicleArea),
      );
    }
    yield r'capture';
    yield serializers.serialize(
      object.capture,
      specifiedType: const FullType(CaptureMode),
    );
    if (object.effectiveCapture != null) {
      yield r'effectiveCapture';
      yield serializers.serialize(
        object.effectiveCapture,
        specifiedType: const FullType(CaptureMode),
      );
    }
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'addedAt';
    yield serializers.serialize(
      object.addedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.addedAtSeq != null) {
      yield r'addedAtSeq';
      yield serializers.serialize(
        object.addedAtSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.removedAt != null) {
      yield r'removedAt';
      yield serializers.serialize(
        object.removedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.estimate != null) {
      yield r'estimate';
      yield serializers.serialize(
        object.estimate,
        specifiedType: const FullType.nullable(ChronicleLayerEstimate),
      );
    }
    if (object.stats != null) {
      yield r'stats';
      yield serializers.serialize(
        object.stats,
        specifiedType: const FullType(ChronicleLayerStats),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleLayer object, {
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
    required ChronicleLayerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'chronicleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.chronicleId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'selector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.selector = valueDes;
          break;
        case r'areaOverride':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChronicleArea),
          ) as ChronicleArea?;
          if (valueDes == null) continue;
          result.areaOverride.replace(valueDes);
          break;
        case r'capture':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CaptureMode),
          ) as CaptureMode;
          result.capture.replace(valueDes);
          break;
        case r'effectiveCapture':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CaptureMode),
          ) as CaptureMode?;
          if (valueDes == null) continue;
          result.effectiveCapture.replace(valueDes);
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'addedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.addedAt = valueDes;
          break;
        case r'addedAtSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.addedAtSeq = valueDes;
          break;
        case r'removedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.removedAt = valueDes;
          break;
        case r'estimate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChronicleLayerEstimate),
          ) as ChronicleLayerEstimate?;
          if (valueDes == null) continue;
          result.estimate.replace(valueDes);
          break;
        case r'stats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ChronicleLayerStats),
          ) as ChronicleLayerStats?;
          if (valueDes == null) continue;
          result.stats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleLayer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleLayerBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/frame_stats.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'raster_frame.g.dart';

/// One frame of a product with expanded URLs (Weather-Imagery-Design §6.1)
///
/// Properties:
/// * [productId]
/// * [time] - Valid time (ISO extended UTC)
/// * [timeKey] - Path form of the valid time
/// * [frameKey] - Content-addressed key `{timeKey}~{sha8}` (sha8 = first 8 hex chars of the decoded-content sha256)
/// * [status]
/// * [expiresAt] - When retention removes the frame; drop it client-side after this
/// * [run] - Forecast run reference time (ISO-8601); null for observations
/// * [step] - Forecast step in hours; null for observations
/// * [obsStart]
/// * [obsEnd]
/// * [tiles] - Expanded content-addressed tile template with `{z}/{x}/{y}`
/// * [tiles2x] - Same as `tiles` with the `@2x` (512 px) suffix
/// * [image] - Expanded `/image` template with `{bbox}`, `{width}`, `{height}` placeholders
/// * [bounds] - [west, south, east, north] in WGS84 degrees
/// * [stats]
/// * [thinned] - Kept by retention-ladder thinning
@BuiltValue()
abstract class RasterFrame implements Built<RasterFrame, RasterFrameBuilder> {
  @BuiltValueField(wireName: r'productId')
  String get productId;

  /// Valid time (ISO extended UTC)
  @BuiltValueField(wireName: r'time')
  DateTime get time;

  /// Path form of the valid time
  @BuiltValueField(wireName: r'timeKey')
  String get timeKey;

  /// Content-addressed key `{timeKey}~{sha8}` (sha8 = first 8 hex chars of the decoded-content sha256)
  @BuiltValueField(wireName: r'frameKey')
  String get frameKey;

  @BuiltValueField(wireName: r'status')
  RasterFrameStatusEnum get status;
  // enum statusEnum {  partial,  complete,  };

  /// When retention removes the frame; drop it client-side after this
  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  /// Forecast run reference time (ISO-8601); null for observations
  @BuiltValueField(wireName: r'run')
  String? get run;

  /// Forecast step in hours; null for observations
  @BuiltValueField(wireName: r'step')
  int? get step;

  @BuiltValueField(wireName: r'obsStart')
  DateTime? get obsStart;

  @BuiltValueField(wireName: r'obsEnd')
  DateTime? get obsEnd;

  /// Expanded content-addressed tile template with `{z}/{x}/{y}`
  @BuiltValueField(wireName: r'tiles')
  String get tiles;

  /// Same as `tiles` with the `@2x` (512 px) suffix
  @BuiltValueField(wireName: r'tiles2x')
  String? get tiles2x;

  /// Expanded `/image` template with `{bbox}`, `{width}`, `{height}` placeholders
  @BuiltValueField(wireName: r'image')
  String? get image;

  /// [west, south, east, north] in WGS84 degrees
  @BuiltValueField(wireName: r'bounds')
  BuiltList<num>? get bounds;

  @BuiltValueField(wireName: r'stats')
  FrameStats? get stats;

  /// Kept by retention-ladder thinning
  @BuiltValueField(wireName: r'thinned')
  bool? get thinned;

  RasterFrame._();

  factory RasterFrame([void updates(RasterFrameBuilder b)]) = _$RasterFrame;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RasterFrameBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RasterFrame> get serializer => _$RasterFrameSerializer();
}

class _$RasterFrameSerializer implements PrimitiveSerializer<RasterFrame> {
  @override
  final Iterable<Type> types = const [RasterFrame, _$RasterFrame];

  @override
  final String wireName = r'RasterFrame';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RasterFrame object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'productId';
    yield serializers.serialize(
      object.productId,
      specifiedType: const FullType(String),
    );
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(DateTime),
    );
    yield r'timeKey';
    yield serializers.serialize(
      object.timeKey,
      specifiedType: const FullType(String),
    );
    yield r'frameKey';
    yield serializers.serialize(
      object.frameKey,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(RasterFrameStatusEnum),
    );
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.run != null) {
      yield r'run';
      yield serializers.serialize(
        object.run,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.step != null) {
      yield r'step';
      yield serializers.serialize(
        object.step,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.obsStart != null) {
      yield r'obsStart';
      yield serializers.serialize(
        object.obsStart,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.obsEnd != null) {
      yield r'obsEnd';
      yield serializers.serialize(
        object.obsEnd,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'tiles';
    yield serializers.serialize(
      object.tiles,
      specifiedType: const FullType(String),
    );
    if (object.tiles2x != null) {
      yield r'tiles2x';
      yield serializers.serialize(
        object.tiles2x,
        specifiedType: const FullType(String),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(String),
      );
    }
    if (object.bounds != null) {
      yield r'bounds';
      yield serializers.serialize(
        object.bounds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.stats != null) {
      yield r'stats';
      yield serializers.serialize(
        object.stats,
        specifiedType: const FullType(FrameStats),
      );
    }
    if (object.thinned != null) {
      yield r'thinned';
      yield serializers.serialize(
        object.thinned,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RasterFrame object, {
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
    required RasterFrameBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'productId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.productId = valueDes;
          break;
        case r'time':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.time = valueDes;
          break;
        case r'timeKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.timeKey = valueDes;
          break;
        case r'frameKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.frameKey = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(RasterFrameStatusEnum),
                  )
                  as RasterFrameStatusEnum;
          result.status = valueDes;
          break;
        case r'expiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        case r'run':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.run = valueDes;
          break;
        case r'step':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.step = valueDes;
          break;
        case r'obsStart':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.obsStart = valueDes;
          break;
        case r'obsEnd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.obsEnd = valueDes;
          break;
        case r'tiles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tiles = valueDes;
          break;
        case r'tiles2x':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tiles2x = valueDes;
          break;
        case r'image':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'bounds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(num),
                    ]),
                  )
                  as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bounds.replace(valueDes);
          break;
        case r'stats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(FrameStats),
                  )
                  as FrameStats?;
          if (valueDes == null) continue;
          result.stats.replace(valueDes);
          break;
        case r'thinned':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.thinned = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RasterFrame deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RasterFrameBuilder();
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

class RasterFrameStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'partial')
  static const RasterFrameStatusEnum partial = _$rasterFrameStatusEnum_partial;
  @BuiltValueEnumConst(wireName: r'complete')
  static const RasterFrameStatusEnum complete =
      _$rasterFrameStatusEnum_complete;

  static Serializer<RasterFrameStatusEnum> get serializer =>
      _$rasterFrameStatusEnumSerializer;

  const RasterFrameStatusEnum._(String name) : super(name);

  static BuiltSet<RasterFrameStatusEnum> get values =>
      _$rasterFrameStatusEnumValues;
  static RasterFrameStatusEnum valueOf(String name) =>
      _$rasterFrameStatusEnumValueOf(name);
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'capture_mode.g.dart';

/// How a chronicle layer captures matching data
///
/// Properties:
/// * [mode] - `full` every matching version; `downsampled` one per entity per interval; `events-only` versions whose persist reason is FIRST, SIGNIFICANT, REAPPEAR, TOMBSTONE or TRIGGER_EDGE; `latest-per-interval` the latest per entity per interval; `rollup-only` counts per region and hour, no records; `frames` every Nth raster frame
/// * [interval] - For `downsampled` (default PT60S per entity) and `latest-per-interval`
/// * [everyNthFrame] - For `frames`
@BuiltValue()
abstract class CaptureMode implements Built<CaptureMode, CaptureModeBuilder> {
  /// `full` every matching version; `downsampled` one per entity per interval; `events-only` versions whose persist reason is FIRST, SIGNIFICANT, REAPPEAR, TOMBSTONE or TRIGGER_EDGE; `latest-per-interval` the latest per entity per interval; `rollup-only` counts per region and hour, no records; `frames` every Nth raster frame
  @BuiltValueField(wireName: r'mode')
  CaptureModeModeEnum get mode;
  // enum modeEnum {  full,  downsampled,  events-only,  latest-per-interval,  rollup-only,  frames,  };

  /// For `downsampled` (default PT60S per entity) and `latest-per-interval`
  @BuiltValueField(wireName: r'interval')
  String? get interval;

  /// For `frames`
  @BuiltValueField(wireName: r'everyNthFrame')
  int? get everyNthFrame;

  CaptureMode._();

  factory CaptureMode([void updates(CaptureModeBuilder b)]) = _$CaptureMode;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CaptureModeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CaptureMode> get serializer => _$CaptureModeSerializer();
}

class _$CaptureModeSerializer implements PrimitiveSerializer<CaptureMode> {
  @override
  final Iterable<Type> types = const [CaptureMode, _$CaptureMode];

  @override
  final String wireName = r'CaptureMode';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CaptureMode object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(CaptureModeModeEnum),
    );
    if (object.interval != null) {
      yield r'interval';
      yield serializers.serialize(
        object.interval,
        specifiedType: const FullType(String),
      );
    }
    if (object.everyNthFrame != null) {
      yield r'everyNthFrame';
      yield serializers.serialize(
        object.everyNthFrame,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CaptureMode object, {
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
    required CaptureModeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CaptureModeModeEnum),
                  )
                  as CaptureModeModeEnum;
          result.mode = valueDes;
          break;
        case r'interval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.interval = valueDes;
          break;
        case r'everyNthFrame':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.everyNthFrame = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CaptureMode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CaptureModeBuilder();
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

/// `full` every matching version; `downsampled` one per entity per interval; `events-only` versions whose persist reason is FIRST, SIGNIFICANT, REAPPEAR, TOMBSTONE or TRIGGER_EDGE; `latest-per-interval` the latest per entity per interval; `rollup-only` counts per region and hour, no records; `frames` every Nth raster frame
class CaptureModeModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'full')
  static const CaptureModeModeEnum full = _$captureModeModeEnum_full;
  @BuiltValueEnumConst(wireName: r'downsampled')
  static const CaptureModeModeEnum downsampled =
      _$captureModeModeEnum_downsampled;
  @BuiltValueEnumConst(wireName: r'events-only')
  static const CaptureModeModeEnum eventsOnly =
      _$captureModeModeEnum_eventsOnly;
  @BuiltValueEnumConst(wireName: r'latest-per-interval')
  static const CaptureModeModeEnum latestPerInterval =
      _$captureModeModeEnum_latestPerInterval;
  @BuiltValueEnumConst(wireName: r'rollup-only')
  static const CaptureModeModeEnum rollupOnly =
      _$captureModeModeEnum_rollupOnly;
  @BuiltValueEnumConst(wireName: r'frames')
  static const CaptureModeModeEnum frames = _$captureModeModeEnum_frames;

  static Serializer<CaptureModeModeEnum> get serializer =>
      _$captureModeModeEnumSerializer;

  const CaptureModeModeEnum._(String name) : super(name);

  static BuiltSet<CaptureModeModeEnum> get values =>
      _$captureModeModeEnumValues;
  static CaptureModeModeEnum valueOf(String name) =>
      _$captureModeModeEnumValueOf(name);
}

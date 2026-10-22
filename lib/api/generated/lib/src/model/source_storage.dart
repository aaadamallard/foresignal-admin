//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'source_storage.g.dart';

/// Storage cost of a source (Core-Data-Model §15), from source_usage
///
/// Properties:
/// * [observationsPerMinute]
/// * [versionsPerMinute]
/// * [persistRatio] - versions / observations
/// * [triggerEdgeShare] - Share of versions persisted as TRIGGER_EDGE over the last hour (warning above 0.2)
/// * [bytesPerDay] - Version bytes per day (7-day average)
/// * [projectedBytes] - bytesPerDay × retention window
/// * [lateLastHour]
/// * [clampedLastHour]
@BuiltValue()
abstract class SourceStorage
    implements Built<SourceStorage, SourceStorageBuilder> {
  @BuiltValueField(wireName: r'observationsPerMinute')
  num? get observationsPerMinute;

  @BuiltValueField(wireName: r'versionsPerMinute')
  num? get versionsPerMinute;

  /// versions / observations
  @BuiltValueField(wireName: r'persistRatio')
  num? get persistRatio;

  /// Share of versions persisted as TRIGGER_EDGE over the last hour (warning above 0.2)
  @BuiltValueField(wireName: r'triggerEdgeShare')
  num? get triggerEdgeShare;

  /// Version bytes per day (7-day average)
  @BuiltValueField(wireName: r'bytesPerDay')
  int? get bytesPerDay;

  /// bytesPerDay × retention window
  @BuiltValueField(wireName: r'projectedBytes')
  int? get projectedBytes;

  @BuiltValueField(wireName: r'lateLastHour')
  int? get lateLastHour;

  @BuiltValueField(wireName: r'clampedLastHour')
  int? get clampedLastHour;

  SourceStorage._();

  factory SourceStorage([void updates(SourceStorageBuilder b)]) =
      _$SourceStorage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SourceStorageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SourceStorage> get serializer =>
      _$SourceStorageSerializer();
}

class _$SourceStorageSerializer implements PrimitiveSerializer<SourceStorage> {
  @override
  final Iterable<Type> types = const [SourceStorage, _$SourceStorage];

  @override
  final String wireName = r'SourceStorage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SourceStorage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.observationsPerMinute != null) {
      yield r'observationsPerMinute';
      yield serializers.serialize(
        object.observationsPerMinute,
        specifiedType: const FullType(num),
      );
    }
    if (object.versionsPerMinute != null) {
      yield r'versionsPerMinute';
      yield serializers.serialize(
        object.versionsPerMinute,
        specifiedType: const FullType(num),
      );
    }
    if (object.persistRatio != null) {
      yield r'persistRatio';
      yield serializers.serialize(
        object.persistRatio,
        specifiedType: const FullType(num),
      );
    }
    if (object.triggerEdgeShare != null) {
      yield r'triggerEdgeShare';
      yield serializers.serialize(
        object.triggerEdgeShare,
        specifiedType: const FullType(num),
      );
    }
    if (object.bytesPerDay != null) {
      yield r'bytesPerDay';
      yield serializers.serialize(
        object.bytesPerDay,
        specifiedType: const FullType(int),
      );
    }
    if (object.projectedBytes != null) {
      yield r'projectedBytes';
      yield serializers.serialize(
        object.projectedBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.lateLastHour != null) {
      yield r'lateLastHour';
      yield serializers.serialize(
        object.lateLastHour,
        specifiedType: const FullType(int),
      );
    }
    if (object.clampedLastHour != null) {
      yield r'clampedLastHour';
      yield serializers.serialize(
        object.clampedLastHour,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SourceStorage object, {
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
    required SourceStorageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'observationsPerMinute':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.observationsPerMinute = valueDes;
          break;
        case r'versionsPerMinute':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.versionsPerMinute = valueDes;
          break;
        case r'persistRatio':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.persistRatio = valueDes;
          break;
        case r'triggerEdgeShare':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.triggerEdgeShare = valueDes;
          break;
        case r'bytesPerDay':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.bytesPerDay = valueDes;
          break;
        case r'projectedBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.projectedBytes = valueDes;
          break;
        case r'lateLastHour':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.lateLastHour = valueDes;
          break;
        case r'clampedLastHour':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.clampedLastHour = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SourceStorage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceStorageBuilder();
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

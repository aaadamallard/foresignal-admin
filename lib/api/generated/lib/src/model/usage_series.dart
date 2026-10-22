//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/usage_point.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'usage_series.g.dart';

/// UsageSeries
///
/// Properties:
/// * [sourceId]
/// * [resolution]
/// * [points]
/// * [totals]
@BuiltValue()
abstract class UsageSeries implements Built<UsageSeries, UsageSeriesBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'resolution')
  UsageSeriesResolutionEnum get resolution;
  // enum resolutionEnum {  minute,  hour,  day,  };

  @BuiltValueField(wireName: r'points')
  BuiltList<UsagePoint> get points;

  @BuiltValueField(wireName: r'totals')
  UsagePoint? get totals;

  UsageSeries._();

  factory UsageSeries([void updates(UsageSeriesBuilder b)]) = _$UsageSeries;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsageSeriesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsageSeries> get serializer => _$UsageSeriesSerializer();
}

class _$UsageSeriesSerializer implements PrimitiveSerializer<UsageSeries> {
  @override
  final Iterable<Type> types = const [UsageSeries, _$UsageSeries];

  @override
  final String wireName = r'UsageSeries';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsageSeries object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'resolution';
    yield serializers.serialize(
      object.resolution,
      specifiedType: const FullType(UsageSeriesResolutionEnum),
    );
    yield r'points';
    yield serializers.serialize(
      object.points,
      specifiedType: const FullType(BuiltList, [FullType(UsagePoint)]),
    );
    if (object.totals != null) {
      yield r'totals';
      yield serializers.serialize(
        object.totals,
        specifiedType: const FullType(UsagePoint),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UsageSeries object, {
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
    required UsageSeriesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceId = valueDes;
          break;
        case r'resolution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UsageSeriesResolutionEnum),
          ) as UsageSeriesResolutionEnum;
          result.resolution = valueDes;
          break;
        case r'points':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UsagePoint)]),
          ) as BuiltList<UsagePoint>;
          result.points.replace(valueDes);
          break;
        case r'totals':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(UsagePoint),
          ) as UsagePoint?;
          if (valueDes == null) continue;
          result.totals.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsageSeries deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsageSeriesBuilder();
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

class UsageSeriesResolutionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'minute')
  static const UsageSeriesResolutionEnum minute =
      _$usageSeriesResolutionEnum_minute;
  @BuiltValueEnumConst(wireName: r'hour')
  static const UsageSeriesResolutionEnum hour =
      _$usageSeriesResolutionEnum_hour;
  @BuiltValueEnumConst(wireName: r'day')
  static const UsageSeriesResolutionEnum day = _$usageSeriesResolutionEnum_day;

  static Serializer<UsageSeriesResolutionEnum> get serializer =>
      _$usageSeriesResolutionEnumSerializer;

  const UsageSeriesResolutionEnum._(String name) : super(name);

  static BuiltSet<UsageSeriesResolutionEnum> get values =>
      _$usageSeriesResolutionEnumValues;
  static UsageSeriesResolutionEnum valueOf(String name) =>
      _$usageSeriesResolutionEnumValueOf(name);
}

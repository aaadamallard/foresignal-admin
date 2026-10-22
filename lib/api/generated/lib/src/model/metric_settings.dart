//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/metric_projection.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metric_settings.g.dart';

/// Metric projections served at /v1/metrics (038)
///
/// Properties:
/// * [projections]
@BuiltValue()
abstract class MetricSettings
    implements Built<MetricSettings, MetricSettingsBuilder> {
  @BuiltValueField(wireName: r'projections')
  BuiltList<MetricProjection> get projections;

  MetricSettings._();

  factory MetricSettings([void updates(MetricSettingsBuilder b)]) =
      _$MetricSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetricSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetricSettings> get serializer =>
      _$MetricSettingsSerializer();
}

class _$MetricSettingsSerializer
    implements PrimitiveSerializer<MetricSettings> {
  @override
  final Iterable<Type> types = const [MetricSettings, _$MetricSettings];

  @override
  final String wireName = r'MetricSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetricSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'projections';
    yield serializers.serialize(
      object.projections,
      specifiedType: const FullType(BuiltList, [FullType(MetricProjection)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MetricSettings object, {
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
    required MetricSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'projections':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(MetricProjection),
                    ]),
                  )
                  as BuiltList<MetricProjection>;
          result.projections.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MetricSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricSettingsBuilder();
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

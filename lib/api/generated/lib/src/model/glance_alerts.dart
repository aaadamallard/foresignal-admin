//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/glance_alerts_open.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/glance_alerts_latest_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'glance_alerts.g.dart';

/// Open alerts
///
/// Properties:
/// * [open]
/// * [latest]
@BuiltValue()
abstract class GlanceAlerts
    implements Built<GlanceAlerts, GlanceAlertsBuilder> {
  @BuiltValueField(wireName: r'open')
  GlanceAlertsOpen? get open;

  @BuiltValueField(wireName: r'latest')
  BuiltList<GlanceAlertsLatestInner>? get latest;

  GlanceAlerts._();

  factory GlanceAlerts([void updates(GlanceAlertsBuilder b)]) = _$GlanceAlerts;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GlanceAlertsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GlanceAlerts> get serializer => _$GlanceAlertsSerializer();
}

class _$GlanceAlertsSerializer implements PrimitiveSerializer<GlanceAlerts> {
  @override
  final Iterable<Type> types = const [GlanceAlerts, _$GlanceAlerts];

  @override
  final String wireName = r'GlanceAlerts';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GlanceAlerts object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.open != null) {
      yield r'open';
      yield serializers.serialize(
        object.open,
        specifiedType: const FullType(GlanceAlertsOpen),
      );
    }
    if (object.latest != null) {
      yield r'latest';
      yield serializers.serialize(
        object.latest,
        specifiedType:
            const FullType(BuiltList, [FullType(GlanceAlertsLatestInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GlanceAlerts object, {
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
    required GlanceAlertsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(GlanceAlertsOpen),
          ) as GlanceAlertsOpen?;
          if (valueDes == null) continue;
          result.open.replace(valueDes);
          break;
        case r'latest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(GlanceAlertsLatestInner)]),
          ) as BuiltList<GlanceAlertsLatestInner>?;
          if (valueDes == null) continue;
          result.latest.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GlanceAlerts deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GlanceAlertsBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/digest_alerts_by_status.dart';
import 'package:foresignal_api/src/model/alert.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/digest_alerts_by_rule_inner.dart';
import 'package:foresignal_api/src/model/digest_alerts_by_severity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'digest_alerts.g.dart';

/// Alerts in scope for a digest period, keyed by alert id (029)
///
/// Properties:
/// * [sinceAlertId]
/// * [untilAlertId]
/// * [bySeverity]
/// * [byStatus]
/// * [byRule]
/// * [items] - Critical first
@BuiltValue()
abstract class DigestAlerts
    implements Built<DigestAlerts, DigestAlertsBuilder> {
  @BuiltValueField(wireName: r'sinceAlertId')
  int? get sinceAlertId;

  @BuiltValueField(wireName: r'untilAlertId')
  int? get untilAlertId;

  @BuiltValueField(wireName: r'bySeverity')
  DigestAlertsBySeverity? get bySeverity;

  @BuiltValueField(wireName: r'byStatus')
  DigestAlertsByStatus? get byStatus;

  @BuiltValueField(wireName: r'byRule')
  BuiltList<DigestAlertsByRuleInner>? get byRule;

  /// Critical first
  @BuiltValueField(wireName: r'items')
  BuiltList<Alert>? get items;

  DigestAlerts._();

  factory DigestAlerts([void updates(DigestAlertsBuilder b)]) = _$DigestAlerts;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DigestAlertsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DigestAlerts> get serializer => _$DigestAlertsSerializer();
}

class _$DigestAlertsSerializer implements PrimitiveSerializer<DigestAlerts> {
  @override
  final Iterable<Type> types = const [DigestAlerts, _$DigestAlerts];

  @override
  final String wireName = r'DigestAlerts';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DigestAlerts object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sinceAlertId != null) {
      yield r'sinceAlertId';
      yield serializers.serialize(
        object.sinceAlertId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.untilAlertId != null) {
      yield r'untilAlertId';
      yield serializers.serialize(
        object.untilAlertId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.bySeverity != null) {
      yield r'bySeverity';
      yield serializers.serialize(
        object.bySeverity,
        specifiedType: const FullType(DigestAlertsBySeverity),
      );
    }
    if (object.byStatus != null) {
      yield r'byStatus';
      yield serializers.serialize(
        object.byStatus,
        specifiedType: const FullType(DigestAlertsByStatus),
      );
    }
    if (object.byRule != null) {
      yield r'byRule';
      yield serializers.serialize(
        object.byRule,
        specifiedType:
            const FullType(BuiltList, [FullType(DigestAlertsByRuleInner)]),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(Alert)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DigestAlerts object, {
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
    required DigestAlertsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sinceAlertId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sinceAlertId = valueDes;
          break;
        case r'untilAlertId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.untilAlertId = valueDes;
          break;
        case r'bySeverity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DigestAlertsBySeverity),
          ) as DigestAlertsBySeverity?;
          if (valueDes == null) continue;
          result.bySeverity.replace(valueDes);
          break;
        case r'byStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DigestAlertsByStatus),
          ) as DigestAlertsByStatus?;
          if (valueDes == null) continue;
          result.byStatus.replace(valueDes);
          break;
        case r'byRule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(DigestAlertsByRuleInner)]),
          ) as BuiltList<DigestAlertsByRuleInner>?;
          if (valueDes == null) continue;
          result.byRule.replace(valueDes);
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Alert)]),
          ) as BuiltList<Alert>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DigestAlerts deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DigestAlertsBuilder();
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

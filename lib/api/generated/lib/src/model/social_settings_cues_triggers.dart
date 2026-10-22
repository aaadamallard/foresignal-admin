//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_settings_cues_triggers.g.dart';

/// Physical triggers
///
/// Properties:
/// * [situationActivated]
/// * [situationEscalated]
/// * [findingTypes] - `significant` finding types, e.g. change points in outage, vessel, flight and fire series
/// * [anomalies]
/// * [criticalAlerts]
/// * [canonicalFamilies] - Canonical-event families with ≥ minEvidenceGroups
/// * [minEvidenceGroups]
@BuiltValue()
abstract class SocialSettingsCuesTriggers
    implements
        Built<SocialSettingsCuesTriggers, SocialSettingsCuesTriggersBuilder> {
  @BuiltValueField(wireName: r'situationActivated')
  bool? get situationActivated;

  @BuiltValueField(wireName: r'situationEscalated')
  bool? get situationEscalated;

  /// `significant` finding types, e.g. change points in outage, vessel, flight and fire series
  @BuiltValueField(wireName: r'findingTypes')
  BuiltList<String>? get findingTypes;

  @BuiltValueField(wireName: r'anomalies')
  bool? get anomalies;

  @BuiltValueField(wireName: r'criticalAlerts')
  bool? get criticalAlerts;

  /// Canonical-event families with ≥ minEvidenceGroups
  @BuiltValueField(wireName: r'canonicalFamilies')
  BuiltList<String>? get canonicalFamilies;

  @BuiltValueField(wireName: r'minEvidenceGroups')
  int? get minEvidenceGroups;

  SocialSettingsCuesTriggers._();

  factory SocialSettingsCuesTriggers([
    void updates(SocialSettingsCuesTriggersBuilder b),
  ]) = _$SocialSettingsCuesTriggers;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialSettingsCuesTriggersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialSettingsCuesTriggers> get serializer =>
      _$SocialSettingsCuesTriggersSerializer();
}

class _$SocialSettingsCuesTriggersSerializer
    implements PrimitiveSerializer<SocialSettingsCuesTriggers> {
  @override
  final Iterable<Type> types = const [
    SocialSettingsCuesTriggers,
    _$SocialSettingsCuesTriggers,
  ];

  @override
  final String wireName = r'SocialSettingsCuesTriggers';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialSettingsCuesTriggers object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.situationActivated != null) {
      yield r'situationActivated';
      yield serializers.serialize(
        object.situationActivated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.situationEscalated != null) {
      yield r'situationEscalated';
      yield serializers.serialize(
        object.situationEscalated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.findingTypes != null) {
      yield r'findingTypes';
      yield serializers.serialize(
        object.findingTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.anomalies != null) {
      yield r'anomalies';
      yield serializers.serialize(
        object.anomalies,
        specifiedType: const FullType(bool),
      );
    }
    if (object.criticalAlerts != null) {
      yield r'criticalAlerts';
      yield serializers.serialize(
        object.criticalAlerts,
        specifiedType: const FullType(bool),
      );
    }
    if (object.canonicalFamilies != null) {
      yield r'canonicalFamilies';
      yield serializers.serialize(
        object.canonicalFamilies,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.minEvidenceGroups != null) {
      yield r'minEvidenceGroups';
      yield serializers.serialize(
        object.minEvidenceGroups,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialSettingsCuesTriggers object, {
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
    required SocialSettingsCuesTriggersBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'situationActivated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.situationActivated = valueDes;
          break;
        case r'situationEscalated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.situationEscalated = valueDes;
          break;
        case r'findingTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.findingTypes.replace(valueDes);
          break;
        case r'anomalies':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.anomalies = valueDes;
          break;
        case r'criticalAlerts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.criticalAlerts = valueDes;
          break;
        case r'canonicalFamilies':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.canonicalFamilies.replace(valueDes);
          break;
        case r'minEvidenceGroups':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.minEvidenceGroups = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialSettingsCuesTriggers deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialSettingsCuesTriggersBuilder();
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

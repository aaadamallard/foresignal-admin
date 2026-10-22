//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indicator_signal_situation.g.dart';

/// Situation status or severity
///
/// Properties:
/// * [situationId] - ULID identifier
/// * [status]
/// * [minSeverity]
@BuiltValue()
abstract class IndicatorSignalSituation
    implements
        Built<IndicatorSignalSituation, IndicatorSignalSituationBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String get situationId;

  @BuiltValueField(wireName: r'status')
  IndicatorSignalSituationStatusEnum? get status;
  // enum statusEnum {  emerging,  active,  dormant,  closed,  };

  @BuiltValueField(wireName: r'minSeverity')
  Severity? get minSeverity;
  // enum minSeverityEnum {  info,  warning,  critical,  };

  IndicatorSignalSituation._();

  factory IndicatorSignalSituation([
    void updates(IndicatorSignalSituationBuilder b),
  ]) = _$IndicatorSignalSituation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndicatorSignalSituationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndicatorSignalSituation> get serializer =>
      _$IndicatorSignalSituationSerializer();
}

class _$IndicatorSignalSituationSerializer
    implements PrimitiveSerializer<IndicatorSignalSituation> {
  @override
  final Iterable<Type> types = const [
    IndicatorSignalSituation,
    _$IndicatorSignalSituation,
  ];

  @override
  final String wireName = r'IndicatorSignalSituation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndicatorSignalSituation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'situationId';
    yield serializers.serialize(
      object.situationId,
      specifiedType: const FullType(String),
    );
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType.nullable(
          IndicatorSignalSituationStatusEnum,
        ),
      );
    }
    if (object.minSeverity != null) {
      yield r'minSeverity';
      yield serializers.serialize(
        object.minSeverity,
        specifiedType: const FullType.nullable(Severity),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndicatorSignalSituation object, {
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
    required IndicatorSignalSituationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'situationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.situationId = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      IndicatorSignalSituationStatusEnum,
                    ),
                  )
                  as IndicatorSignalSituationStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'minSeverity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Severity),
                  )
                  as Severity?;
          if (valueDes == null) continue;
          result.minSeverity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndicatorSignalSituation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndicatorSignalSituationBuilder();
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

class IndicatorSignalSituationStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'emerging')
  static const IndicatorSignalSituationStatusEnum emerging =
      _$indicatorSignalSituationStatusEnum_emerging;
  @BuiltValueEnumConst(wireName: r'active')
  static const IndicatorSignalSituationStatusEnum active =
      _$indicatorSignalSituationStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'dormant')
  static const IndicatorSignalSituationStatusEnum dormant =
      _$indicatorSignalSituationStatusEnum_dormant;
  @BuiltValueEnumConst(wireName: r'closed')
  static const IndicatorSignalSituationStatusEnum closed =
      _$indicatorSignalSituationStatusEnum_closed;

  static Serializer<IndicatorSignalSituationStatusEnum> get serializer =>
      _$indicatorSignalSituationStatusEnumSerializer;

  const IndicatorSignalSituationStatusEnum._(String name) : super(name);

  static BuiltSet<IndicatorSignalSituationStatusEnum> get values =>
      _$indicatorSignalSituationStatusEnumValues;
  static IndicatorSignalSituationStatusEnum valueOf(String name) =>
      _$indicatorSignalSituationStatusEnumValueOf(name);
}

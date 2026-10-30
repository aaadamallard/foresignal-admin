//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'briefing_run_breaking.g.dart';

/// The alert that fired this run as a breaking-news special edition (NP-006); null for a scheduled, manual or preview run. A breaking run is otherwise an ordinary run of the edition: same scope, output, delivery targets and site
///
/// Properties:
/// * [alertId]
/// * [ruleId]
/// * [ruleName]
/// * [severity]
/// * [firedAt]
/// * [message]
@BuiltValue()
abstract class BriefingRunBreaking
    implements Built<BriefingRunBreaking, BriefingRunBreakingBuilder> {
  @BuiltValueField(wireName: r'alertId')
  int get alertId;

  @BuiltValueField(wireName: r'ruleId')
  String? get ruleId;

  @BuiltValueField(wireName: r'ruleName')
  String? get ruleName;

  @BuiltValueField(wireName: r'severity')
  BriefingRunBreakingSeverityEnum get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'firedAt')
  DateTime? get firedAt;

  @BuiltValueField(wireName: r'message')
  String? get message;

  BriefingRunBreaking._();

  factory BriefingRunBreaking([void updates(BriefingRunBreakingBuilder b)]) =
      _$BriefingRunBreaking;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BriefingRunBreakingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BriefingRunBreaking> get serializer =>
      _$BriefingRunBreakingSerializer();
}

class _$BriefingRunBreakingSerializer
    implements PrimitiveSerializer<BriefingRunBreaking> {
  @override
  final Iterable<Type> types = const [
    BriefingRunBreaking,
    _$BriefingRunBreaking,
  ];

  @override
  final String wireName = r'BriefingRunBreaking';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BriefingRunBreaking object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'alertId';
    yield serializers.serialize(
      object.alertId,
      specifiedType: const FullType(int),
    );
    if (object.ruleId != null) {
      yield r'ruleId';
      yield serializers.serialize(
        object.ruleId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ruleName != null) {
      yield r'ruleName';
      yield serializers.serialize(
        object.ruleName,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(BriefingRunBreakingSeverityEnum),
    );
    if (object.firedAt != null) {
      yield r'firedAt';
      yield serializers.serialize(
        object.firedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BriefingRunBreaking object, {
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
    required BriefingRunBreakingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alertId':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.alertId = valueDes;
          break;
        case r'ruleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ruleId = valueDes;
          break;
        case r'ruleName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ruleName = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      BriefingRunBreakingSeverityEnum,
                    ),
                  )
                  as BriefingRunBreakingSeverityEnum;
          result.severity = valueDes;
          break;
        case r'firedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.firedAt = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BriefingRunBreaking deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BriefingRunBreakingBuilder();
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

class BriefingRunBreakingSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const BriefingRunBreakingSeverityEnum info =
      _$briefingRunBreakingSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const BriefingRunBreakingSeverityEnum warning =
      _$briefingRunBreakingSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const BriefingRunBreakingSeverityEnum critical =
      _$briefingRunBreakingSeverityEnum_critical;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BriefingRunBreakingSeverityEnum unknownDefaultOpenApi =
      _$briefingRunBreakingSeverityEnum_unknownDefaultOpenApi;

  static Serializer<BriefingRunBreakingSeverityEnum> get serializer =>
      _$briefingRunBreakingSeverityEnumSerializer;

  const BriefingRunBreakingSeverityEnum._(String name) : super(name);

  static BuiltSet<BriefingRunBreakingSeverityEnum> get values =>
      _$briefingRunBreakingSeverityEnumValues;
  static BriefingRunBreakingSeverityEnum valueOf(String name) =>
      _$briefingRunBreakingSeverityEnumValueOf(name);
}

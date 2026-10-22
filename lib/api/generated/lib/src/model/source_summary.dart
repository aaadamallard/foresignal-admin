//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/source_access.dart';
import 'package:foresignal_api/src/model/budget.dart';
import 'package:foresignal_api/src/model/history_tier.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/health_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'source_summary.g.dart';

/// SourceSummary
///
/// Properties:
/// * [id]
/// * [name]
/// * [kinds]
/// * [mode] - Collection mode; `derived` sources are fed by ChangeBus or frame events and never polled
/// * [custom]
/// * [enabled]
/// * [status]
/// * [credentialsRequired] - True if any credential field is required
/// * [credentialsSet]
/// * [interval] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [budget]
/// * [budgetUsedToday]
/// * [lastSuccessAt]
/// * [historyTier]
/// * [licence]
/// * [termsUrl]
/// * [lastDataAt] - Last fetch or flush that returned records (never a 304)
/// * [access]
@BuiltValue()
abstract class SourceSummary
    implements Built<SourceSummary, SourceSummaryBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'kinds')
  BuiltList<String> get kinds;

  /// Collection mode; `derived` sources are fed by ChangeBus or frame events and never polled
  @BuiltValueField(wireName: r'mode')
  SourceSummaryModeEnum get mode;
  // enum modeEnum {  polling,  streaming,  push,  derived,  };

  @BuiltValueField(wireName: r'custom')
  bool? get custom;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'status')
  HealthStatus get status;
  // enum statusEnum {  healthy,  degraded,  failing,  idle,  disabled,  };

  /// True if any credential field is required
  @BuiltValueField(wireName: r'credentialsRequired')
  bool? get credentialsRequired;

  @BuiltValueField(wireName: r'credentialsSet')
  bool? get credentialsSet;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'interval')
  String? get interval;

  @BuiltValueField(wireName: r'budget')
  Budget? get budget;

  @BuiltValueField(wireName: r'budgetUsedToday')
  int? get budgetUsedToday;

  @BuiltValueField(wireName: r'lastSuccessAt')
  DateTime? get lastSuccessAt;

  @BuiltValueField(wireName: r'historyTier')
  HistoryTier? get historyTier;
  // enum historyTierEnum {  STANDARD,  TRACK,  };

  @BuiltValueField(wireName: r'licence')
  String? get licence;

  @BuiltValueField(wireName: r'termsUrl')
  String? get termsUrl;

  /// Last fetch or flush that returned records (never a 304)
  @BuiltValueField(wireName: r'lastDataAt')
  DateTime? get lastDataAt;

  @BuiltValueField(wireName: r'access')
  SourceAccess? get access;

  SourceSummary._();

  factory SourceSummary([void updates(SourceSummaryBuilder b)]) =
      _$SourceSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SourceSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SourceSummary> get serializer =>
      _$SourceSummarySerializer();
}

class _$SourceSummarySerializer implements PrimitiveSerializer<SourceSummary> {
  @override
  final Iterable<Type> types = const [SourceSummary, _$SourceSummary];

  @override
  final String wireName = r'SourceSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SourceSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'kinds';
    yield serializers.serialize(
      object.kinds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(SourceSummaryModeEnum),
    );
    if (object.custom != null) {
      yield r'custom';
      yield serializers.serialize(
        object.custom,
        specifiedType: const FullType(bool),
      );
    }
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(HealthStatus),
    );
    if (object.credentialsRequired != null) {
      yield r'credentialsRequired';
      yield serializers.serialize(
        object.credentialsRequired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.credentialsSet != null) {
      yield r'credentialsSet';
      yield serializers.serialize(
        object.credentialsSet,
        specifiedType: const FullType(bool),
      );
    }
    if (object.interval != null) {
      yield r'interval';
      yield serializers.serialize(
        object.interval,
        specifiedType: const FullType(String),
      );
    }
    if (object.budget != null) {
      yield r'budget';
      yield serializers.serialize(
        object.budget,
        specifiedType: const FullType(Budget),
      );
    }
    if (object.budgetUsedToday != null) {
      yield r'budgetUsedToday';
      yield serializers.serialize(
        object.budgetUsedToday,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastSuccessAt != null) {
      yield r'lastSuccessAt';
      yield serializers.serialize(
        object.lastSuccessAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.historyTier != null) {
      yield r'historyTier';
      yield serializers.serialize(
        object.historyTier,
        specifiedType: const FullType(HistoryTier),
      );
    }
    if (object.licence != null) {
      yield r'licence';
      yield serializers.serialize(
        object.licence,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.termsUrl != null) {
      yield r'termsUrl';
      yield serializers.serialize(
        object.termsUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastDataAt != null) {
      yield r'lastDataAt';
      yield serializers.serialize(
        object.lastDataAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.access != null) {
      yield r'access';
      yield serializers.serialize(
        object.access,
        specifiedType: const FullType(SourceAccess),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SourceSummary object, {
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
    required SourceSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'kinds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.kinds.replace(valueDes);
          break;
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SourceSummaryModeEnum),
          ) as SourceSummaryModeEnum;
          result.mode = valueDes;
          break;
        case r'custom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.custom = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HealthStatus),
          ) as HealthStatus;
          result.status = valueDes;
          break;
        case r'credentialsRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.credentialsRequired = valueDes;
          break;
        case r'credentialsSet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.credentialsSet = valueDes;
          break;
        case r'interval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.interval = valueDes;
          break;
        case r'budget':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Budget),
          ) as Budget?;
          if (valueDes == null) continue;
          result.budget.replace(valueDes);
          break;
        case r'budgetUsedToday':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.budgetUsedToday = valueDes;
          break;
        case r'lastSuccessAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastSuccessAt = valueDes;
          break;
        case r'historyTier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HistoryTier),
          ) as HistoryTier?;
          if (valueDes == null) continue;
          result.historyTier = valueDes;
          break;
        case r'licence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.licence = valueDes;
          break;
        case r'termsUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.termsUrl = valueDes;
          break;
        case r'lastDataAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastDataAt = valueDes;
          break;
        case r'access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SourceAccess),
          ) as SourceAccess?;
          if (valueDes == null) continue;
          result.access.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SourceSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceSummaryBuilder();
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

/// Collection mode; `derived` sources are fed by ChangeBus or frame events and never polled
class SourceSummaryModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'polling')
  static const SourceSummaryModeEnum polling = _$sourceSummaryModeEnum_polling;
  @BuiltValueEnumConst(wireName: r'streaming')
  static const SourceSummaryModeEnum streaming =
      _$sourceSummaryModeEnum_streaming;
  @BuiltValueEnumConst(wireName: r'push')
  static const SourceSummaryModeEnum push = _$sourceSummaryModeEnum_push;
  @BuiltValueEnumConst(wireName: r'derived')
  static const SourceSummaryModeEnum derived = _$sourceSummaryModeEnum_derived;

  static Serializer<SourceSummaryModeEnum> get serializer =>
      _$sourceSummaryModeEnumSerializer;

  const SourceSummaryModeEnum._(String name) : super(name);

  static BuiltSet<SourceSummaryModeEnum> get values =>
      _$sourceSummaryModeEnumValues;
  static SourceSummaryModeEnum valueOf(String name) =>
      _$sourceSummaryModeEnumValueOf(name);
}

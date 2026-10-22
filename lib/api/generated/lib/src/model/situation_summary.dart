//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/situation_status.dart';
import 'package:foresignal_api/src/model/situation_theme.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_summary.g.dart';

/// Compact situation for lists and SSE events
///
/// Properties:
/// * [id] - ULID identifier
/// * [title]
/// * [theme]
/// * [status]
/// * [severity]
/// * [severityOverridden] - True when an operator override sets the severity
/// * [regionCodes]
/// * [bbox] - minLon, minLat, maxLon, maxLat of the geometry
/// * [centroid]
/// * [startedAt]
/// * [lastActivityAt]
/// * [closedAt]
/// * [memberCount]
/// * [signalFamilies] - Signal families of the core members
/// * [corroborationShare] - corroborated ÷ (corroborated + uncorroborated); null when no member has a canonical event
/// * [summary] - Deterministic templated summary (inference)
/// * [origin]
/// * [mergedInto] - ULID identifier
/// * [private] - True when any member is private; follows `EgressPolicy`
/// * [version] - Optimistic-locking version; send it back on changes
/// * [updatedAt]
@BuiltValue()
abstract class SituationSummary
    implements Built<SituationSummary, SituationSummaryBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'theme')
  SituationTheme get theme;
  // enum themeEnum {  maritime,  aviation,  conflict,  infrastructure,  weather,  cyber,  markets,  health,  space,  mixed,  };

  @BuiltValueField(wireName: r'status')
  SituationStatus get status;
  // enum statusEnum {  emerging,  active,  dormant,  closed,  };

  @BuiltValueField(wireName: r'severity')
  Severity get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  /// True when an operator override sets the severity
  @BuiltValueField(wireName: r'severityOverridden')
  bool? get severityOverridden;

  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String> get regionCodes;

  /// minLon, minLat, maxLon, maxLat of the geometry
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  @BuiltValueField(wireName: r'centroid')
  Geometry? get centroid;

  @BuiltValueField(wireName: r'startedAt')
  DateTime get startedAt;

  @BuiltValueField(wireName: r'lastActivityAt')
  DateTime get lastActivityAt;

  @BuiltValueField(wireName: r'closedAt')
  DateTime? get closedAt;

  @BuiltValueField(wireName: r'memberCount')
  int get memberCount;

  /// Signal families of the core members
  @BuiltValueField(wireName: r'signalFamilies')
  BuiltList<String> get signalFamilies;

  /// corroborated ÷ (corroborated + uncorroborated); null when no member has a canonical event
  @BuiltValueField(wireName: r'corroborationShare')
  num? get corroborationShare;

  /// Deterministic templated summary (inference)
  @BuiltValueField(wireName: r'summary')
  String get summary;

  @BuiltValueField(wireName: r'origin')
  SituationSummaryOriginEnum get origin;
  // enum originEnum {  auto,  operator,  agent,  analyst,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'mergedInto')
  String? get mergedInto;

  /// True when any member is private; follows `EgressPolicy`
  @BuiltValueField(wireName: r'private')
  bool get private;

  /// Optimistic-locking version; send it back on changes
  @BuiltValueField(wireName: r'version')
  int get version;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  SituationSummary._();

  factory SituationSummary([void updates(SituationSummaryBuilder b)]) =
      _$SituationSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationSummary> get serializer =>
      _$SituationSummarySerializer();
}

class _$SituationSummarySerializer
    implements PrimitiveSerializer<SituationSummary> {
  @override
  final Iterable<Type> types = const [SituationSummary, _$SituationSummary];

  @override
  final String wireName = r'SituationSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'theme';
    yield serializers.serialize(
      object.theme,
      specifiedType: const FullType(SituationTheme),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SituationStatus),
    );
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(Severity),
    );
    if (object.severityOverridden != null) {
      yield r'severityOverridden';
      yield serializers.serialize(
        object.severityOverridden,
        specifiedType: const FullType(bool),
      );
    }
    yield r'regionCodes';
    yield serializers.serialize(
      object.regionCodes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.centroid != null) {
      yield r'centroid';
      yield serializers.serialize(
        object.centroid,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    yield r'startedAt';
    yield serializers.serialize(
      object.startedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'lastActivityAt';
    yield serializers.serialize(
      object.lastActivityAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.closedAt != null) {
      yield r'closedAt';
      yield serializers.serialize(
        object.closedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'memberCount';
    yield serializers.serialize(
      object.memberCount,
      specifiedType: const FullType(int),
    );
    yield r'signalFamilies';
    yield serializers.serialize(
      object.signalFamilies,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.corroborationShare != null) {
      yield r'corroborationShare';
      yield serializers.serialize(
        object.corroborationShare,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'summary';
    yield serializers.serialize(
      object.summary,
      specifiedType: const FullType(String),
    );
    yield r'origin';
    yield serializers.serialize(
      object.origin,
      specifiedType: const FullType(SituationSummaryOriginEnum),
    );
    if (object.mergedInto != null) {
      yield r'mergedInto';
      yield serializers.serialize(
        object.mergedInto,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'private';
    yield serializers.serialize(
      object.private,
      specifiedType: const FullType(bool),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationSummary object, {
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
    required SituationSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'theme':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SituationTheme),
                  )
                  as SituationTheme;
          result.theme = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SituationStatus),
                  )
                  as SituationStatus;
          result.status = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Severity),
                  )
                  as Severity;
          result.severity = valueDes;
          break;
        case r'severityOverridden':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.severityOverridden = valueDes;
          break;
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.regionCodes.replace(valueDes);
          break;
        case r'bbox':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(num),
                    ]),
                  )
                  as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        case r'centroid':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.centroid.replace(valueDes);
          break;
        case r'startedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.startedAt = valueDes;
          break;
        case r'lastActivityAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.lastActivityAt = valueDes;
          break;
        case r'closedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.closedAt = valueDes;
          break;
        case r'memberCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.memberCount = valueDes;
          break;
        case r'signalFamilies':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.signalFamilies.replace(valueDes);
          break;
        case r'corroborationShare':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.corroborationShare = valueDes;
          break;
        case r'summary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.summary = valueDes;
          break;
        case r'origin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SituationSummaryOriginEnum),
                  )
                  as SituationSummaryOriginEnum;
          result.origin = valueDes;
          break;
        case r'mergedInto':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.mergedInto = valueDes;
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.private = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.version = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationSummaryBuilder();
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

class SituationSummaryOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'auto')
  static const SituationSummaryOriginEnum auto =
      _$situationSummaryOriginEnum_auto;
  @BuiltValueEnumConst(wireName: r'operator')
  static const SituationSummaryOriginEnum operator_ =
      _$situationSummaryOriginEnum_operator_;
  @BuiltValueEnumConst(wireName: r'agent')
  static const SituationSummaryOriginEnum agent =
      _$situationSummaryOriginEnum_agent;
  @BuiltValueEnumConst(wireName: r'analyst')
  static const SituationSummaryOriginEnum analyst =
      _$situationSummaryOriginEnum_analyst;

  static Serializer<SituationSummaryOriginEnum> get serializer =>
      _$situationSummaryOriginEnumSerializer;

  const SituationSummaryOriginEnum._(String name) : super(name);

  static BuiltSet<SituationSummaryOriginEnum> get values =>
      _$situationSummaryOriginEnumValues;
  static SituationSummaryOriginEnum valueOf(String name) =>
      _$situationSummaryOriginEnumValueOf(name);
}

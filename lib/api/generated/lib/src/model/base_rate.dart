//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/region_profile.dart';
import 'package:foresignal_api/src/model/base_rate_licences_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:foresignal_api/src/model/base_rate_definition.dart';
import 'package:foresignal_api/src/model/base_rate_unconditional.dart';
import 'package:foresignal_api/src/model/stat_interval.dart';
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_rate.g.dart';

/// A base rate with its reference class, period, sample size, interval, sources and caveats
///
/// Properties:
/// * [id] - Null for ad-hoc query results that were not stored
/// * [name]
/// * [definition]
/// * [referenceClass] - Plain-language reference class
/// * [ratePerWindow] - Mean events per window
/// * [pAtLeastOne]
/// * [interval]
/// * [nWindows]
/// * [nEvents]
/// * [periodFrom]
/// * [periodTo]
/// * [sourceMix] - Events per source, e.g. `{foresignal: 12, ucdp: 340}`
/// * [licences]
/// * [unconditional]
/// * [regionProfiles]
/// * [caveats] - `SMALL_SAMPLE`, `LOW_REPORTING_DENSITY`, `MIXED_SOURCES`, `LOW_DETECTABILITY`, and `LOCAL_ONLY_WITHHELD` when the per-source counts of a LOCAL_ONLY source are not shown on the path
/// * [computer]
/// * [computedAt]
/// * [origin]
/// * [cached] - Ad-hoc queries: served from the 24 h cache
/// * [manifestId] - ULID identifier
@BuiltValue()
abstract class BaseRate implements Built<BaseRate, BaseRateBuilder> {
  /// Null for ad-hoc query results that were not stored
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'definition')
  BaseRateDefinition get definition;

  /// Plain-language reference class
  @BuiltValueField(wireName: r'referenceClass')
  String get referenceClass;

  /// Mean events per window
  @BuiltValueField(wireName: r'ratePerWindow')
  num get ratePerWindow;

  @BuiltValueField(wireName: r'pAtLeastOne')
  num get pAtLeastOne;

  @BuiltValueField(wireName: r'interval')
  StatInterval get interval;

  @BuiltValueField(wireName: r'nWindows')
  int get nWindows;

  @BuiltValueField(wireName: r'nEvents')
  int get nEvents;

  @BuiltValueField(wireName: r'periodFrom')
  Date get periodFrom;

  @BuiltValueField(wireName: r'periodTo')
  Date get periodTo;

  /// Events per source, e.g. `{foresignal: 12, ucdp: 340}`
  @BuiltValueField(wireName: r'sourceMix')
  BuiltMap<String, int> get sourceMix;

  @BuiltValueField(wireName: r'licences')
  BuiltList<BaseRateLicencesInner>? get licences;

  @BuiltValueField(wireName: r'unconditional')
  BaseRateUnconditional? get unconditional;

  @BuiltValueField(wireName: r'regionProfiles')
  BuiltList<RegionProfile>? get regionProfiles;

  /// `SMALL_SAMPLE`, `LOW_REPORTING_DENSITY`, `MIXED_SOURCES`, `LOW_DETECTABILITY`, and `LOCAL_ONLY_WITHHELD` when the per-source counts of a LOCAL_ONLY source are not shown on the path
  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat> get caveats;

  @BuiltValueField(wireName: r'computer')
  DetectorRef get computer;

  @BuiltValueField(wireName: r'computedAt')
  DateTime get computedAt;

  @BuiltValueField(wireName: r'origin')
  BaseRateOriginEnum get origin;
  // enum originEnum {  auto,  operator,  agent,  };

  /// Ad-hoc queries: served from the 24 h cache
  @BuiltValueField(wireName: r'cached')
  bool? get cached;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String get manifestId;

  BaseRate._();

  factory BaseRate([void updates(BaseRateBuilder b)]) = _$BaseRate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BaseRateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseRate> get serializer => _$BaseRateSerializer();
}

class _$BaseRateSerializer implements PrimitiveSerializer<BaseRate> {
  @override
  final Iterable<Type> types = const [BaseRate, _$BaseRate];

  @override
  final String wireName = r'BaseRate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseRate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield object.id == null
        ? null
        : serializers.serialize(
            object.id,
            specifiedType: const FullType.nullable(String),
          );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'definition';
    yield serializers.serialize(
      object.definition,
      specifiedType: const FullType(BaseRateDefinition),
    );
    yield r'referenceClass';
    yield serializers.serialize(
      object.referenceClass,
      specifiedType: const FullType(String),
    );
    yield r'ratePerWindow';
    yield serializers.serialize(
      object.ratePerWindow,
      specifiedType: const FullType(num),
    );
    yield r'pAtLeastOne';
    yield serializers.serialize(
      object.pAtLeastOne,
      specifiedType: const FullType(num),
    );
    yield r'interval';
    yield serializers.serialize(
      object.interval,
      specifiedType: const FullType(StatInterval),
    );
    yield r'nWindows';
    yield serializers.serialize(
      object.nWindows,
      specifiedType: const FullType(int),
    );
    yield r'nEvents';
    yield serializers.serialize(
      object.nEvents,
      specifiedType: const FullType(int),
    );
    yield r'periodFrom';
    yield serializers.serialize(
      object.periodFrom,
      specifiedType: const FullType(Date),
    );
    yield r'periodTo';
    yield serializers.serialize(
      object.periodTo,
      specifiedType: const FullType(Date),
    );
    yield r'sourceMix';
    yield serializers.serialize(
      object.sourceMix,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(int),
      ]),
    );
    if (object.licences != null) {
      yield r'licences';
      yield serializers.serialize(
        object.licences,
        specifiedType: const FullType(BuiltList, [
          FullType(BaseRateLicencesInner),
        ]),
      );
    }
    if (object.unconditional != null) {
      yield r'unconditional';
      yield serializers.serialize(
        object.unconditional,
        specifiedType: const FullType.nullable(BaseRateUnconditional),
      );
    }
    if (object.regionProfiles != null) {
      yield r'regionProfiles';
      yield serializers.serialize(
        object.regionProfiles,
        specifiedType: const FullType(BuiltList, [FullType(RegionProfile)]),
      );
    }
    yield r'caveats';
    yield serializers.serialize(
      object.caveats,
      specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
    );
    yield r'computer';
    yield serializers.serialize(
      object.computer,
      specifiedType: const FullType(DetectorRef),
    );
    yield r'computedAt';
    yield serializers.serialize(
      object.computedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'origin';
    yield serializers.serialize(
      object.origin,
      specifiedType: const FullType(BaseRateOriginEnum),
    );
    if (object.cached != null) {
      yield r'cached';
      yield serializers.serialize(
        object.cached,
        specifiedType: const FullType(bool),
      );
    }
    yield r'manifestId';
    yield serializers.serialize(
      object.manifestId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BaseRate object, {
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
    required BaseRateBuilder result,
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
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'definition':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BaseRateDefinition),
                  )
                  as BaseRateDefinition;
          result.definition.replace(valueDes);
          break;
        case r'referenceClass':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.referenceClass = valueDes;
          break;
        case r'ratePerWindow':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.ratePerWindow = valueDes;
          break;
        case r'pAtLeastOne':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.pAtLeastOne = valueDes;
          break;
        case r'interval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(StatInterval),
                  )
                  as StatInterval;
          result.interval.replace(valueDes);
          break;
        case r'nWindows':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.nWindows = valueDes;
          break;
        case r'nEvents':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.nEvents = valueDes;
          break;
        case r'periodFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Date),
                  )
                  as Date;
          result.periodFrom = valueDes;
          break;
        case r'periodTo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Date),
                  )
                  as Date;
          result.periodTo = valueDes;
          break;
        case r'sourceMix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(int),
                    ]),
                  )
                  as BuiltMap<String, int>;
          result.sourceMix.replace(valueDes);
          break;
        case r'licences':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(BaseRateLicencesInner),
                    ]),
                  )
                  as BuiltList<BaseRateLicencesInner>?;
          if (valueDes == null) continue;
          result.licences.replace(valueDes);
          break;
        case r'unconditional':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      BaseRateUnconditional,
                    ),
                  )
                  as BaseRateUnconditional?;
          if (valueDes == null) continue;
          result.unconditional.replace(valueDes);
          break;
        case r'regionProfiles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RegionProfile),
                    ]),
                  )
                  as BuiltList<RegionProfile>?;
          if (valueDes == null) continue;
          result.regionProfiles.replace(valueDes);
          break;
        case r'caveats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(Caveat),
                    ]),
                  )
                  as BuiltList<Caveat>;
          result.caveats.replace(valueDes);
          break;
        case r'computer':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DetectorRef),
                  )
                  as DetectorRef;
          result.computer.replace(valueDes);
          break;
        case r'computedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.computedAt = valueDes;
          break;
        case r'origin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BaseRateOriginEnum),
                  )
                  as BaseRateOriginEnum;
          result.origin = valueDes;
          break;
        case r'cached':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.cached = valueDes;
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.manifestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BaseRate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaseRateBuilder();
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

class BaseRateOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'auto')
  static const BaseRateOriginEnum auto = _$baseRateOriginEnum_auto;
  @BuiltValueEnumConst(wireName: r'operator')
  static const BaseRateOriginEnum operator_ = _$baseRateOriginEnum_operator_;
  @BuiltValueEnumConst(wireName: r'agent')
  static const BaseRateOriginEnum agent = _$baseRateOriginEnum_agent;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BaseRateOriginEnum unknownDefaultOpenApi =
      _$baseRateOriginEnum_unknownDefaultOpenApi;

  static Serializer<BaseRateOriginEnum> get serializer =>
      _$baseRateOriginEnumSerializer;

  const BaseRateOriginEnum._(String name) : super(name);

  static BuiltSet<BaseRateOriginEnum> get values => _$baseRateOriginEnumValues;
  static BaseRateOriginEnum valueOf(String name) =>
      _$baseRateOriginEnumValueOf(name);
}

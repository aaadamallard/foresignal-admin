//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lead_time_stats_filters.g.dart';

/// Applied filters
///
/// Properties:
/// * [claimType]
/// * [platform]
/// * [region]
/// * [foundBy]
/// * [since]
@BuiltValue()
abstract class LeadTimeStatsFilters
    implements Built<LeadTimeStatsFilters, LeadTimeStatsFiltersBuilder> {
  @BuiltValueField(wireName: r'claimType')
  String? get claimType;

  @BuiltValueField(wireName: r'platform')
  String? get platform;

  @BuiltValueField(wireName: r'region')
  String? get region;

  @BuiltValueField(wireName: r'foundBy')
  LeadTimeStatsFiltersFoundByEnum? get foundBy;
  // enum foundByEnum {  organic,  cue,  };

  @BuiltValueField(wireName: r'since')
  DateTime? get since;

  LeadTimeStatsFilters._();

  factory LeadTimeStatsFilters([void updates(LeadTimeStatsFiltersBuilder b)]) =
      _$LeadTimeStatsFilters;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LeadTimeStatsFiltersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LeadTimeStatsFilters> get serializer =>
      _$LeadTimeStatsFiltersSerializer();
}

class _$LeadTimeStatsFiltersSerializer
    implements PrimitiveSerializer<LeadTimeStatsFilters> {
  @override
  final Iterable<Type> types = const [
    LeadTimeStatsFilters,
    _$LeadTimeStatsFilters,
  ];

  @override
  final String wireName = r'LeadTimeStatsFilters';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LeadTimeStatsFilters object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.claimType != null) {
      yield r'claimType';
      yield serializers.serialize(
        object.claimType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.platform != null) {
      yield r'platform';
      yield serializers.serialize(
        object.platform,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.region != null) {
      yield r'region';
      yield serializers.serialize(
        object.region,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.foundBy != null) {
      yield r'foundBy';
      yield serializers.serialize(
        object.foundBy,
        specifiedType: const FullType.nullable(LeadTimeStatsFiltersFoundByEnum),
      );
    }
    if (object.since != null) {
      yield r'since';
      yield serializers.serialize(
        object.since,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LeadTimeStatsFilters object, {
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
    required LeadTimeStatsFiltersBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'claimType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.claimType = valueDes;
          break;
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.platform = valueDes;
          break;
        case r'region':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.region = valueDes;
          break;
        case r'foundBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      LeadTimeStatsFiltersFoundByEnum,
                    ),
                  )
                  as LeadTimeStatsFiltersFoundByEnum?;
          if (valueDes == null) continue;
          result.foundBy = valueDes;
          break;
        case r'since':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.since = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LeadTimeStatsFilters deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LeadTimeStatsFiltersBuilder();
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

class LeadTimeStatsFiltersFoundByEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'organic')
  static const LeadTimeStatsFiltersFoundByEnum organic =
      _$leadTimeStatsFiltersFoundByEnum_organic;
  @BuiltValueEnumConst(wireName: r'cue')
  static const LeadTimeStatsFiltersFoundByEnum cue =
      _$leadTimeStatsFiltersFoundByEnum_cue;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const LeadTimeStatsFiltersFoundByEnum unknownDefaultOpenApi =
      _$leadTimeStatsFiltersFoundByEnum_unknownDefaultOpenApi;

  static Serializer<LeadTimeStatsFiltersFoundByEnum> get serializer =>
      _$leadTimeStatsFiltersFoundByEnumSerializer;

  const LeadTimeStatsFiltersFoundByEnum._(String name) : super(name);

  static BuiltSet<LeadTimeStatsFiltersFoundByEnum> get values =>
      _$leadTimeStatsFiltersFoundByEnumValues;
  static LeadTimeStatsFiltersFoundByEnum valueOf(String name) =>
      _$leadTimeStatsFiltersFoundByEnumValueOf(name);
}

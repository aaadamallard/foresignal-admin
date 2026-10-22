//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/lead_time_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lead_time_stats_groups_inner.g.dart';

/// One claim type × platform × region × foundBy group
///
/// Properties:
/// * [claimType]
/// * [platform] - Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
/// * [regionCode]
/// * [foundBy]
/// * [comparisons]
/// * [outOfSample]
/// * [overPhysical]
/// * [overNews]
/// * [overOfficial]
/// * [outOfSampleOverPhysical]
@BuiltValue()
abstract class LeadTimeStatsGroupsInner
    implements
        Built<LeadTimeStatsGroupsInner, LeadTimeStatsGroupsInnerBuilder> {
  @BuiltValueField(wireName: r'claimType')
  String get claimType;

  /// Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
  @BuiltValueField(wireName: r'platform')
  String get platform;

  @BuiltValueField(wireName: r'regionCode')
  String? get regionCode;

  @BuiltValueField(wireName: r'foundBy')
  LeadTimeStatsGroupsInnerFoundByEnum get foundBy;
  // enum foundByEnum {  organic,  cue,  };

  @BuiltValueField(wireName: r'comparisons')
  int get comparisons;

  @BuiltValueField(wireName: r'outOfSample')
  int get outOfSample;

  @BuiltValueField(wireName: r'overPhysical')
  LeadTimeSummary get overPhysical;

  @BuiltValueField(wireName: r'overNews')
  LeadTimeSummary get overNews;

  @BuiltValueField(wireName: r'overOfficial')
  LeadTimeSummary get overOfficial;

  @BuiltValueField(wireName: r'outOfSampleOverPhysical')
  LeadTimeSummary? get outOfSampleOverPhysical;

  LeadTimeStatsGroupsInner._();

  factory LeadTimeStatsGroupsInner(
          [void updates(LeadTimeStatsGroupsInnerBuilder b)]) =
      _$LeadTimeStatsGroupsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LeadTimeStatsGroupsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LeadTimeStatsGroupsInner> get serializer =>
      _$LeadTimeStatsGroupsInnerSerializer();
}

class _$LeadTimeStatsGroupsInnerSerializer
    implements PrimitiveSerializer<LeadTimeStatsGroupsInner> {
  @override
  final Iterable<Type> types = const [
    LeadTimeStatsGroupsInner,
    _$LeadTimeStatsGroupsInner
  ];

  @override
  final String wireName = r'LeadTimeStatsGroupsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LeadTimeStatsGroupsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'claimType';
    yield serializers.serialize(
      object.claimType,
      specifiedType: const FullType(String),
    );
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(String),
    );
    if (object.regionCode != null) {
      yield r'regionCode';
      yield serializers.serialize(
        object.regionCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'foundBy';
    yield serializers.serialize(
      object.foundBy,
      specifiedType: const FullType(LeadTimeStatsGroupsInnerFoundByEnum),
    );
    yield r'comparisons';
    yield serializers.serialize(
      object.comparisons,
      specifiedType: const FullType(int),
    );
    yield r'outOfSample';
    yield serializers.serialize(
      object.outOfSample,
      specifiedType: const FullType(int),
    );
    yield r'overPhysical';
    yield serializers.serialize(
      object.overPhysical,
      specifiedType: const FullType(LeadTimeSummary),
    );
    yield r'overNews';
    yield serializers.serialize(
      object.overNews,
      specifiedType: const FullType(LeadTimeSummary),
    );
    yield r'overOfficial';
    yield serializers.serialize(
      object.overOfficial,
      specifiedType: const FullType(LeadTimeSummary),
    );
    if (object.outOfSampleOverPhysical != null) {
      yield r'outOfSampleOverPhysical';
      yield serializers.serialize(
        object.outOfSampleOverPhysical,
        specifiedType: const FullType(LeadTimeSummary),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LeadTimeStatsGroupsInner object, {
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
    required LeadTimeStatsGroupsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'claimType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.claimType = valueDes;
          break;
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.platform = valueDes;
          break;
        case r'regionCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.regionCode = valueDes;
          break;
        case r'foundBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LeadTimeStatsGroupsInnerFoundByEnum),
          ) as LeadTimeStatsGroupsInnerFoundByEnum;
          result.foundBy = valueDes;
          break;
        case r'comparisons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.comparisons = valueDes;
          break;
        case r'outOfSample':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.outOfSample = valueDes;
          break;
        case r'overPhysical':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LeadTimeSummary),
          ) as LeadTimeSummary;
          result.overPhysical.replace(valueDes);
          break;
        case r'overNews':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LeadTimeSummary),
          ) as LeadTimeSummary;
          result.overNews.replace(valueDes);
          break;
        case r'overOfficial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LeadTimeSummary),
          ) as LeadTimeSummary;
          result.overOfficial.replace(valueDes);
          break;
        case r'outOfSampleOverPhysical':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LeadTimeSummary),
          ) as LeadTimeSummary?;
          if (valueDes == null) continue;
          result.outOfSampleOverPhysical.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LeadTimeStatsGroupsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LeadTimeStatsGroupsInnerBuilder();
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

class LeadTimeStatsGroupsInnerFoundByEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'organic')
  static const LeadTimeStatsGroupsInnerFoundByEnum organic =
      _$leadTimeStatsGroupsInnerFoundByEnum_organic;
  @BuiltValueEnumConst(wireName: r'cue')
  static const LeadTimeStatsGroupsInnerFoundByEnum cue =
      _$leadTimeStatsGroupsInnerFoundByEnum_cue;

  static Serializer<LeadTimeStatsGroupsInnerFoundByEnum> get serializer =>
      _$leadTimeStatsGroupsInnerFoundByEnumSerializer;

  const LeadTimeStatsGroupsInnerFoundByEnum._(String name) : super(name);

  static BuiltSet<LeadTimeStatsGroupsInnerFoundByEnum> get values =>
      _$leadTimeStatsGroupsInnerFoundByEnumValues;
  static LeadTimeStatsGroupsInnerFoundByEnum valueOf(String name) =>
      _$leadTimeStatsGroupsInnerFoundByEnumValueOf(name);
}

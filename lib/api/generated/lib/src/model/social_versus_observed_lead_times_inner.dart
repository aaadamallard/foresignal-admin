//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/lead_time_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_versus_observed_lead_times_inner.g.dart';

/// Notable out-of-sample lead time
///
/// Properties:
/// * [claimType]
/// * [platform] - Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
/// * [regionCode]
/// * [overPhysical]
@BuiltValue()
abstract class SocialVersusObservedLeadTimesInner
    implements
        Built<
          SocialVersusObservedLeadTimesInner,
          SocialVersusObservedLeadTimesInnerBuilder
        > {
  @BuiltValueField(wireName: r'claimType')
  String get claimType;

  /// Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
  @BuiltValueField(wireName: r'platform')
  String get platform;

  @BuiltValueField(wireName: r'regionCode')
  String? get regionCode;

  @BuiltValueField(wireName: r'overPhysical')
  LeadTimeSummary get overPhysical;

  SocialVersusObservedLeadTimesInner._();

  factory SocialVersusObservedLeadTimesInner([
    void updates(SocialVersusObservedLeadTimesInnerBuilder b),
  ]) = _$SocialVersusObservedLeadTimesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialVersusObservedLeadTimesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialVersusObservedLeadTimesInner> get serializer =>
      _$SocialVersusObservedLeadTimesInnerSerializer();
}

class _$SocialVersusObservedLeadTimesInnerSerializer
    implements PrimitiveSerializer<SocialVersusObservedLeadTimesInner> {
  @override
  final Iterable<Type> types = const [
    SocialVersusObservedLeadTimesInner,
    _$SocialVersusObservedLeadTimesInner,
  ];

  @override
  final String wireName = r'SocialVersusObservedLeadTimesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialVersusObservedLeadTimesInner object, {
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
    yield r'overPhysical';
    yield serializers.serialize(
      object.overPhysical,
      specifiedType: const FullType(LeadTimeSummary),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialVersusObservedLeadTimesInner object, {
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
    required SocialVersusObservedLeadTimesInnerBuilder result,
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
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.claimType = valueDes;
          break;
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.platform = valueDes;
          break;
        case r'regionCode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.regionCode = valueDes;
          break;
        case r'overPhysical':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(LeadTimeSummary),
                  )
                  as LeadTimeSummary;
          result.overPhysical.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialVersusObservedLeadTimesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialVersusObservedLeadTimesInnerBuilder();
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

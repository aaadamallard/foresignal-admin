//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_settings_track_record_overrides_inner.g.dart';

/// Operator override per account or channel
///
/// Properties:
/// * [platform] - Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
/// * [account] - Author key (`authorKey` of the account, as posts expose it; 136 keys overrides by author key, not handle)
/// * [channel]
/// * [reliability]
/// * [note]
@BuiltValue()
abstract class SocialSettingsTrackRecordOverridesInner
    implements
        Built<SocialSettingsTrackRecordOverridesInner,
            SocialSettingsTrackRecordOverridesInnerBuilder> {
  /// Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
  @BuiltValueField(wireName: r'platform')
  String get platform;

  /// Author key (`authorKey` of the account, as posts expose it; 136 keys overrides by author key, not handle)
  @BuiltValueField(wireName: r'account')
  String? get account;

  @BuiltValueField(wireName: r'channel')
  String? get channel;

  @BuiltValueField(wireName: r'reliability')
  SocialSettingsTrackRecordOverridesInnerReliabilityEnum get reliability;
  // enum reliabilityEnum {  A,  B,  C,  D,  E,  F,  };

  @BuiltValueField(wireName: r'note')
  String? get note;

  SocialSettingsTrackRecordOverridesInner._();

  factory SocialSettingsTrackRecordOverridesInner(
          [void updates(SocialSettingsTrackRecordOverridesInnerBuilder b)]) =
      _$SocialSettingsTrackRecordOverridesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialSettingsTrackRecordOverridesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialSettingsTrackRecordOverridesInner> get serializer =>
      _$SocialSettingsTrackRecordOverridesInnerSerializer();
}

class _$SocialSettingsTrackRecordOverridesInnerSerializer
    implements PrimitiveSerializer<SocialSettingsTrackRecordOverridesInner> {
  @override
  final Iterable<Type> types = const [
    SocialSettingsTrackRecordOverridesInner,
    _$SocialSettingsTrackRecordOverridesInner
  ];

  @override
  final String wireName = r'SocialSettingsTrackRecordOverridesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialSettingsTrackRecordOverridesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(String),
    );
    if (object.account != null) {
      yield r'account';
      yield serializers.serialize(
        object.account,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.channel != null) {
      yield r'channel';
      yield serializers.serialize(
        object.channel,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'reliability';
    yield serializers.serialize(
      object.reliability,
      specifiedType: const FullType(
          SocialSettingsTrackRecordOverridesInnerReliabilityEnum),
    );
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialSettingsTrackRecordOverridesInner object, {
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
    required SocialSettingsTrackRecordOverridesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.platform = valueDes;
          break;
        case r'account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.account = valueDes;
          break;
        case r'channel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.channel = valueDes;
          break;
        case r'reliability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                SocialSettingsTrackRecordOverridesInnerReliabilityEnum),
          ) as SocialSettingsTrackRecordOverridesInnerReliabilityEnum;
          result.reliability = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialSettingsTrackRecordOverridesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialSettingsTrackRecordOverridesInnerBuilder();
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

class SocialSettingsTrackRecordOverridesInnerReliabilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'A')
  static const SocialSettingsTrackRecordOverridesInnerReliabilityEnum A =
      _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_A;
  @BuiltValueEnumConst(wireName: r'B')
  static const SocialSettingsTrackRecordOverridesInnerReliabilityEnum B =
      _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_B;
  @BuiltValueEnumConst(wireName: r'C')
  static const SocialSettingsTrackRecordOverridesInnerReliabilityEnum C =
      _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_C;
  @BuiltValueEnumConst(wireName: r'D')
  static const SocialSettingsTrackRecordOverridesInnerReliabilityEnum D =
      _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_D;
  @BuiltValueEnumConst(wireName: r'E')
  static const SocialSettingsTrackRecordOverridesInnerReliabilityEnum E =
      _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_E;
  @BuiltValueEnumConst(wireName: r'F')
  static const SocialSettingsTrackRecordOverridesInnerReliabilityEnum F =
      _$socialSettingsTrackRecordOverridesInnerReliabilityEnum_F;

  static Serializer<SocialSettingsTrackRecordOverridesInnerReliabilityEnum>
      get serializer =>
          _$socialSettingsTrackRecordOverridesInnerReliabilityEnumSerializer;

  const SocialSettingsTrackRecordOverridesInnerReliabilityEnum._(String name)
      : super(name);

  static BuiltSet<SocialSettingsTrackRecordOverridesInnerReliabilityEnum>
      get values =>
          _$socialSettingsTrackRecordOverridesInnerReliabilityEnumValues;
  static SocialSettingsTrackRecordOverridesInnerReliabilityEnum valueOf(
          String name) =>
      _$socialSettingsTrackRecordOverridesInnerReliabilityEnumValueOf(name);
}

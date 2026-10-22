//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/social_collection_path.dart';
import 'package:foresignal_api/src/model/social_platform_settings.dart';
import 'package:foresignal_api/src/model/social_platform_credentials.dart';
import 'package:foresignal_api/src/model/social_platform_id.dart';
import 'package:foresignal_api/src/model/social_quota.dart';
import 'package:foresignal_api/src/model/social_spend.dart';
import 'package:foresignal_api/src/model/social_platform_terms.dart';
import 'package:foresignal_api/src/model/social_platform_deletion_sync.dart';
import 'package:foresignal_api/src/model/social_platform_stream.dart';
import 'package:foresignal_api/src/model/source_health.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_platform.g.dart';

/// A social platform adapter with state, collection paths, health, quota and spend (135)
///
/// Properties:
/// * [id]
/// * [network] - Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
/// * [name]
/// * [state] - Adapter state; changes emit `social.platform.state`
/// * [stateReason]
/// * [defaultEnabled]
/// * [type] - Source type
/// * [mode]
/// * [paths]
/// * [credentials]
/// * [health]
/// * [stream]
/// * [quotas]
/// * [spend]
/// * [deletionSync]
/// * [terms]
/// * [settings]
/// * [updatedAt]
@BuiltValue()
abstract class SocialPlatform
    implements Built<SocialPlatform, SocialPlatformBuilder> {
  @BuiltValueField(wireName: r'id')
  SocialPlatformId get id;
  // enum idEnum {  bluesky-jetstream,  bluesky-search,  mastodon,  reddit,  youtube,  x,  threads,  instagram-hashtags,  };

  /// Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
  @BuiltValueField(wireName: r'network')
  String get network;

  @BuiltValueField(wireName: r'name')
  String get name;

  /// Adapter state; changes emit `social.platform.state`
  @BuiltValueField(wireName: r'state')
  SocialPlatformStateEnum get state;
  // enum stateEnum {  enabled,  disabled,  degraded,  budget-exhausted,  credentials-required,  unavailable,  };

  @BuiltValueField(wireName: r'stateReason')
  String? get stateReason;

  @BuiltValueField(wireName: r'defaultEnabled')
  bool? get defaultEnabled;

  /// Source type
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'mode')
  String? get mode;

  @BuiltValueField(wireName: r'paths')
  BuiltList<SocialCollectionPath> get paths;

  @BuiltValueField(wireName: r'credentials')
  SocialPlatformCredentials get credentials;

  @BuiltValueField(wireName: r'health')
  SourceHealth? get health;

  @BuiltValueField(wireName: r'stream')
  SocialPlatformStream? get stream;

  @BuiltValueField(wireName: r'quotas')
  BuiltList<SocialQuota>? get quotas;

  @BuiltValueField(wireName: r'spend')
  SocialSpend? get spend;

  @BuiltValueField(wireName: r'deletionSync')
  SocialPlatformDeletionSync? get deletionSync;

  @BuiltValueField(wireName: r'terms')
  SocialPlatformTerms? get terms;

  @BuiltValueField(wireName: r'settings')
  SocialPlatformSettings get settings;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  SocialPlatform._();

  factory SocialPlatform([void updates(SocialPlatformBuilder b)]) =
      _$SocialPlatform;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialPlatformBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialPlatform> get serializer =>
      _$SocialPlatformSerializer();
}

class _$SocialPlatformSerializer
    implements PrimitiveSerializer<SocialPlatform> {
  @override
  final Iterable<Type> types = const [SocialPlatform, _$SocialPlatform];

  @override
  final String wireName = r'SocialPlatform';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialPlatform object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(SocialPlatformId),
    );
    yield r'network';
    yield serializers.serialize(
      object.network,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(SocialPlatformStateEnum),
    );
    if (object.stateReason != null) {
      yield r'stateReason';
      yield serializers.serialize(
        object.stateReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.defaultEnabled != null) {
      yield r'defaultEnabled';
      yield serializers.serialize(
        object.defaultEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'paths';
    yield serializers.serialize(
      object.paths,
      specifiedType:
          const FullType(BuiltList, [FullType(SocialCollectionPath)]),
    );
    yield r'credentials';
    yield serializers.serialize(
      object.credentials,
      specifiedType: const FullType(SocialPlatformCredentials),
    );
    if (object.health != null) {
      yield r'health';
      yield serializers.serialize(
        object.health,
        specifiedType: const FullType.nullable(SourceHealth),
      );
    }
    if (object.stream != null) {
      yield r'stream';
      yield serializers.serialize(
        object.stream,
        specifiedType: const FullType.nullable(SocialPlatformStream),
      );
    }
    if (object.quotas != null) {
      yield r'quotas';
      yield serializers.serialize(
        object.quotas,
        specifiedType: const FullType(BuiltList, [FullType(SocialQuota)]),
      );
    }
    if (object.spend != null) {
      yield r'spend';
      yield serializers.serialize(
        object.spend,
        specifiedType: const FullType.nullable(SocialSpend),
      );
    }
    if (object.deletionSync != null) {
      yield r'deletionSync';
      yield serializers.serialize(
        object.deletionSync,
        specifiedType: const FullType(SocialPlatformDeletionSync),
      );
    }
    if (object.terms != null) {
      yield r'terms';
      yield serializers.serialize(
        object.terms,
        specifiedType: const FullType(SocialPlatformTerms),
      );
    }
    yield r'settings';
    yield serializers.serialize(
      object.settings,
      specifiedType: const FullType(SocialPlatformSettings),
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
    SocialPlatform object, {
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
    required SocialPlatformBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SocialPlatformId),
          ) as SocialPlatformId;
          result.id = valueDes;
          break;
        case r'network':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.network = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SocialPlatformStateEnum),
          ) as SocialPlatformStateEnum;
          result.state = valueDes;
          break;
        case r'stateReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.stateReason = valueDes;
          break;
        case r'defaultEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.defaultEnabled = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mode = valueDes;
          break;
        case r'paths':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(SocialCollectionPath)]),
          ) as BuiltList<SocialCollectionPath>;
          result.paths.replace(valueDes);
          break;
        case r'credentials':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SocialPlatformCredentials),
          ) as SocialPlatformCredentials;
          result.credentials.replace(valueDes);
          break;
        case r'health':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SourceHealth),
          ) as SourceHealth?;
          if (valueDes == null) continue;
          result.health.replace(valueDes);
          break;
        case r'stream':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SocialPlatformStream),
          ) as SocialPlatformStream?;
          if (valueDes == null) continue;
          result.stream.replace(valueDes);
          break;
        case r'quotas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(SocialQuota)]),
          ) as BuiltList<SocialQuota>?;
          if (valueDes == null) continue;
          result.quotas.replace(valueDes);
          break;
        case r'spend':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SocialSpend),
          ) as SocialSpend?;
          if (valueDes == null) continue;
          result.spend.replace(valueDes);
          break;
        case r'deletionSync':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SocialPlatformDeletionSync),
          ) as SocialPlatformDeletionSync?;
          if (valueDes == null) continue;
          result.deletionSync.replace(valueDes);
          break;
        case r'terms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SocialPlatformTerms),
          ) as SocialPlatformTerms?;
          if (valueDes == null) continue;
          result.terms.replace(valueDes);
          break;
        case r'settings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SocialPlatformSettings),
          ) as SocialPlatformSettings;
          result.settings.replace(valueDes);
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
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
  SocialPlatform deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialPlatformBuilder();
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

/// Adapter state; changes emit `social.platform.state`
class SocialPlatformStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'enabled')
  static const SocialPlatformStateEnum enabled =
      _$socialPlatformStateEnum_enabled;
  @BuiltValueEnumConst(wireName: r'disabled')
  static const SocialPlatformStateEnum disabled =
      _$socialPlatformStateEnum_disabled;
  @BuiltValueEnumConst(wireName: r'degraded')
  static const SocialPlatformStateEnum degraded =
      _$socialPlatformStateEnum_degraded;
  @BuiltValueEnumConst(wireName: r'budget-exhausted')
  static const SocialPlatformStateEnum budgetExhausted =
      _$socialPlatformStateEnum_budgetExhausted;
  @BuiltValueEnumConst(wireName: r'credentials-required')
  static const SocialPlatformStateEnum credentialsRequired =
      _$socialPlatformStateEnum_credentialsRequired;
  @BuiltValueEnumConst(wireName: r'unavailable')
  static const SocialPlatformStateEnum unavailable =
      _$socialPlatformStateEnum_unavailable;

  static Serializer<SocialPlatformStateEnum> get serializer =>
      _$socialPlatformStateEnumSerializer;

  const SocialPlatformStateEnum._(String name) : super(name);

  static BuiltSet<SocialPlatformStateEnum> get values =>
      _$socialPlatformStateEnumValues;
  static SocialPlatformStateEnum valueOf(String name) =>
      _$socialPlatformStateEnumValueOf(name);
}

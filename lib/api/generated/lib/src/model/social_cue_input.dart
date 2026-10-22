//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/social_platform_id.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_cue_input.g.dart';

/// A manual cue: a targeted, budgeted social search around a place, area, entity or situation (agent)
///
/// Properties:
/// * [placeId] - 036 place
/// * [regionCode] - 040 region
/// * [bbox] - minLon,minLat,maxLon,maxLat
/// * [entityRef] - 098 entity
/// * [situationId] - ULID identifier
/// * [terms] - Extra terms added to the generated queries
/// * [families] - Signal families whose lexicon terms are added (default from the situation or none)
/// * [platforms] - Search-capable adapters; default all enabled ones
/// * [window]
/// * [maxCostUsd] - Cost cap; default and ceiling `social.cues.maxCostUsdPerCue` (1.00)
@BuiltValue()
abstract class SocialCueInput
    implements Built<SocialCueInput, SocialCueInputBuilder> {
  /// 036 place
  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  /// 040 region
  @BuiltValueField(wireName: r'regionCode')
  String? get regionCode;

  /// minLon,minLat,maxLon,maxLat
  @BuiltValueField(wireName: r'bbox')
  String? get bbox;

  /// 098 entity
  @BuiltValueField(wireName: r'entityRef')
  String? get entityRef;

  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String? get situationId;

  /// Extra terms added to the generated queries
  @BuiltValueField(wireName: r'terms')
  BuiltList<String>? get terms;

  /// Signal families whose lexicon terms are added (default from the situation or none)
  @BuiltValueField(wireName: r'families')
  BuiltList<String>? get families;

  /// Search-capable adapters; default all enabled ones
  @BuiltValueField(wireName: r'platforms')
  BuiltList<SocialPlatformId>? get platforms;

  @BuiltValueField(wireName: r'window')
  TimeRange get window;

  /// Cost cap; default and ceiling `social.cues.maxCostUsdPerCue` (1.00)
  @BuiltValueField(wireName: r'maxCostUsd')
  num? get maxCostUsd;

  SocialCueInput._();

  factory SocialCueInput([void updates(SocialCueInputBuilder b)]) =
      _$SocialCueInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialCueInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialCueInput> get serializer =>
      _$SocialCueInputSerializer();
}

class _$SocialCueInputSerializer
    implements PrimitiveSerializer<SocialCueInput> {
  @override
  final Iterable<Type> types = const [SocialCueInput, _$SocialCueInput];

  @override
  final String wireName = r'SocialCueInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialCueInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.regionCode != null) {
      yield r'regionCode';
      yield serializers.serialize(
        object.regionCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.entityRef != null) {
      yield r'entityRef';
      yield serializers.serialize(
        object.entityRef,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.situationId != null) {
      yield r'situationId';
      yield serializers.serialize(
        object.situationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.terms != null) {
      yield r'terms';
      yield serializers.serialize(
        object.terms,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.families != null) {
      yield r'families';
      yield serializers.serialize(
        object.families,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.platforms != null) {
      yield r'platforms';
      yield serializers.serialize(
        object.platforms,
        specifiedType: const FullType(BuiltList, [FullType(SocialPlatformId)]),
      );
    }
    yield r'window';
    yield serializers.serialize(
      object.window,
      specifiedType: const FullType(TimeRange),
    );
    if (object.maxCostUsd != null) {
      yield r'maxCostUsd';
      yield serializers.serialize(
        object.maxCostUsd,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialCueInput object, {
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
    required SocialCueInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'placeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
          break;
        case r'regionCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.regionCode = valueDes;
          break;
        case r'bbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bbox = valueDes;
          break;
        case r'entityRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.entityRef = valueDes;
          break;
        case r'situationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.situationId = valueDes;
          break;
        case r'terms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.terms.replace(valueDes);
          break;
        case r'families':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.families.replace(valueDes);
          break;
        case r'platforms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(SocialPlatformId)]),
          ) as BuiltList<SocialPlatformId>?;
          if (valueDes == null) continue;
          result.platforms.replace(valueDes);
          break;
        case r'window':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TimeRange),
          ) as TimeRange;
          result.window.replace(valueDes);
          break;
        case r'maxCostUsd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.maxCostUsd = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialCueInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialCueInputBuilder();
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

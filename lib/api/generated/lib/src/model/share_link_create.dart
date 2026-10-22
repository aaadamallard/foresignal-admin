//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'share_link_create.g.dart';

/// Create a path-bound share link (112). Personal and private sources are masked by default
///
/// Properties:
/// * [targetType]
/// * [targetRef] - Target id: record `{sourceId}/{externalId}`, alert id, view id, track `{sourceId}/{externalId}`, `{briefingId}/{runId}`, or export job id
/// * [fieldMask] - Payload allowlist applied after licence filtering
/// * [precisionM] - Coordinate precision cap in metres (default 1,000 for personal or private sources)
/// * [expiresAt] - Default now + 7 d, maximum now + 30 d
/// * [maxUses]
@BuiltValue()
abstract class ShareLinkCreate
    implements Built<ShareLinkCreate, ShareLinkCreateBuilder> {
  @BuiltValueField(wireName: r'targetType')
  ShareLinkCreateTargetTypeEnum get targetType;
  // enum targetTypeEnum {  record,  alert,  view,  track,  briefing-run,  export,  };

  /// Target id: record `{sourceId}/{externalId}`, alert id, view id, track `{sourceId}/{externalId}`, `{briefingId}/{runId}`, or export job id
  @BuiltValueField(wireName: r'targetRef')
  String get targetRef;

  /// Payload allowlist applied after licence filtering
  @BuiltValueField(wireName: r'fieldMask')
  BuiltList<String>? get fieldMask;

  /// Coordinate precision cap in metres (default 1,000 for personal or private sources)
  @BuiltValueField(wireName: r'precisionM')
  int? get precisionM;

  /// Default now + 7 d, maximum now + 30 d
  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  @BuiltValueField(wireName: r'maxUses')
  int? get maxUses;

  ShareLinkCreate._();

  factory ShareLinkCreate([void updates(ShareLinkCreateBuilder b)]) =
      _$ShareLinkCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShareLinkCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShareLinkCreate> get serializer =>
      _$ShareLinkCreateSerializer();
}

class _$ShareLinkCreateSerializer
    implements PrimitiveSerializer<ShareLinkCreate> {
  @override
  final Iterable<Type> types = const [ShareLinkCreate, _$ShareLinkCreate];

  @override
  final String wireName = r'ShareLinkCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShareLinkCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'targetType';
    yield serializers.serialize(
      object.targetType,
      specifiedType: const FullType(ShareLinkCreateTargetTypeEnum),
    );
    yield r'targetRef';
    yield serializers.serialize(
      object.targetRef,
      specifiedType: const FullType(String),
    );
    if (object.fieldMask != null) {
      yield r'fieldMask';
      yield serializers.serialize(
        object.fieldMask,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.precisionM != null) {
      yield r'precisionM';
      yield serializers.serialize(
        object.precisionM,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.maxUses != null) {
      yield r'maxUses';
      yield serializers.serialize(
        object.maxUses,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ShareLinkCreate object, {
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
    required ShareLinkCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'targetType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ShareLinkCreateTargetTypeEnum),
          ) as ShareLinkCreateTargetTypeEnum;
          result.targetType = valueDes;
          break;
        case r'targetRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.targetRef = valueDes;
          break;
        case r'fieldMask':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.fieldMask.replace(valueDes);
          break;
        case r'precisionM':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.precisionM = valueDes;
          break;
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        case r'maxUses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxUses = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ShareLinkCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShareLinkCreateBuilder();
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

class ShareLinkCreateTargetTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'record')
  static const ShareLinkCreateTargetTypeEnum record =
      _$shareLinkCreateTargetTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'alert')
  static const ShareLinkCreateTargetTypeEnum alert =
      _$shareLinkCreateTargetTypeEnum_alert;
  @BuiltValueEnumConst(wireName: r'view')
  static const ShareLinkCreateTargetTypeEnum view =
      _$shareLinkCreateTargetTypeEnum_view;
  @BuiltValueEnumConst(wireName: r'track')
  static const ShareLinkCreateTargetTypeEnum track =
      _$shareLinkCreateTargetTypeEnum_track;
  @BuiltValueEnumConst(wireName: r'briefing-run')
  static const ShareLinkCreateTargetTypeEnum briefingRun =
      _$shareLinkCreateTargetTypeEnum_briefingRun;
  @BuiltValueEnumConst(wireName: r'export')
  static const ShareLinkCreateTargetTypeEnum export_ =
      _$shareLinkCreateTargetTypeEnum_export_;

  static Serializer<ShareLinkCreateTargetTypeEnum> get serializer =>
      _$shareLinkCreateTargetTypeEnumSerializer;

  const ShareLinkCreateTargetTypeEnum._(String name) : super(name);

  static BuiltSet<ShareLinkCreateTargetTypeEnum> get values =>
      _$shareLinkCreateTargetTypeEnumValues;
  static ShareLinkCreateTargetTypeEnum valueOf(String name) =>
      _$shareLinkCreateTargetTypeEnumValueOf(name);
}

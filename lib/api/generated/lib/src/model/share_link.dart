//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'share_link.g.dart';

/// A share link (the key is shown only once, at creation) (112)
///
/// Properties:
/// * [id] - ULID identifier
/// * [keyPrefix] - First characters of the fss_ key
/// * [targetType]
/// * [targetRef]
/// * [fieldMask]
/// * [precisionM]
/// * [masked] - Privacy mask applied (personal or private source)
/// * [expiresAt]
/// * [maxUses]
/// * [uses]
/// * [status]
/// * [createdBy]
/// * [createdAt]
/// * [revokedAt]
/// * [lastUsedAt]
@BuiltValue()
abstract class ShareLink implements Built<ShareLink, ShareLinkBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// First characters of the fss_ key
  @BuiltValueField(wireName: r'keyPrefix')
  String get keyPrefix;

  @BuiltValueField(wireName: r'targetType')
  ShareLinkTargetTypeEnum get targetType;
  // enum targetTypeEnum {  record,  alert,  view,  track,  briefing-run,  export,  workspace,  report,  };

  @BuiltValueField(wireName: r'targetRef')
  String get targetRef;

  @BuiltValueField(wireName: r'fieldMask')
  BuiltList<String>? get fieldMask;

  @BuiltValueField(wireName: r'precisionM')
  int? get precisionM;

  /// Privacy mask applied (personal or private source)
  @BuiltValueField(wireName: r'masked')
  bool? get masked;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime get expiresAt;

  @BuiltValueField(wireName: r'maxUses')
  int? get maxUses;

  @BuiltValueField(wireName: r'uses')
  int get uses;

  @BuiltValueField(wireName: r'status')
  ShareLinkStatusEnum get status;
  // enum statusEnum {  active,  expired,  revoked,  exhausted,  };

  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'revokedAt')
  DateTime? get revokedAt;

  @BuiltValueField(wireName: r'lastUsedAt')
  DateTime? get lastUsedAt;

  ShareLink._();

  factory ShareLink([void updates(ShareLinkBuilder b)]) = _$ShareLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShareLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShareLink> get serializer => _$ShareLinkSerializer();
}

class _$ShareLinkSerializer implements PrimitiveSerializer<ShareLink> {
  @override
  final Iterable<Type> types = const [ShareLink, _$ShareLink];

  @override
  final String wireName = r'ShareLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShareLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'keyPrefix';
    yield serializers.serialize(
      object.keyPrefix,
      specifiedType: const FullType(String),
    );
    yield r'targetType';
    yield serializers.serialize(
      object.targetType,
      specifiedType: const FullType(ShareLinkTargetTypeEnum),
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
    if (object.masked != null) {
      yield r'masked';
      yield serializers.serialize(
        object.masked,
        specifiedType: const FullType(bool),
      );
    }
    yield r'expiresAt';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.maxUses != null) {
      yield r'maxUses';
      yield serializers.serialize(
        object.maxUses,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'uses';
    yield serializers.serialize(
      object.uses,
      specifiedType: const FullType(int),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ShareLinkStatusEnum),
    );
    if (object.createdBy != null) {
      yield r'createdBy';
      yield serializers.serialize(
        object.createdBy,
        specifiedType: const FullType(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.revokedAt != null) {
      yield r'revokedAt';
      yield serializers.serialize(
        object.revokedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastUsedAt != null) {
      yield r'lastUsedAt';
      yield serializers.serialize(
        object.lastUsedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ShareLink object, {
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
    required ShareLinkBuilder result,
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
        case r'keyPrefix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.keyPrefix = valueDes;
          break;
        case r'targetType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ShareLinkTargetTypeEnum),
                  )
                  as ShareLinkTargetTypeEnum;
          result.targetType = valueDes;
          break;
        case r'targetRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.targetRef = valueDes;
          break;
        case r'fieldMask':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.fieldMask.replace(valueDes);
          break;
        case r'precisionM':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.precisionM = valueDes;
          break;
        case r'masked':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.masked = valueDes;
          break;
        case r'expiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.expiresAt = valueDes;
          break;
        case r'maxUses':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxUses = valueDes;
          break;
        case r'uses':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.uses = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ShareLinkStatusEnum),
                  )
                  as ShareLinkStatusEnum;
          result.status = valueDes;
          break;
        case r'createdBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.createdBy = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'revokedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.revokedAt = valueDes;
          break;
        case r'lastUsedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastUsedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ShareLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShareLinkBuilder();
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

class ShareLinkTargetTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'record')
  static const ShareLinkTargetTypeEnum record =
      _$shareLinkTargetTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'alert')
  static const ShareLinkTargetTypeEnum alert = _$shareLinkTargetTypeEnum_alert;
  @BuiltValueEnumConst(wireName: r'view')
  static const ShareLinkTargetTypeEnum view = _$shareLinkTargetTypeEnum_view;
  @BuiltValueEnumConst(wireName: r'track')
  static const ShareLinkTargetTypeEnum track = _$shareLinkTargetTypeEnum_track;
  @BuiltValueEnumConst(wireName: r'briefing-run')
  static const ShareLinkTargetTypeEnum briefingRun =
      _$shareLinkTargetTypeEnum_briefingRun;
  @BuiltValueEnumConst(wireName: r'export')
  static const ShareLinkTargetTypeEnum export_ =
      _$shareLinkTargetTypeEnum_export_;
  @BuiltValueEnumConst(wireName: r'workspace')
  static const ShareLinkTargetTypeEnum workspace =
      _$shareLinkTargetTypeEnum_workspace;
  @BuiltValueEnumConst(wireName: r'report')
  static const ShareLinkTargetTypeEnum report =
      _$shareLinkTargetTypeEnum_report;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ShareLinkTargetTypeEnum unknownDefaultOpenApi =
      _$shareLinkTargetTypeEnum_unknownDefaultOpenApi;

  static Serializer<ShareLinkTargetTypeEnum> get serializer =>
      _$shareLinkTargetTypeEnumSerializer;

  const ShareLinkTargetTypeEnum._(String name) : super(name);

  static BuiltSet<ShareLinkTargetTypeEnum> get values =>
      _$shareLinkTargetTypeEnumValues;
  static ShareLinkTargetTypeEnum valueOf(String name) =>
      _$shareLinkTargetTypeEnumValueOf(name);
}

class ShareLinkStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const ShareLinkStatusEnum active = _$shareLinkStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'expired')
  static const ShareLinkStatusEnum expired = _$shareLinkStatusEnum_expired;
  @BuiltValueEnumConst(wireName: r'revoked')
  static const ShareLinkStatusEnum revoked = _$shareLinkStatusEnum_revoked;
  @BuiltValueEnumConst(wireName: r'exhausted')
  static const ShareLinkStatusEnum exhausted = _$shareLinkStatusEnum_exhausted;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ShareLinkStatusEnum unknownDefaultOpenApi =
      _$shareLinkStatusEnum_unknownDefaultOpenApi;

  static Serializer<ShareLinkStatusEnum> get serializer =>
      _$shareLinkStatusEnumSerializer;

  const ShareLinkStatusEnum._(String name) : super(name);

  static BuiltSet<ShareLinkStatusEnum> get values =>
      _$shareLinkStatusEnumValues;
  static ShareLinkStatusEnum valueOf(String name) =>
      _$shareLinkStatusEnumValueOf(name);
}

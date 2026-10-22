//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'share_link_created.g.dart';

/// A newly created share link with its plaintext key (shown once) (112)
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
/// * [key]
/// * [url] - {publicBaseUrl}/v1/k/{key}
@BuiltValue()
abstract class ShareLinkCreated
    implements Built<ShareLinkCreated, ShareLinkCreatedBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// First characters of the fss_ key
  @BuiltValueField(wireName: r'keyPrefix')
  String get keyPrefix;

  @BuiltValueField(wireName: r'targetType')
  ShareLinkCreatedTargetTypeEnum get targetType;
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
  ShareLinkCreatedStatusEnum get status;
  // enum statusEnum {  active,  expired,  revoked,  exhausted,  };

  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'revokedAt')
  DateTime? get revokedAt;

  @BuiltValueField(wireName: r'lastUsedAt')
  DateTime? get lastUsedAt;

  @BuiltValueField(wireName: r'key')
  String get key;

  /// {publicBaseUrl}/v1/k/{key}
  @BuiltValueField(wireName: r'url')
  String get url;

  ShareLinkCreated._();

  factory ShareLinkCreated([void updates(ShareLinkCreatedBuilder b)]) =
      _$ShareLinkCreated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShareLinkCreatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShareLinkCreated> get serializer =>
      _$ShareLinkCreatedSerializer();
}

class _$ShareLinkCreatedSerializer
    implements PrimitiveSerializer<ShareLinkCreated> {
  @override
  final Iterable<Type> types = const [ShareLinkCreated, _$ShareLinkCreated];

  @override
  final String wireName = r'ShareLinkCreated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShareLinkCreated object, {
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
      specifiedType: const FullType(ShareLinkCreatedTargetTypeEnum),
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
      specifiedType: const FullType(ShareLinkCreatedStatusEnum),
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
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ShareLinkCreated object, {
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
    required ShareLinkCreatedBuilder result,
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
                    specifiedType: const FullType(
                      ShareLinkCreatedTargetTypeEnum,
                    ),
                  )
                  as ShareLinkCreatedTargetTypeEnum;
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
                    specifiedType: const FullType(ShareLinkCreatedStatusEnum),
                  )
                  as ShareLinkCreatedStatusEnum;
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
        case r'key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.key = valueDes;
          break;
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ShareLinkCreated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShareLinkCreatedBuilder();
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

class ShareLinkCreatedTargetTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'record')
  static const ShareLinkCreatedTargetTypeEnum record =
      _$shareLinkCreatedTargetTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'alert')
  static const ShareLinkCreatedTargetTypeEnum alert =
      _$shareLinkCreatedTargetTypeEnum_alert;
  @BuiltValueEnumConst(wireName: r'view')
  static const ShareLinkCreatedTargetTypeEnum view =
      _$shareLinkCreatedTargetTypeEnum_view;
  @BuiltValueEnumConst(wireName: r'track')
  static const ShareLinkCreatedTargetTypeEnum track =
      _$shareLinkCreatedTargetTypeEnum_track;
  @BuiltValueEnumConst(wireName: r'briefing-run')
  static const ShareLinkCreatedTargetTypeEnum briefingRun =
      _$shareLinkCreatedTargetTypeEnum_briefingRun;
  @BuiltValueEnumConst(wireName: r'export')
  static const ShareLinkCreatedTargetTypeEnum export_ =
      _$shareLinkCreatedTargetTypeEnum_export_;
  @BuiltValueEnumConst(wireName: r'workspace')
  static const ShareLinkCreatedTargetTypeEnum workspace =
      _$shareLinkCreatedTargetTypeEnum_workspace;
  @BuiltValueEnumConst(wireName: r'report')
  static const ShareLinkCreatedTargetTypeEnum report =
      _$shareLinkCreatedTargetTypeEnum_report;

  static Serializer<ShareLinkCreatedTargetTypeEnum> get serializer =>
      _$shareLinkCreatedTargetTypeEnumSerializer;

  const ShareLinkCreatedTargetTypeEnum._(String name) : super(name);

  static BuiltSet<ShareLinkCreatedTargetTypeEnum> get values =>
      _$shareLinkCreatedTargetTypeEnumValues;
  static ShareLinkCreatedTargetTypeEnum valueOf(String name) =>
      _$shareLinkCreatedTargetTypeEnumValueOf(name);
}

class ShareLinkCreatedStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const ShareLinkCreatedStatusEnum active =
      _$shareLinkCreatedStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'expired')
  static const ShareLinkCreatedStatusEnum expired =
      _$shareLinkCreatedStatusEnum_expired;
  @BuiltValueEnumConst(wireName: r'revoked')
  static const ShareLinkCreatedStatusEnum revoked =
      _$shareLinkCreatedStatusEnum_revoked;
  @BuiltValueEnumConst(wireName: r'exhausted')
  static const ShareLinkCreatedStatusEnum exhausted =
      _$shareLinkCreatedStatusEnum_exhausted;

  static Serializer<ShareLinkCreatedStatusEnum> get serializer =>
      _$shareLinkCreatedStatusEnumSerializer;

  const ShareLinkCreatedStatusEnum._(String name) : super(name);

  static BuiltSet<ShareLinkCreatedStatusEnum> get values =>
      _$shareLinkCreatedStatusEnumValues;
  static ShareLinkCreatedStatusEnum valueOf(String name) =>
      _$shareLinkCreatedStatusEnumValueOf(name);
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/edp_manifest.dart';
import 'package:foresignal_api/src/model/external_source_pull.dart';
import 'package:foresignal_api/src/model/source_access.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/edp_presentation.dart';
import 'package:foresignal_api/src/model/external_stream_stats.dart';
import 'package:foresignal_api/src/model/edp_item_rejection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_source.g.dart';

/// An EDP provider registered on this instance (024)
///
/// Properties:
/// * [sourceId]
/// * [state]
/// * [registeredVia]
/// * [manifest]
/// * [manifestSha256]
/// * [access]
/// * [egress]
/// * [approvedBy]
/// * [approvedAt]
/// * [createdAt]
/// * [lastItemAt]
/// * [pull]
/// * [streams]
/// * [lastValidationErrors]
/// * [health]
/// * [allowPrivateNetwork] - Whether provider URLs may be on a private network (set at registration)
/// * [presentation] - Layer presentation hints of the layer streams, keyed by stream id; also in each kind's TileJSON as foresignal:presentation
/// * [breakingChanges] - updateExternalSourceManifest only: the changes that returned the source to pending (empty for an additive update)
@BuiltValue()
abstract class ExternalSource
    implements Built<ExternalSource, ExternalSourceBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'state')
  ExternalSourceStateEnum get state;
  // enum stateEnum {  pending,  active,  suspended,  };

  @BuiltValueField(wireName: r'registeredVia')
  ExternalSourceRegisteredViaEnum? get registeredVia;
  // enum registeredViaEnum {  operator,  registration-token,  };

  @BuiltValueField(wireName: r'manifest')
  EdpManifest get manifest;

  @BuiltValueField(wireName: r'manifestSha256')
  String? get manifestSha256;

  @BuiltValueField(wireName: r'access')
  SourceAccess? get access;

  @BuiltValueField(wireName: r'egress')
  String? get egress;

  @BuiltValueField(wireName: r'approvedBy')
  String? get approvedBy;

  @BuiltValueField(wireName: r'approvedAt')
  DateTime? get approvedAt;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'lastItemAt')
  DateTime? get lastItemAt;

  @BuiltValueField(wireName: r'pull')
  ExternalSourcePull? get pull;

  @BuiltValueField(wireName: r'streams')
  BuiltList<ExternalStreamStats>? get streams;

  @BuiltValueField(wireName: r'lastValidationErrors')
  BuiltList<EdpItemRejection>? get lastValidationErrors;

  @BuiltValueField(wireName: r'health')
  String? get health;

  /// Whether provider URLs may be on a private network (set at registration)
  @BuiltValueField(wireName: r'allowPrivateNetwork')
  bool? get allowPrivateNetwork;

  /// Layer presentation hints of the layer streams, keyed by stream id; also in each kind's TileJSON as foresignal:presentation
  @BuiltValueField(wireName: r'presentation')
  BuiltMap<String, EdpPresentation>? get presentation;

  /// updateExternalSourceManifest only: the changes that returned the source to pending (empty for an additive update)
  @BuiltValueField(wireName: r'breakingChanges')
  BuiltList<String>? get breakingChanges;

  ExternalSource._();

  factory ExternalSource([void updates(ExternalSourceBuilder b)]) =
      _$ExternalSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalSource> get serializer =>
      _$ExternalSourceSerializer();
}

class _$ExternalSourceSerializer
    implements PrimitiveSerializer<ExternalSource> {
  @override
  final Iterable<Type> types = const [ExternalSource, _$ExternalSource];

  @override
  final String wireName = r'ExternalSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(ExternalSourceStateEnum),
    );
    if (object.registeredVia != null) {
      yield r'registeredVia';
      yield serializers.serialize(
        object.registeredVia,
        specifiedType: const FullType(ExternalSourceRegisteredViaEnum),
      );
    }
    yield r'manifest';
    yield serializers.serialize(
      object.manifest,
      specifiedType: const FullType(EdpManifest),
    );
    if (object.manifestSha256 != null) {
      yield r'manifestSha256';
      yield serializers.serialize(
        object.manifestSha256,
        specifiedType: const FullType(String),
      );
    }
    if (object.access != null) {
      yield r'access';
      yield serializers.serialize(
        object.access,
        specifiedType: const FullType(SourceAccess),
      );
    }
    if (object.egress != null) {
      yield r'egress';
      yield serializers.serialize(
        object.egress,
        specifiedType: const FullType(String),
      );
    }
    if (object.approvedBy != null) {
      yield r'approvedBy';
      yield serializers.serialize(
        object.approvedBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.approvedAt != null) {
      yield r'approvedAt';
      yield serializers.serialize(
        object.approvedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.lastItemAt != null) {
      yield r'lastItemAt';
      yield serializers.serialize(
        object.lastItemAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.pull != null) {
      yield r'pull';
      yield serializers.serialize(
        object.pull,
        specifiedType: const FullType.nullable(ExternalSourcePull),
      );
    }
    if (object.streams != null) {
      yield r'streams';
      yield serializers.serialize(
        object.streams,
        specifiedType: const FullType(BuiltList, [
          FullType(ExternalStreamStats),
        ]),
      );
    }
    if (object.lastValidationErrors != null) {
      yield r'lastValidationErrors';
      yield serializers.serialize(
        object.lastValidationErrors,
        specifiedType: const FullType(BuiltList, [FullType(EdpItemRejection)]),
      );
    }
    if (object.health != null) {
      yield r'health';
      yield serializers.serialize(
        object.health,
        specifiedType: const FullType(String),
      );
    }
    if (object.allowPrivateNetwork != null) {
      yield r'allowPrivateNetwork';
      yield serializers.serialize(
        object.allowPrivateNetwork,
        specifiedType: const FullType(bool),
      );
    }
    if (object.presentation != null) {
      yield r'presentation';
      yield serializers.serialize(
        object.presentation,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(EdpPresentation),
        ]),
      );
    }
    if (object.breakingChanges != null) {
      yield r'breakingChanges';
      yield serializers.serialize(
        object.breakingChanges,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalSource object, {
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
    required ExternalSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExternalSourceStateEnum),
                  )
                  as ExternalSourceStateEnum;
          result.state = valueDes;
          break;
        case r'registeredVia':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ExternalSourceRegisteredViaEnum,
                    ),
                  )
                  as ExternalSourceRegisteredViaEnum?;
          if (valueDes == null) continue;
          result.registeredVia = valueDes;
          break;
        case r'manifest':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EdpManifest),
                  )
                  as EdpManifest;
          result.manifest.replace(valueDes);
          break;
        case r'manifestSha256':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestSha256 = valueDes;
          break;
        case r'access':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SourceAccess),
                  )
                  as SourceAccess?;
          if (valueDes == null) continue;
          result.access.replace(valueDes);
          break;
        case r'egress':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.egress = valueDes;
          break;
        case r'approvedBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.approvedBy = valueDes;
          break;
        case r'approvedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.approvedAt = valueDes;
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
        case r'lastItemAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastItemAt = valueDes;
          break;
        case r'pull':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ExternalSourcePull),
                  )
                  as ExternalSourcePull?;
          if (valueDes == null) continue;
          result.pull.replace(valueDes);
          break;
        case r'streams':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ExternalStreamStats),
                    ]),
                  )
                  as BuiltList<ExternalStreamStats>?;
          if (valueDes == null) continue;
          result.streams.replace(valueDes);
          break;
        case r'lastValidationErrors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EdpItemRejection),
                    ]),
                  )
                  as BuiltList<EdpItemRejection>?;
          if (valueDes == null) continue;
          result.lastValidationErrors.replace(valueDes);
          break;
        case r'health':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.health = valueDes;
          break;
        case r'allowPrivateNetwork':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.allowPrivateNetwork = valueDes;
          break;
        case r'presentation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(EdpPresentation),
                    ]),
                  )
                  as BuiltMap<String, EdpPresentation>?;
          if (valueDes == null) continue;
          result.presentation.replace(valueDes);
          break;
        case r'breakingChanges':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.breakingChanges.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalSourceBuilder();
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

class ExternalSourceStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const ExternalSourceStateEnum pending =
      _$externalSourceStateEnum_pending;
  @BuiltValueEnumConst(wireName: r'active')
  static const ExternalSourceStateEnum active =
      _$externalSourceStateEnum_active;
  @BuiltValueEnumConst(wireName: r'suspended')
  static const ExternalSourceStateEnum suspended =
      _$externalSourceStateEnum_suspended;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ExternalSourceStateEnum unknownDefaultOpenApi =
      _$externalSourceStateEnum_unknownDefaultOpenApi;

  static Serializer<ExternalSourceStateEnum> get serializer =>
      _$externalSourceStateEnumSerializer;

  const ExternalSourceStateEnum._(String name) : super(name);

  static BuiltSet<ExternalSourceStateEnum> get values =>
      _$externalSourceStateEnumValues;
  static ExternalSourceStateEnum valueOf(String name) =>
      _$externalSourceStateEnumValueOf(name);
}

class ExternalSourceRegisteredViaEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'operator')
  static const ExternalSourceRegisteredViaEnum operator_ =
      _$externalSourceRegisteredViaEnum_operator_;
  @BuiltValueEnumConst(wireName: r'registration-token')
  static const ExternalSourceRegisteredViaEnum registrationToken =
      _$externalSourceRegisteredViaEnum_registrationToken;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ExternalSourceRegisteredViaEnum unknownDefaultOpenApi =
      _$externalSourceRegisteredViaEnum_unknownDefaultOpenApi;

  static Serializer<ExternalSourceRegisteredViaEnum> get serializer =>
      _$externalSourceRegisteredViaEnumSerializer;

  const ExternalSourceRegisteredViaEnum._(String name) : super(name);

  static BuiltSet<ExternalSourceRegisteredViaEnum> get values =>
      _$externalSourceRegisteredViaEnumValues;
  static ExternalSourceRegisteredViaEnum valueOf(String name) =>
      _$externalSourceRegisteredViaEnumValueOf(name);
}

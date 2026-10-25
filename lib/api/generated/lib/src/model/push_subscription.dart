//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/push_filters.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_subscription.g.dart';

/// PushSubscription
///
/// Properties:
/// * [id]
/// * [name]
/// * [endpointHost]
/// * [filters]
/// * [createdAt]
/// * [lastSuccessAt]
/// * [status] - pending until the verification code is echoed; active receives notifications; disabled after three consecutive failed send-time address rechecks (URL_NOT_ALLOWED)
/// * [transportLabel]
/// * [payloadFormat]
/// * [lang]
/// * [failureCount]
/// * [lastFailureAt]
/// * [lastStatus] - Last push-service HTTP status
@BuiltValue()
abstract class PushSubscription
    implements Built<PushSubscription, PushSubscriptionBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'endpointHost')
  String get endpointHost;

  @BuiltValueField(wireName: r'filters')
  PushFilters? get filters;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'lastSuccessAt')
  DateTime? get lastSuccessAt;

  /// pending until the verification code is echoed; active receives notifications; disabled after three consecutive failed send-time address rechecks (URL_NOT_ALLOWED)
  @BuiltValueField(wireName: r'status')
  PushSubscriptionStatusEnum? get status;
  // enum statusEnum {  pending,  active,  disabled,  };

  @BuiltValueField(wireName: r'transportLabel')
  PushSubscriptionTransportLabelEnum? get transportLabel;
  // enum transportLabelEnum {  browser,  unifiedpush,  other,  };

  @BuiltValueField(wireName: r'payloadFormat')
  PushSubscriptionPayloadFormatEnum? get payloadFormat;
  // enum payloadFormatEnum {  foresignal,  declarative,  };

  @BuiltValueField(wireName: r'lang')
  String? get lang;

  @BuiltValueField(wireName: r'failureCount')
  int? get failureCount;

  @BuiltValueField(wireName: r'lastFailureAt')
  DateTime? get lastFailureAt;

  /// Last push-service HTTP status
  @BuiltValueField(wireName: r'lastStatus')
  int? get lastStatus;

  PushSubscription._();

  factory PushSubscription([void updates(PushSubscriptionBuilder b)]) =
      _$PushSubscription;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushSubscriptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushSubscription> get serializer =>
      _$PushSubscriptionSerializer();
}

class _$PushSubscriptionSerializer
    implements PrimitiveSerializer<PushSubscription> {
  @override
  final Iterable<Type> types = const [PushSubscription, _$PushSubscription];

  @override
  final String wireName = r'PushSubscription';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushSubscription object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'endpointHost';
    yield serializers.serialize(
      object.endpointHost,
      specifiedType: const FullType(String),
    );
    if (object.filters != null) {
      yield r'filters';
      yield serializers.serialize(
        object.filters,
        specifiedType: const FullType(PushFilters),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.lastSuccessAt != null) {
      yield r'lastSuccessAt';
      yield serializers.serialize(
        object.lastSuccessAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(PushSubscriptionStatusEnum),
      );
    }
    if (object.transportLabel != null) {
      yield r'transportLabel';
      yield serializers.serialize(
        object.transportLabel,
        specifiedType: const FullType(PushSubscriptionTransportLabelEnum),
      );
    }
    if (object.payloadFormat != null) {
      yield r'payloadFormat';
      yield serializers.serialize(
        object.payloadFormat,
        specifiedType: const FullType(PushSubscriptionPayloadFormatEnum),
      );
    }
    if (object.lang != null) {
      yield r'lang';
      yield serializers.serialize(
        object.lang,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.failureCount != null) {
      yield r'failureCount';
      yield serializers.serialize(
        object.failureCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastFailureAt != null) {
      yield r'lastFailureAt';
      yield serializers.serialize(
        object.lastFailureAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastStatus != null) {
      yield r'lastStatus';
      yield serializers.serialize(
        object.lastStatus,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PushSubscription object, {
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
    required PushSubscriptionBuilder result,
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
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'endpointHost':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.endpointHost = valueDes;
          break;
        case r'filters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PushFilters),
                  )
                  as PushFilters?;
          if (valueDes == null) continue;
          result.filters.replace(valueDes);
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
        case r'lastSuccessAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastSuccessAt = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PushSubscriptionStatusEnum,
                    ),
                  )
                  as PushSubscriptionStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'transportLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PushSubscriptionTransportLabelEnum,
                    ),
                  )
                  as PushSubscriptionTransportLabelEnum?;
          if (valueDes == null) continue;
          result.transportLabel = valueDes;
          break;
        case r'payloadFormat':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PushSubscriptionPayloadFormatEnum,
                    ),
                  )
                  as PushSubscriptionPayloadFormatEnum?;
          if (valueDes == null) continue;
          result.payloadFormat = valueDes;
          break;
        case r'lang':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.lang = valueDes;
          break;
        case r'failureCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.failureCount = valueDes;
          break;
        case r'lastFailureAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastFailureAt = valueDes;
          break;
        case r'lastStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.lastStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushSubscription deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushSubscriptionBuilder();
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

/// pending until the verification code is echoed; active receives notifications; disabled after three consecutive failed send-time address rechecks (URL_NOT_ALLOWED)
class PushSubscriptionStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const PushSubscriptionStatusEnum pending =
      _$pushSubscriptionStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'active')
  static const PushSubscriptionStatusEnum active =
      _$pushSubscriptionStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'disabled')
  static const PushSubscriptionStatusEnum disabled =
      _$pushSubscriptionStatusEnum_disabled;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PushSubscriptionStatusEnum unknownDefaultOpenApi =
      _$pushSubscriptionStatusEnum_unknownDefaultOpenApi;

  static Serializer<PushSubscriptionStatusEnum> get serializer =>
      _$pushSubscriptionStatusEnumSerializer;

  const PushSubscriptionStatusEnum._(String name) : super(name);

  static BuiltSet<PushSubscriptionStatusEnum> get values =>
      _$pushSubscriptionStatusEnumValues;
  static PushSubscriptionStatusEnum valueOf(String name) =>
      _$pushSubscriptionStatusEnumValueOf(name);
}

class PushSubscriptionTransportLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'browser')
  static const PushSubscriptionTransportLabelEnum browser =
      _$pushSubscriptionTransportLabelEnum_browser;
  @BuiltValueEnumConst(wireName: r'unifiedpush')
  static const PushSubscriptionTransportLabelEnum unifiedpush =
      _$pushSubscriptionTransportLabelEnum_unifiedpush;
  @BuiltValueEnumConst(wireName: r'other')
  static const PushSubscriptionTransportLabelEnum other =
      _$pushSubscriptionTransportLabelEnum_other;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PushSubscriptionTransportLabelEnum unknownDefaultOpenApi =
      _$pushSubscriptionTransportLabelEnum_unknownDefaultOpenApi;

  static Serializer<PushSubscriptionTransportLabelEnum> get serializer =>
      _$pushSubscriptionTransportLabelEnumSerializer;

  const PushSubscriptionTransportLabelEnum._(String name) : super(name);

  static BuiltSet<PushSubscriptionTransportLabelEnum> get values =>
      _$pushSubscriptionTransportLabelEnumValues;
  static PushSubscriptionTransportLabelEnum valueOf(String name) =>
      _$pushSubscriptionTransportLabelEnumValueOf(name);
}

class PushSubscriptionPayloadFormatEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'foresignal')
  static const PushSubscriptionPayloadFormatEnum foresignal =
      _$pushSubscriptionPayloadFormatEnum_foresignal;
  @BuiltValueEnumConst(wireName: r'declarative')
  static const PushSubscriptionPayloadFormatEnum declarative =
      _$pushSubscriptionPayloadFormatEnum_declarative;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PushSubscriptionPayloadFormatEnum unknownDefaultOpenApi =
      _$pushSubscriptionPayloadFormatEnum_unknownDefaultOpenApi;

  static Serializer<PushSubscriptionPayloadFormatEnum> get serializer =>
      _$pushSubscriptionPayloadFormatEnumSerializer;

  const PushSubscriptionPayloadFormatEnum._(String name) : super(name);

  static BuiltSet<PushSubscriptionPayloadFormatEnum> get values =>
      _$pushSubscriptionPayloadFormatEnumValues;
  static PushSubscriptionPayloadFormatEnum valueOf(String name) =>
      _$pushSubscriptionPayloadFormatEnumValueOf(name);
}

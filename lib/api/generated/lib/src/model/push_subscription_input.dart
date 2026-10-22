//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/push_subscription_input_subscription.dart';
import 'package:foresignal_api/src/model/push_filters.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_subscription_input.g.dart';

/// PushSubscriptionInput
///
/// Properties:
/// * [name]
/// * [subscription]
/// * [filters]
/// * [transportLabel] - Display and filter only; the wire protocol is identical
/// * [payloadFormat]
/// * [lang]
@BuiltValue()
abstract class PushSubscriptionInput
    implements Built<PushSubscriptionInput, PushSubscriptionInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'subscription')
  PushSubscriptionInputSubscription get subscription;

  @BuiltValueField(wireName: r'filters')
  PushFilters? get filters;

  /// Display and filter only; the wire protocol is identical
  @BuiltValueField(wireName: r'transportLabel')
  PushSubscriptionInputTransportLabelEnum? get transportLabel;
  // enum transportLabelEnum {  browser,  unifiedpush,  other,  };

  @BuiltValueField(wireName: r'payloadFormat')
  PushSubscriptionInputPayloadFormatEnum? get payloadFormat;
  // enum payloadFormatEnum {  foresignal,  declarative,  };

  @BuiltValueField(wireName: r'lang')
  String? get lang;

  PushSubscriptionInput._();

  factory PushSubscriptionInput([
    void updates(PushSubscriptionInputBuilder b),
  ]) = _$PushSubscriptionInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushSubscriptionInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushSubscriptionInput> get serializer =>
      _$PushSubscriptionInputSerializer();
}

class _$PushSubscriptionInputSerializer
    implements PrimitiveSerializer<PushSubscriptionInput> {
  @override
  final Iterable<Type> types = const [
    PushSubscriptionInput,
    _$PushSubscriptionInput,
  ];

  @override
  final String wireName = r'PushSubscriptionInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushSubscriptionInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    yield r'subscription';
    yield serializers.serialize(
      object.subscription,
      specifiedType: const FullType(PushSubscriptionInputSubscription),
    );
    if (object.filters != null) {
      yield r'filters';
      yield serializers.serialize(
        object.filters,
        specifiedType: const FullType(PushFilters),
      );
    }
    if (object.transportLabel != null) {
      yield r'transportLabel';
      yield serializers.serialize(
        object.transportLabel,
        specifiedType: const FullType(PushSubscriptionInputTransportLabelEnum),
      );
    }
    if (object.payloadFormat != null) {
      yield r'payloadFormat';
      yield serializers.serialize(
        object.payloadFormat,
        specifiedType: const FullType(PushSubscriptionInputPayloadFormatEnum),
      );
    }
    if (object.lang != null) {
      yield r'lang';
      yield serializers.serialize(
        object.lang,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PushSubscriptionInput object, {
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
    required PushSubscriptionInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'subscription':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      PushSubscriptionInputSubscription,
                    ),
                  )
                  as PushSubscriptionInputSubscription;
          result.subscription.replace(valueDes);
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
        case r'transportLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PushSubscriptionInputTransportLabelEnum,
                    ),
                  )
                  as PushSubscriptionInputTransportLabelEnum?;
          if (valueDes == null) continue;
          result.transportLabel = valueDes;
          break;
        case r'payloadFormat':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PushSubscriptionInputPayloadFormatEnum,
                    ),
                  )
                  as PushSubscriptionInputPayloadFormatEnum?;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushSubscriptionInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushSubscriptionInputBuilder();
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

/// Display and filter only; the wire protocol is identical
class PushSubscriptionInputTransportLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'browser')
  static const PushSubscriptionInputTransportLabelEnum browser =
      _$pushSubscriptionInputTransportLabelEnum_browser;
  @BuiltValueEnumConst(wireName: r'unifiedpush')
  static const PushSubscriptionInputTransportLabelEnum unifiedpush =
      _$pushSubscriptionInputTransportLabelEnum_unifiedpush;
  @BuiltValueEnumConst(wireName: r'other')
  static const PushSubscriptionInputTransportLabelEnum other =
      _$pushSubscriptionInputTransportLabelEnum_other;

  static Serializer<PushSubscriptionInputTransportLabelEnum> get serializer =>
      _$pushSubscriptionInputTransportLabelEnumSerializer;

  const PushSubscriptionInputTransportLabelEnum._(String name) : super(name);

  static BuiltSet<PushSubscriptionInputTransportLabelEnum> get values =>
      _$pushSubscriptionInputTransportLabelEnumValues;
  static PushSubscriptionInputTransportLabelEnum valueOf(String name) =>
      _$pushSubscriptionInputTransportLabelEnumValueOf(name);
}

class PushSubscriptionInputPayloadFormatEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'foresignal')
  static const PushSubscriptionInputPayloadFormatEnum foresignal =
      _$pushSubscriptionInputPayloadFormatEnum_foresignal;
  @BuiltValueEnumConst(wireName: r'declarative')
  static const PushSubscriptionInputPayloadFormatEnum declarative =
      _$pushSubscriptionInputPayloadFormatEnum_declarative;

  static Serializer<PushSubscriptionInputPayloadFormatEnum> get serializer =>
      _$pushSubscriptionInputPayloadFormatEnumSerializer;

  const PushSubscriptionInputPayloadFormatEnum._(String name) : super(name);

  static BuiltSet<PushSubscriptionInputPayloadFormatEnum> get values =>
      _$pushSubscriptionInputPayloadFormatEnumValues;
  static PushSubscriptionInputPayloadFormatEnum valueOf(String name) =>
      _$pushSubscriptionInputPayloadFormatEnumValueOf(name);
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/exchange_package_input_extract.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exchange_package_input.g.dart';

/// Build a signed package of a report, investigation, chronicle extract or evidence
///
/// Properties:
/// * [objectRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [recipients]
/// * [message]
/// * [deliver] - Push to 113 peers or only build a downloadable file
/// * [extract]
@BuiltValue()
abstract class ExchangePackageInput
    implements Built<ExchangePackageInput, ExchangePackageInputBuilder> {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'objectRef')
  String get objectRef;

  @BuiltValueField(wireName: r'recipients')
  JsonObject? get recipients;

  @BuiltValueField(wireName: r'message')
  String? get message;

  /// Push to 113 peers or only build a downloadable file
  @BuiltValueField(wireName: r'deliver')
  ExchangePackageInputDeliverEnum? get deliver;
  // enum deliverEnum {  peer,  file,  };

  @BuiltValueField(wireName: r'extract')
  ExchangePackageInputExtract? get extract;

  ExchangePackageInput._();

  factory ExchangePackageInput([void updates(ExchangePackageInputBuilder b)]) =
      _$ExchangePackageInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExchangePackageInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExchangePackageInput> get serializer =>
      _$ExchangePackageInputSerializer();
}

class _$ExchangePackageInputSerializer
    implements PrimitiveSerializer<ExchangePackageInput> {
  @override
  final Iterable<Type> types = const [
    ExchangePackageInput,
    _$ExchangePackageInput,
  ];

  @override
  final String wireName = r'ExchangePackageInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExchangePackageInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'objectRef';
    yield serializers.serialize(
      object.objectRef,
      specifiedType: const FullType(String),
    );
    yield r'recipients';
    yield object.recipients == null
        ? null
        : serializers.serialize(
            object.recipients,
            specifiedType: const FullType.nullable(JsonObject),
          );
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.deliver != null) {
      yield r'deliver';
      yield serializers.serialize(
        object.deliver,
        specifiedType: const FullType(ExchangePackageInputDeliverEnum),
      );
    }
    if (object.extract != null) {
      yield r'extract';
      yield serializers.serialize(
        object.extract,
        specifiedType: const FullType.nullable(ExchangePackageInputExtract),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExchangePackageInput object, {
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
    required ExchangePackageInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'objectRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.objectRef = valueDes;
          break;
        case r'recipients':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.recipients = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'deliver':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ExchangePackageInputDeliverEnum,
                    ),
                  )
                  as ExchangePackageInputDeliverEnum?;
          if (valueDes == null) continue;
          result.deliver = valueDes;
          break;
        case r'extract':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ExchangePackageInputExtract,
                    ),
                  )
                  as ExchangePackageInputExtract?;
          if (valueDes == null) continue;
          result.extract.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExchangePackageInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExchangePackageInputBuilder();
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

/// Push to 113 peers or only build a downloadable file
class ExchangePackageInputDeliverEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'peer')
  static const ExchangePackageInputDeliverEnum peer =
      _$exchangePackageInputDeliverEnum_peer;
  @BuiltValueEnumConst(wireName: r'file')
  static const ExchangePackageInputDeliverEnum file =
      _$exchangePackageInputDeliverEnum_file;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ExchangePackageInputDeliverEnum unknownDefaultOpenApi =
      _$exchangePackageInputDeliverEnum_unknownDefaultOpenApi;

  static Serializer<ExchangePackageInputDeliverEnum> get serializer =>
      _$exchangePackageInputDeliverEnumSerializer;

  const ExchangePackageInputDeliverEnum._(String name) : super(name);

  static BuiltSet<ExchangePackageInputDeliverEnum> get values =>
      _$exchangePackageInputDeliverEnumValues;
  static ExchangePackageInputDeliverEnum valueOf(String name) =>
      _$exchangePackageInputDeliverEnumValueOf(name);
}

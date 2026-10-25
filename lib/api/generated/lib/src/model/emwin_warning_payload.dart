//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/emwin_warning_payload_duplicate_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'emwin_warning_payload.g.dart';

/// Kind `emwin-warning` (externalId `{office}.{phen}.{sig}.{etn}`): a P-VTEC warning with polygon received via EMWIN; never more authoritative than nws-alerts
///
/// Properties:
/// * [action]
/// * [phenomena]
/// * [significance]
/// * [office]
/// * [etn]
/// * [validFrom]
/// * [validUntil]
/// * [headline]
/// * [fallback]
/// * [authoritativeSource]
/// * [duplicateOf]
/// * [receivedVia]
@BuiltValue()
abstract class EmwinWarningPayload
    implements Built<EmwinWarningPayload, EmwinWarningPayloadBuilder> {
  @BuiltValueField(wireName: r'action')
  String get action;

  @BuiltValueField(wireName: r'phenomena')
  String get phenomena;

  @BuiltValueField(wireName: r'significance')
  String get significance;

  @BuiltValueField(wireName: r'office')
  String get office;

  @BuiltValueField(wireName: r'etn')
  int get etn;

  @BuiltValueField(wireName: r'validFrom')
  DateTime get validFrom;

  @BuiltValueField(wireName: r'validUntil')
  DateTime get validUntil;

  @BuiltValueField(wireName: r'headline')
  String? get headline;

  @BuiltValueField(wireName: r'fallback')
  bool get fallback;

  @BuiltValueField(wireName: r'authoritativeSource')
  EmwinWarningPayloadAuthoritativeSourceEnum get authoritativeSource;
  // enum authoritativeSourceEnum {  nws-alerts,  };

  @BuiltValueField(wireName: r'duplicateOf')
  EmwinWarningPayloadDuplicateOf? get duplicateOf;

  @BuiltValueField(wireName: r'receivedVia')
  EmwinWarningPayloadReceivedViaEnum? get receivedVia;
  // enum receivedViaEnum {  Received via GOES HRIT EMWIN,  };

  EmwinWarningPayload._();

  factory EmwinWarningPayload([void updates(EmwinWarningPayloadBuilder b)]) =
      _$EmwinWarningPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmwinWarningPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmwinWarningPayload> get serializer =>
      _$EmwinWarningPayloadSerializer();
}

class _$EmwinWarningPayloadSerializer
    implements PrimitiveSerializer<EmwinWarningPayload> {
  @override
  final Iterable<Type> types = const [
    EmwinWarningPayload,
    _$EmwinWarningPayload,
  ];

  @override
  final String wireName = r'EmwinWarningPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmwinWarningPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(String),
    );
    yield r'phenomena';
    yield serializers.serialize(
      object.phenomena,
      specifiedType: const FullType(String),
    );
    yield r'significance';
    yield serializers.serialize(
      object.significance,
      specifiedType: const FullType(String),
    );
    yield r'office';
    yield serializers.serialize(
      object.office,
      specifiedType: const FullType(String),
    );
    yield r'etn';
    yield serializers.serialize(object.etn, specifiedType: const FullType(int));
    yield r'validFrom';
    yield serializers.serialize(
      object.validFrom,
      specifiedType: const FullType(DateTime),
    );
    yield r'validUntil';
    yield serializers.serialize(
      object.validUntil,
      specifiedType: const FullType(DateTime),
    );
    if (object.headline != null) {
      yield r'headline';
      yield serializers.serialize(
        object.headline,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'fallback';
    yield serializers.serialize(
      object.fallback,
      specifiedType: const FullType(bool),
    );
    yield r'authoritativeSource';
    yield serializers.serialize(
      object.authoritativeSource,
      specifiedType: const FullType(EmwinWarningPayloadAuthoritativeSourceEnum),
    );
    if (object.duplicateOf != null) {
      yield r'duplicateOf';
      yield serializers.serialize(
        object.duplicateOf,
        specifiedType: const FullType.nullable(EmwinWarningPayloadDuplicateOf),
      );
    }
    if (object.receivedVia != null) {
      yield r'receivedVia';
      yield serializers.serialize(
        object.receivedVia,
        specifiedType: const FullType(EmwinWarningPayloadReceivedViaEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EmwinWarningPayload object, {
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
    required EmwinWarningPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.action = valueDes;
          break;
        case r'phenomena':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.phenomena = valueDes;
          break;
        case r'significance':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.significance = valueDes;
          break;
        case r'office':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.office = valueDes;
          break;
        case r'etn':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.etn = valueDes;
          break;
        case r'validFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.validFrom = valueDes;
          break;
        case r'validUntil':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.validUntil = valueDes;
          break;
        case r'headline':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.headline = valueDes;
          break;
        case r'fallback':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.fallback = valueDes;
          break;
        case r'authoritativeSource':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      EmwinWarningPayloadAuthoritativeSourceEnum,
                    ),
                  )
                  as EmwinWarningPayloadAuthoritativeSourceEnum;
          result.authoritativeSource = valueDes;
          break;
        case r'duplicateOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      EmwinWarningPayloadDuplicateOf,
                    ),
                  )
                  as EmwinWarningPayloadDuplicateOf?;
          if (valueDes == null) continue;
          result.duplicateOf.replace(valueDes);
          break;
        case r'receivedVia':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      EmwinWarningPayloadReceivedViaEnum,
                    ),
                  )
                  as EmwinWarningPayloadReceivedViaEnum?;
          if (valueDes == null) continue;
          result.receivedVia = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EmwinWarningPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmwinWarningPayloadBuilder();
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

class EmwinWarningPayloadAuthoritativeSourceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'nws-alerts')
  static const EmwinWarningPayloadAuthoritativeSourceEnum nwsAlerts =
      _$emwinWarningPayloadAuthoritativeSourceEnum_nwsAlerts;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EmwinWarningPayloadAuthoritativeSourceEnum
  unknownDefaultOpenApi =
      _$emwinWarningPayloadAuthoritativeSourceEnum_unknownDefaultOpenApi;

  static Serializer<EmwinWarningPayloadAuthoritativeSourceEnum>
  get serializer => _$emwinWarningPayloadAuthoritativeSourceEnumSerializer;

  const EmwinWarningPayloadAuthoritativeSourceEnum._(String name) : super(name);

  static BuiltSet<EmwinWarningPayloadAuthoritativeSourceEnum> get values =>
      _$emwinWarningPayloadAuthoritativeSourceEnumValues;
  static EmwinWarningPayloadAuthoritativeSourceEnum valueOf(String name) =>
      _$emwinWarningPayloadAuthoritativeSourceEnumValueOf(name);
}

class EmwinWarningPayloadReceivedViaEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Received via GOES HRIT EMWIN')
  static const EmwinWarningPayloadReceivedViaEnum receivedViaGOESHRITEMWIN =
      _$emwinWarningPayloadReceivedViaEnum_receivedViaGOESHRITEMWIN;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EmwinWarningPayloadReceivedViaEnum unknownDefaultOpenApi =
      _$emwinWarningPayloadReceivedViaEnum_unknownDefaultOpenApi;

  static Serializer<EmwinWarningPayloadReceivedViaEnum> get serializer =>
      _$emwinWarningPayloadReceivedViaEnumSerializer;

  const EmwinWarningPayloadReceivedViaEnum._(String name) : super(name);

  static BuiltSet<EmwinWarningPayloadReceivedViaEnum> get values =>
      _$emwinWarningPayloadReceivedViaEnumValues;
  static EmwinWarningPayloadReceivedViaEnum valueOf(String name) =>
      _$emwinWarningPayloadReceivedViaEnumValueOf(name);
}

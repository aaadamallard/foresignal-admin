//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'federation_info.g.dart';

/// Instance identity for federation; the response carries a Foresignal-Signature JWS over the body (113)
///
/// Properties:
/// * [instanceId] - Install id (003)
/// * [instanceName]
/// * [version]
/// * [apiVersion]
/// * [jwksUri]
/// * [capabilities]
/// * [time]
@BuiltValue()
abstract class FederationInfo
    implements Built<FederationInfo, FederationInfoBuilder> {
  /// Install id (003)
  @BuiltValueField(wireName: r'instanceId')
  String get instanceId;

  @BuiltValueField(wireName: r'instanceName')
  String? get instanceName;

  @BuiltValueField(wireName: r'version')
  String get version;

  @BuiltValueField(wireName: r'apiVersion')
  String get apiVersion;

  @BuiltValueField(wireName: r'jwksUri')
  String get jwksUri;

  @BuiltValueField(wireName: r'capabilities')
  BuiltList<FederationInfoCapabilitiesEnum> get capabilities;
  // enum capabilitiesEnum {  changes,  stream,  snapshot,  ingest,  };

  @BuiltValueField(wireName: r'time')
  DateTime get time;

  FederationInfo._();

  factory FederationInfo([void updates(FederationInfoBuilder b)]) =
      _$FederationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FederationInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FederationInfo> get serializer =>
      _$FederationInfoSerializer();
}

class _$FederationInfoSerializer
    implements PrimitiveSerializer<FederationInfo> {
  @override
  final Iterable<Type> types = const [FederationInfo, _$FederationInfo];

  @override
  final String wireName = r'FederationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FederationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'instanceId';
    yield serializers.serialize(
      object.instanceId,
      specifiedType: const FullType(String),
    );
    if (object.instanceName != null) {
      yield r'instanceName';
      yield serializers.serialize(
        object.instanceName,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    yield r'apiVersion';
    yield serializers.serialize(
      object.apiVersion,
      specifiedType: const FullType(String),
    );
    yield r'jwksUri';
    yield serializers.serialize(
      object.jwksUri,
      specifiedType: const FullType(String),
    );
    yield r'capabilities';
    yield serializers.serialize(
      object.capabilities,
      specifiedType: const FullType(BuiltList, [
        FullType(FederationInfoCapabilitiesEnum),
      ]),
    );
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FederationInfo object, {
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
    required FederationInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'instanceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.instanceId = valueDes;
          break;
        case r'instanceName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.instanceName = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.version = valueDes;
          break;
        case r'apiVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.apiVersion = valueDes;
          break;
        case r'jwksUri':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.jwksUri = valueDes;
          break;
        case r'capabilities':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(FederationInfoCapabilitiesEnum),
                    ]),
                  )
                  as BuiltList<FederationInfoCapabilitiesEnum>;
          result.capabilities.replace(valueDes);
          break;
        case r'time':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.time = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FederationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FederationInfoBuilder();
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

class FederationInfoCapabilitiesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'changes')
  static const FederationInfoCapabilitiesEnum changes =
      _$federationInfoCapabilitiesEnum_changes;
  @BuiltValueEnumConst(wireName: r'stream')
  static const FederationInfoCapabilitiesEnum stream =
      _$federationInfoCapabilitiesEnum_stream;
  @BuiltValueEnumConst(wireName: r'snapshot')
  static const FederationInfoCapabilitiesEnum snapshot =
      _$federationInfoCapabilitiesEnum_snapshot;
  @BuiltValueEnumConst(wireName: r'ingest')
  static const FederationInfoCapabilitiesEnum ingest =
      _$federationInfoCapabilitiesEnum_ingest;

  static Serializer<FederationInfoCapabilitiesEnum> get serializer =>
      _$federationInfoCapabilitiesEnumSerializer;

  const FederationInfoCapabilitiesEnum._(String name) : super(name);

  static BuiltSet<FederationInfoCapabilitiesEnum> get values =>
      _$federationInfoCapabilitiesEnumValues;
  static FederationInfoCapabilitiesEnum valueOf(String name) =>
      _$federationInfoCapabilitiesEnumValueOf(name);
}

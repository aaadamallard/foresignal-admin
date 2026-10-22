//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/peer_selection.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'peer_create.g.dart';

/// Register a peer instance (113)
///
/// Properties:
/// * [id]
/// * [name]
/// * [baseUrl] - Checked by the outbound URL policy (035)
/// * [mode] - PULL: consume the peer's feed; RECEIVE: the peer (an edge) pushes here
/// * [enabled]
/// * [token] - The remote instance's token (read + federation); required for PULL
/// * [selection]
/// * [sameOperator] - The operator's own hub: LOCAL_ONLY records may be pushed to it (and stay LOCAL_ONLY there)
/// * [reliability] - Admiralty source reliability: A completely reliable, B usually reliable, C fairly reliable, D not usually reliable, E unreliable, F cannot be judged
/// * [exchangeKey] - The fsp_ ingest key the remote instance issued to this one (its peer row for this instance); the Bearer token of POST {baseUrl}/v1/exchange/inbox and /v1/exchange/receipts (132)
@BuiltValue()
abstract class PeerCreate implements Built<PeerCreate, PeerCreateBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  /// Checked by the outbound URL policy (035)
  @BuiltValueField(wireName: r'baseUrl')
  String get baseUrl;

  /// PULL: consume the peer's feed; RECEIVE: the peer (an edge) pushes here
  @BuiltValueField(wireName: r'mode')
  PeerCreateModeEnum? get mode;
  // enum modeEnum {  PULL,  RECEIVE,  };

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  /// The remote instance's token (read + federation); required for PULL
  @BuiltValueField(wireName: r'token')
  String? get token;

  @BuiltValueField(wireName: r'selection')
  PeerSelection? get selection;

  /// The operator's own hub: LOCAL_ONLY records may be pushed to it (and stay LOCAL_ONLY there)
  @BuiltValueField(wireName: r'sameOperator')
  bool? get sameOperator;

  /// Admiralty source reliability: A completely reliable, B usually reliable, C fairly reliable, D not usually reliable, E unreliable, F cannot be judged
  @BuiltValueField(wireName: r'reliability')
  PeerCreateReliabilityEnum? get reliability;
  // enum reliabilityEnum {  A,  B,  C,  D,  E,  F,  };

  /// The fsp_ ingest key the remote instance issued to this one (its peer row for this instance); the Bearer token of POST {baseUrl}/v1/exchange/inbox and /v1/exchange/receipts (132)
  @BuiltValueField(wireName: r'exchangeKey')
  String? get exchangeKey;

  PeerCreate._();

  factory PeerCreate([void updates(PeerCreateBuilder b)]) = _$PeerCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PeerCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PeerCreate> get serializer => _$PeerCreateSerializer();
}

class _$PeerCreateSerializer implements PrimitiveSerializer<PeerCreate> {
  @override
  final Iterable<Type> types = const [PeerCreate, _$PeerCreate];

  @override
  final String wireName = r'PeerCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PeerCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'baseUrl';
    yield serializers.serialize(
      object.baseUrl,
      specifiedType: const FullType(String),
    );
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(PeerCreateModeEnum),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
    if (object.selection != null) {
      yield r'selection';
      yield serializers.serialize(
        object.selection,
        specifiedType: const FullType(PeerSelection),
      );
    }
    if (object.sameOperator != null) {
      yield r'sameOperator';
      yield serializers.serialize(
        object.sameOperator,
        specifiedType: const FullType(bool),
      );
    }
    if (object.reliability != null) {
      yield r'reliability';
      yield serializers.serialize(
        object.reliability,
        specifiedType: const FullType(PeerCreateReliabilityEnum),
      );
    }
    if (object.exchangeKey != null) {
      yield r'exchangeKey';
      yield serializers.serialize(
        object.exchangeKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PeerCreate object, {
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
    required PeerCreateBuilder result,
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
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'baseUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.baseUrl = valueDes;
          break;
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PeerCreateModeEnum),
                  )
                  as PeerCreateModeEnum?;
          if (valueDes == null) continue;
          result.mode = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'token':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.token = valueDes;
          break;
        case r'selection':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PeerSelection),
                  )
                  as PeerSelection?;
          if (valueDes == null) continue;
          result.selection.replace(valueDes);
          break;
        case r'sameOperator':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.sameOperator = valueDes;
          break;
        case r'reliability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PeerCreateReliabilityEnum,
                    ),
                  )
                  as PeerCreateReliabilityEnum?;
          if (valueDes == null) continue;
          result.reliability = valueDes;
          break;
        case r'exchangeKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.exchangeKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PeerCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PeerCreateBuilder();
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

/// PULL: consume the peer's feed; RECEIVE: the peer (an edge) pushes here
class PeerCreateModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PULL')
  static const PeerCreateModeEnum PULL = _$peerCreateModeEnum_PULL;
  @BuiltValueEnumConst(wireName: r'RECEIVE')
  static const PeerCreateModeEnum RECEIVE = _$peerCreateModeEnum_RECEIVE;

  static Serializer<PeerCreateModeEnum> get serializer =>
      _$peerCreateModeEnumSerializer;

  const PeerCreateModeEnum._(String name) : super(name);

  static BuiltSet<PeerCreateModeEnum> get values => _$peerCreateModeEnumValues;
  static PeerCreateModeEnum valueOf(String name) =>
      _$peerCreateModeEnumValueOf(name);
}

/// Admiralty source reliability: A completely reliable, B usually reliable, C fairly reliable, D not usually reliable, E unreliable, F cannot be judged
class PeerCreateReliabilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'A')
  static const PeerCreateReliabilityEnum A = _$peerCreateReliabilityEnum_A;
  @BuiltValueEnumConst(wireName: r'B')
  static const PeerCreateReliabilityEnum B = _$peerCreateReliabilityEnum_B;
  @BuiltValueEnumConst(wireName: r'C')
  static const PeerCreateReliabilityEnum C = _$peerCreateReliabilityEnum_C;
  @BuiltValueEnumConst(wireName: r'D')
  static const PeerCreateReliabilityEnum D = _$peerCreateReliabilityEnum_D;
  @BuiltValueEnumConst(wireName: r'E')
  static const PeerCreateReliabilityEnum E = _$peerCreateReliabilityEnum_E;
  @BuiltValueEnumConst(wireName: r'F')
  static const PeerCreateReliabilityEnum F = _$peerCreateReliabilityEnum_F;

  static Serializer<PeerCreateReliabilityEnum> get serializer =>
      _$peerCreateReliabilityEnumSerializer;

  const PeerCreateReliabilityEnum._(String name) : super(name);

  static BuiltSet<PeerCreateReliabilityEnum> get values =>
      _$peerCreateReliabilityEnumValues;
  static PeerCreateReliabilityEnum valueOf(String name) =>
      _$peerCreateReliabilityEnumValueOf(name);
}

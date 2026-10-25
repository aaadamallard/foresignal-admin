//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/peer_selection.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'peer_update.g.dart';

/// Replace a peer's settings; omit token to keep it (113)
///
/// Properties:
/// * [name]
/// * [baseUrl]
/// * [enabled]
/// * [token]
/// * [selection]
/// * [sameOperator]
/// * [reliability] - Admiralty source reliability: A completely reliable, B usually reliable, C fairly reliable, D not usually reliable, E unreliable, F cannot be judged
/// * [pinnedKid] - Admin re-pin of the remote signing key; null re-pins on the next successful /info (TOFU)
/// * [exchangeKey] - Replace the exchange key; omit to keep it, empty or null to remove it (132)
@BuiltValue()
abstract class PeerUpdate implements Built<PeerUpdate, PeerUpdateBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'baseUrl')
  String get baseUrl;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'token')
  String? get token;

  @BuiltValueField(wireName: r'selection')
  PeerSelection? get selection;

  @BuiltValueField(wireName: r'sameOperator')
  bool? get sameOperator;

  /// Admiralty source reliability: A completely reliable, B usually reliable, C fairly reliable, D not usually reliable, E unreliable, F cannot be judged
  @BuiltValueField(wireName: r'reliability')
  PeerUpdateReliabilityEnum? get reliability;
  // enum reliabilityEnum {  A,  B,  C,  D,  E,  F,  };

  /// Admin re-pin of the remote signing key; null re-pins on the next successful /info (TOFU)
  @BuiltValueField(wireName: r'pinnedKid')
  String? get pinnedKid;

  /// Replace the exchange key; omit to keep it, empty or null to remove it (132)
  @BuiltValueField(wireName: r'exchangeKey')
  String? get exchangeKey;

  PeerUpdate._();

  factory PeerUpdate([void updates(PeerUpdateBuilder b)]) = _$PeerUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PeerUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PeerUpdate> get serializer => _$PeerUpdateSerializer();
}

class _$PeerUpdateSerializer implements PrimitiveSerializer<PeerUpdate> {
  @override
  final Iterable<Type> types = const [PeerUpdate, _$PeerUpdate];

  @override
  final String wireName = r'PeerUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PeerUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
        specifiedType: const FullType(PeerUpdateReliabilityEnum),
      );
    }
    if (object.pinnedKid != null) {
      yield r'pinnedKid';
      yield serializers.serialize(
        object.pinnedKid,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.exchangeKey != null) {
      yield r'exchangeKey';
      yield serializers.serialize(
        object.exchangeKey,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PeerUpdate object, {
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
    required PeerUpdateBuilder result,
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
                      PeerUpdateReliabilityEnum,
                    ),
                  )
                  as PeerUpdateReliabilityEnum?;
          if (valueDes == null) continue;
          result.reliability = valueDes;
          break;
        case r'pinnedKid':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.pinnedKid = valueDes;
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
  PeerUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PeerUpdateBuilder();
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

/// Admiralty source reliability: A completely reliable, B usually reliable, C fairly reliable, D not usually reliable, E unreliable, F cannot be judged
class PeerUpdateReliabilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'A')
  static const PeerUpdateReliabilityEnum A = _$peerUpdateReliabilityEnum_A;
  @BuiltValueEnumConst(wireName: r'B')
  static const PeerUpdateReliabilityEnum B = _$peerUpdateReliabilityEnum_B;
  @BuiltValueEnumConst(wireName: r'C')
  static const PeerUpdateReliabilityEnum C = _$peerUpdateReliabilityEnum_C;
  @BuiltValueEnumConst(wireName: r'D')
  static const PeerUpdateReliabilityEnum D = _$peerUpdateReliabilityEnum_D;
  @BuiltValueEnumConst(wireName: r'E')
  static const PeerUpdateReliabilityEnum E = _$peerUpdateReliabilityEnum_E;
  @BuiltValueEnumConst(wireName: r'F')
  static const PeerUpdateReliabilityEnum F = _$peerUpdateReliabilityEnum_F;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PeerUpdateReliabilityEnum unknownDefaultOpenApi =
      _$peerUpdateReliabilityEnum_unknownDefaultOpenApi;

  static Serializer<PeerUpdateReliabilityEnum> get serializer =>
      _$peerUpdateReliabilityEnumSerializer;

  const PeerUpdateReliabilityEnum._(String name) : super(name);

  static BuiltSet<PeerUpdateReliabilityEnum> get values =>
      _$peerUpdateReliabilityEnumValues;
  static PeerUpdateReliabilityEnum valueOf(String name) =>
      _$peerUpdateReliabilityEnumValueOf(name);
}

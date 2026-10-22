//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/federation_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'peer_test_result.g.dart';

/// Result of fetching and verifying a peer's /v1/federation/info (113)
///
/// Properties:
/// * [ok]
/// * [reachable]
/// * [latencyMs]
/// * [info]
/// * [signatureValid]
/// * [kid]
/// * [pinnedKid]
/// * [keyMatches]
/// * [error]
@BuiltValue()
abstract class PeerTestResult
    implements Built<PeerTestResult, PeerTestResultBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'reachable')
  bool get reachable;

  @BuiltValueField(wireName: r'latencyMs')
  int? get latencyMs;

  @BuiltValueField(wireName: r'info')
  FederationInfo? get info;

  @BuiltValueField(wireName: r'signatureValid')
  bool? get signatureValid;

  @BuiltValueField(wireName: r'kid')
  String? get kid;

  @BuiltValueField(wireName: r'pinnedKid')
  String? get pinnedKid;

  @BuiltValueField(wireName: r'keyMatches')
  bool? get keyMatches;

  @BuiltValueField(wireName: r'error')
  String? get error;

  PeerTestResult._();

  factory PeerTestResult([void updates(PeerTestResultBuilder b)]) =
      _$PeerTestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PeerTestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PeerTestResult> get serializer =>
      _$PeerTestResultSerializer();
}

class _$PeerTestResultSerializer
    implements PrimitiveSerializer<PeerTestResult> {
  @override
  final Iterable<Type> types = const [PeerTestResult, _$PeerTestResult];

  @override
  final String wireName = r'PeerTestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PeerTestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(object.ok, specifiedType: const FullType(bool));
    yield r'reachable';
    yield serializers.serialize(
      object.reachable,
      specifiedType: const FullType(bool),
    );
    if (object.latencyMs != null) {
      yield r'latencyMs';
      yield serializers.serialize(
        object.latencyMs,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.info != null) {
      yield r'info';
      yield serializers.serialize(
        object.info,
        specifiedType: const FullType.nullable(FederationInfo),
      );
    }
    if (object.signatureValid != null) {
      yield r'signatureValid';
      yield serializers.serialize(
        object.signatureValid,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.kid != null) {
      yield r'kid';
      yield serializers.serialize(
        object.kid,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.pinnedKid != null) {
      yield r'pinnedKid';
      yield serializers.serialize(
        object.pinnedKid,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.keyMatches != null) {
      yield r'keyMatches';
      yield serializers.serialize(
        object.keyMatches,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PeerTestResult object, {
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
    required PeerTestResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.ok = valueDes;
          break;
        case r'reachable':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.reachable = valueDes;
          break;
        case r'latencyMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.latencyMs = valueDes;
          break;
        case r'info':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(FederationInfo),
                  )
                  as FederationInfo?;
          if (valueDes == null) continue;
          result.info.replace(valueDes);
          break;
        case r'signatureValid':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.signatureValid = valueDes;
          break;
        case r'kid':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.kid = valueDes;
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
        case r'keyMatches':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.keyMatches = valueDes;
          break;
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PeerTestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PeerTestResultBuilder();
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

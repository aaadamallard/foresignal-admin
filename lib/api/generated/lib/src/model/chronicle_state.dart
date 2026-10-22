//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/chronicle_state_layers_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_state.g.dart';

/// State of every layer at time T from chronicle storage (latest captured version per entity with observedAt ≤ T, valid by TTL); paged by layer
///
/// Properties:
/// * [chronicleId] - ULID identifier
/// * [at]
/// * [layers]
/// * [caveats]
@BuiltValue()
abstract class ChronicleState
    implements Built<ChronicleState, ChronicleStateBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'chronicleId')
  String get chronicleId;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  @BuiltValueField(wireName: r'layers')
  BuiltList<ChronicleStateLayersInner> get layers;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  ChronicleState._();

  factory ChronicleState([void updates(ChronicleStateBuilder b)]) =
      _$ChronicleState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleState> get serializer =>
      _$ChronicleStateSerializer();
}

class _$ChronicleStateSerializer
    implements PrimitiveSerializer<ChronicleState> {
  @override
  final Iterable<Type> types = const [ChronicleState, _$ChronicleState];

  @override
  final String wireName = r'ChronicleState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'chronicleId';
    yield serializers.serialize(
      object.chronicleId,
      specifiedType: const FullType(String),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    yield r'layers';
    yield serializers.serialize(
      object.layers,
      specifiedType:
          const FullType(BuiltList, [FullType(ChronicleStateLayersInner)]),
    );
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChronicleStateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chronicleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.chronicleId = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.at = valueDes;
          break;
        case r'layers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ChronicleStateLayersInner)]),
          ) as BuiltList<ChronicleStateLayersInner>;
          result.layers.replace(valueDes);
          break;
        case r'caveats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Caveat)]),
          ) as BuiltList<Caveat>?;
          if (valueDes == null) continue;
          result.caveats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleStateBuilder();
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

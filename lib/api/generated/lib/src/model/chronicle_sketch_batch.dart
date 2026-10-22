//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/chronicle_sketch_batch_access_decisions_inner.dart';
import 'package:foresignal_api/src/model/chronicle_sketch_batch_access_requests_inner.dart';
import 'package:foresignal_api/src/model/chronicle_sketch_package.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_sketch_batch.g.dart';

/// Signed batch of sketch packages sent over the 113 peer channel
///
/// Properties:
/// * [instanceId]
/// * [networkId]
/// * [sketches]
/// * [withdrawn] - Sketch ids no longer valid
/// * [accessRequests] - Access requests relayed to the instance holding the sketch (134); never the requester's chronicle
/// * [accessDecisions] - Owners' decisions on relayed requests, sent back to the requester's instance (134); status only
@BuiltValue()
abstract class ChronicleSketchBatch
    implements Built<ChronicleSketchBatch, ChronicleSketchBatchBuilder> {
  @BuiltValueField(wireName: r'instanceId')
  String get instanceId;

  @BuiltValueField(wireName: r'networkId')
  String get networkId;

  @BuiltValueField(wireName: r'sketches')
  BuiltList<ChronicleSketchPackage> get sketches;

  /// Sketch ids no longer valid
  @BuiltValueField(wireName: r'withdrawn')
  BuiltList<String>? get withdrawn;

  /// Access requests relayed to the instance holding the sketch (134); never the requester's chronicle
  @BuiltValueField(wireName: r'accessRequests')
  BuiltList<ChronicleSketchBatchAccessRequestsInner>? get accessRequests;

  /// Owners' decisions on relayed requests, sent back to the requester's instance (134); status only
  @BuiltValueField(wireName: r'accessDecisions')
  BuiltList<ChronicleSketchBatchAccessDecisionsInner>? get accessDecisions;

  ChronicleSketchBatch._();

  factory ChronicleSketchBatch([void updates(ChronicleSketchBatchBuilder b)]) =
      _$ChronicleSketchBatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSketchBatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSketchBatch> get serializer =>
      _$ChronicleSketchBatchSerializer();
}

class _$ChronicleSketchBatchSerializer
    implements PrimitiveSerializer<ChronicleSketchBatch> {
  @override
  final Iterable<Type> types = const [
    ChronicleSketchBatch,
    _$ChronicleSketchBatch
  ];

  @override
  final String wireName = r'ChronicleSketchBatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSketchBatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'instanceId';
    yield serializers.serialize(
      object.instanceId,
      specifiedType: const FullType(String),
    );
    yield r'networkId';
    yield serializers.serialize(
      object.networkId,
      specifiedType: const FullType(String),
    );
    yield r'sketches';
    yield serializers.serialize(
      object.sketches,
      specifiedType:
          const FullType(BuiltList, [FullType(ChronicleSketchPackage)]),
    );
    if (object.withdrawn != null) {
      yield r'withdrawn';
      yield serializers.serialize(
        object.withdrawn,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.accessRequests != null) {
      yield r'accessRequests';
      yield serializers.serialize(
        object.accessRequests,
        specifiedType: const FullType(
            BuiltList, [FullType(ChronicleSketchBatchAccessRequestsInner)]),
      );
    }
    if (object.accessDecisions != null) {
      yield r'accessDecisions';
      yield serializers.serialize(
        object.accessDecisions,
        specifiedType: const FullType(
            BuiltList, [FullType(ChronicleSketchBatchAccessDecisionsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSketchBatch object, {
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
    required ChronicleSketchBatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'instanceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.instanceId = valueDes;
          break;
        case r'networkId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.networkId = valueDes;
          break;
        case r'sketches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ChronicleSketchPackage)]),
          ) as BuiltList<ChronicleSketchPackage>;
          result.sketches.replace(valueDes);
          break;
        case r'withdrawn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.withdrawn.replace(valueDes);
          break;
        case r'accessRequests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ChronicleSketchBatchAccessRequestsInner)]),
          ) as BuiltList<ChronicleSketchBatchAccessRequestsInner>?;
          if (valueDes == null) continue;
          result.accessRequests.replace(valueDes);
          break;
        case r'accessDecisions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList,
                [FullType(ChronicleSketchBatchAccessDecisionsInner)]),
          ) as BuiltList<ChronicleSketchBatchAccessDecisionsInner>?;
          if (valueDes == null) continue;
          result.accessDecisions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSketchBatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSketchBatchBuilder();
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

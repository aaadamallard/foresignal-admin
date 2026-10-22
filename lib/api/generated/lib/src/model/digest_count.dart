//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/digest_count_entities.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/digest_count_previous.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'digest_count.g.dart';

/// Version counts by persist reason for one source and kind in a digest period (029). `routine` (SAMPLE + KEYFRAME + HEARTBEAT) is never counted as change.
///
/// Properties:
/// * [sourceId]
/// * [kind]
/// * [new_] - FIRST + REAPPEAR versions
/// * [changed] - SIGNIFICANT + CHANGE versions
/// * [removed] - TOMBSTONE versions
/// * [edges] - TRIGGER_EDGE versions
/// * [routine] - SAMPLE + KEYFRAME + HEARTBEAT versions
/// * [entities]
/// * [byReason]
/// * [previous]
@BuiltValue()
abstract class DigestCount implements Built<DigestCount, DigestCountBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'kind')
  String get kind;

  /// FIRST + REAPPEAR versions
  @BuiltValueField(wireName: r'new')
  int get new_;

  /// SIGNIFICANT + CHANGE versions
  @BuiltValueField(wireName: r'changed')
  int get changed;

  /// TOMBSTONE versions
  @BuiltValueField(wireName: r'removed')
  int get removed;

  /// TRIGGER_EDGE versions
  @BuiltValueField(wireName: r'edges')
  int? get edges;

  /// SAMPLE + KEYFRAME + HEARTBEAT versions
  @BuiltValueField(wireName: r'routine')
  int? get routine;

  @BuiltValueField(wireName: r'entities')
  DigestCountEntities? get entities;

  @BuiltValueField(wireName: r'byReason')
  BuiltMap<String, int>? get byReason;

  @BuiltValueField(wireName: r'previous')
  DigestCountPrevious? get previous;

  DigestCount._();

  factory DigestCount([void updates(DigestCountBuilder b)]) = _$DigestCount;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DigestCountBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DigestCount> get serializer => _$DigestCountSerializer();
}

class _$DigestCountSerializer implements PrimitiveSerializer<DigestCount> {
  @override
  final Iterable<Type> types = const [DigestCount, _$DigestCount];

  @override
  final String wireName = r'DigestCount';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DigestCount object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    yield r'new';
    yield serializers.serialize(
      object.new_,
      specifiedType: const FullType(int),
    );
    yield r'changed';
    yield serializers.serialize(
      object.changed,
      specifiedType: const FullType(int),
    );
    yield r'removed';
    yield serializers.serialize(
      object.removed,
      specifiedType: const FullType(int),
    );
    if (object.edges != null) {
      yield r'edges';
      yield serializers.serialize(
        object.edges,
        specifiedType: const FullType(int),
      );
    }
    if (object.routine != null) {
      yield r'routine';
      yield serializers.serialize(
        object.routine,
        specifiedType: const FullType(int),
      );
    }
    if (object.entities != null) {
      yield r'entities';
      yield serializers.serialize(
        object.entities,
        specifiedType: const FullType(DigestCountEntities),
      );
    }
    if (object.byReason != null) {
      yield r'byReason';
      yield serializers.serialize(
        object.byReason,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.previous != null) {
      yield r'previous';
      yield serializers.serialize(
        object.previous,
        specifiedType: const FullType.nullable(DigestCountPrevious),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DigestCount object, {
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
    required DigestCountBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceId = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'new':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.new_ = valueDes;
          break;
        case r'changed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.changed = valueDes;
          break;
        case r'removed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.removed = valueDes;
          break;
        case r'edges':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.edges = valueDes;
          break;
        case r'routine':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.routine = valueDes;
          break;
        case r'entities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DigestCountEntities),
          ) as DigestCountEntities?;
          if (valueDes == null) continue;
          result.entities.replace(valueDes);
          break;
        case r'byReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.byReason.replace(valueDes);
          break;
        case r'previous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DigestCountPrevious),
          ) as DigestCountPrevious?;
          if (valueDes == null) continue;
          result.previous.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DigestCount deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DigestCountBuilder();
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

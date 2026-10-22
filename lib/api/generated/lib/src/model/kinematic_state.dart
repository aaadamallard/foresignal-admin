//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kinematic_state.g.dart';

/// Kinematic state of a record from head ⋈ live (114)
///
/// Properties:
/// * [sourceId]
/// * [externalId]
/// * [kind]
/// * [position]
/// * [observedAt]
/// * [speedMps]
/// * [courseDeg]
/// * [altitudeM]
/// * [derived] - Speed and course derived from the last two persisted positions
/// * [stale] - Older than 2 × the source TTL
@BuiltValue()
abstract class KinematicState
    implements Built<KinematicState, KinematicStateBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'position')
  Geometry get position;

  @BuiltValueField(wireName: r'observedAt')
  DateTime get observedAt;

  @BuiltValueField(wireName: r'speedMps')
  num? get speedMps;

  @BuiltValueField(wireName: r'courseDeg')
  num? get courseDeg;

  @BuiltValueField(wireName: r'altitudeM')
  num? get altitudeM;

  /// Speed and course derived from the last two persisted positions
  @BuiltValueField(wireName: r'derived')
  bool? get derived;

  /// Older than 2 × the source TTL
  @BuiltValueField(wireName: r'stale')
  bool? get stale;

  KinematicState._();

  factory KinematicState([void updates(KinematicStateBuilder b)]) =
      _$KinematicState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KinematicStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KinematicState> get serializer =>
      _$KinematicStateSerializer();
}

class _$KinematicStateSerializer
    implements PrimitiveSerializer<KinematicState> {
  @override
  final Iterable<Type> types = const [KinematicState, _$KinematicState];

  @override
  final String wireName = r'KinematicState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KinematicState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    yield r'position';
    yield serializers.serialize(
      object.position,
      specifiedType: const FullType(Geometry),
    );
    yield r'observedAt';
    yield serializers.serialize(
      object.observedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.speedMps != null) {
      yield r'speedMps';
      yield serializers.serialize(
        object.speedMps,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.courseDeg != null) {
      yield r'courseDeg';
      yield serializers.serialize(
        object.courseDeg,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.altitudeM != null) {
      yield r'altitudeM';
      yield serializers.serialize(
        object.altitudeM,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.derived != null) {
      yield r'derived';
      yield serializers.serialize(
        object.derived,
        specifiedType: const FullType(bool),
      );
    }
    if (object.stale != null) {
      yield r'stale';
      yield serializers.serialize(
        object.stale,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KinematicState object, {
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
    required KinematicStateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.externalId = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'position':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Geometry),
                  )
                  as Geometry;
          result.position.replace(valueDes);
          break;
        case r'observedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.observedAt = valueDes;
          break;
        case r'speedMps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.speedMps = valueDes;
          break;
        case r'courseDeg':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.courseDeg = valueDes;
          break;
        case r'altitudeM':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.altitudeM = valueDes;
          break;
        case r'derived':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.derived = valueDes;
          break;
        case r'stale':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.stale = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KinematicState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KinematicStateBuilder();
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

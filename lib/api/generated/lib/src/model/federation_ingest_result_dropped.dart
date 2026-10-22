//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'federation_ingest_result_dropped.g.dart';

/// Items dropped by reason
///
/// Properties:
/// * [loop]
/// * [hops]
/// * [dedup]
/// * [licence]
/// * [private]
/// * [exercise]
/// * [expired]
/// * [selection] - Outside the selection, malformed, or of a kind the target source does not declare
@BuiltValue()
abstract class FederationIngestResultDropped
    implements
        Built<
          FederationIngestResultDropped,
          FederationIngestResultDroppedBuilder
        > {
  @BuiltValueField(wireName: r'loop')
  int? get loop;

  @BuiltValueField(wireName: r'hops')
  int? get hops;

  @BuiltValueField(wireName: r'dedup')
  int? get dedup;

  @BuiltValueField(wireName: r'licence')
  int? get licence;

  @BuiltValueField(wireName: r'private')
  int? get private;

  @BuiltValueField(wireName: r'exercise')
  int? get exercise;

  @BuiltValueField(wireName: r'expired')
  int? get expired;

  /// Outside the selection, malformed, or of a kind the target source does not declare
  @BuiltValueField(wireName: r'selection')
  int? get selection;

  FederationIngestResultDropped._();

  factory FederationIngestResultDropped([
    void updates(FederationIngestResultDroppedBuilder b),
  ]) = _$FederationIngestResultDropped;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FederationIngestResultDroppedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FederationIngestResultDropped> get serializer =>
      _$FederationIngestResultDroppedSerializer();
}

class _$FederationIngestResultDroppedSerializer
    implements PrimitiveSerializer<FederationIngestResultDropped> {
  @override
  final Iterable<Type> types = const [
    FederationIngestResultDropped,
    _$FederationIngestResultDropped,
  ];

  @override
  final String wireName = r'FederationIngestResultDropped';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FederationIngestResultDropped object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.loop != null) {
      yield r'loop';
      yield serializers.serialize(
        object.loop,
        specifiedType: const FullType(int),
      );
    }
    if (object.hops != null) {
      yield r'hops';
      yield serializers.serialize(
        object.hops,
        specifiedType: const FullType(int),
      );
    }
    if (object.dedup != null) {
      yield r'dedup';
      yield serializers.serialize(
        object.dedup,
        specifiedType: const FullType(int),
      );
    }
    if (object.licence != null) {
      yield r'licence';
      yield serializers.serialize(
        object.licence,
        specifiedType: const FullType(int),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(int),
      );
    }
    if (object.exercise != null) {
      yield r'exercise';
      yield serializers.serialize(
        object.exercise,
        specifiedType: const FullType(int),
      );
    }
    if (object.expired != null) {
      yield r'expired';
      yield serializers.serialize(
        object.expired,
        specifiedType: const FullType(int),
      );
    }
    if (object.selection != null) {
      yield r'selection';
      yield serializers.serialize(
        object.selection,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FederationIngestResultDropped object, {
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
    required FederationIngestResultDroppedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'loop':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.loop = valueDes;
          break;
        case r'hops':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.hops = valueDes;
          break;
        case r'dedup':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.dedup = valueDes;
          break;
        case r'licence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.licence = valueDes;
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        case r'exercise':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.exercise = valueDes;
          break;
        case r'expired':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.expired = valueDes;
          break;
        case r'selection':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.selection = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FederationIngestResultDropped deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FederationIngestResultDroppedBuilder();
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

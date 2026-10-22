//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'digest_alerts_by_status.g.dart';

/// Counts per lifecycle state (017)
///
/// Properties:
/// * [firing]
/// * [acknowledged]
/// * [resolved]
@BuiltValue()
abstract class DigestAlertsByStatus
    implements Built<DigestAlertsByStatus, DigestAlertsByStatusBuilder> {
  @BuiltValueField(wireName: r'firing')
  int? get firing;

  @BuiltValueField(wireName: r'acknowledged')
  int? get acknowledged;

  @BuiltValueField(wireName: r'resolved')
  int? get resolved;

  DigestAlertsByStatus._();

  factory DigestAlertsByStatus([void updates(DigestAlertsByStatusBuilder b)]) =
      _$DigestAlertsByStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DigestAlertsByStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DigestAlertsByStatus> get serializer =>
      _$DigestAlertsByStatusSerializer();
}

class _$DigestAlertsByStatusSerializer
    implements PrimitiveSerializer<DigestAlertsByStatus> {
  @override
  final Iterable<Type> types = const [
    DigestAlertsByStatus,
    _$DigestAlertsByStatus,
  ];

  @override
  final String wireName = r'DigestAlertsByStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DigestAlertsByStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.firing != null) {
      yield r'firing';
      yield serializers.serialize(
        object.firing,
        specifiedType: const FullType(int),
      );
    }
    if (object.acknowledged != null) {
      yield r'acknowledged';
      yield serializers.serialize(
        object.acknowledged,
        specifiedType: const FullType(int),
      );
    }
    if (object.resolved != null) {
      yield r'resolved';
      yield serializers.serialize(
        object.resolved,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DigestAlertsByStatus object, {
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
    required DigestAlertsByStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'firing':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.firing = valueDes;
          break;
        case r'acknowledged':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.acknowledged = valueDes;
          break;
        case r'resolved':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.resolved = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DigestAlertsByStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DigestAlertsByStatusBuilder();
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

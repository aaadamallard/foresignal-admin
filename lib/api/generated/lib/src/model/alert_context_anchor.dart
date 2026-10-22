//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alert_context_anchor.g.dart';

/// Moving-anchor (\"near me\") rules (036): the anchor record, its seq and the km-rounded distance to the target (never coordinates)
///
/// Properties:
/// * [source_]
/// * [externalId]
/// * [seq]
/// * [distanceKm]
@BuiltValue()
abstract class AlertContextAnchor
    implements Built<AlertContextAnchor, AlertContextAnchorBuilder> {
  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'externalId')
  String? get externalId;

  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'distanceKm')
  num? get distanceKm;

  AlertContextAnchor._();

  factory AlertContextAnchor([void updates(AlertContextAnchorBuilder b)]) =
      _$AlertContextAnchor;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlertContextAnchorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlertContextAnchor> get serializer =>
      _$AlertContextAnchorSerializer();
}

class _$AlertContextAnchorSerializer
    implements PrimitiveSerializer<AlertContextAnchor> {
  @override
  final Iterable<Type> types = const [AlertContextAnchor, _$AlertContextAnchor];

  @override
  final String wireName = r'AlertContextAnchor';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlertContextAnchor object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.externalId != null) {
      yield r'externalId';
      yield serializers.serialize(
        object.externalId,
        specifiedType: const FullType(String),
      );
    }
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(
        object.seq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.distanceKm != null) {
      yield r'distanceKm';
      yield serializers.serialize(
        object.distanceKm,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlertContextAnchor object, {
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
    required AlertContextAnchorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.externalId = valueDes;
          break;
        case r'seq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.seq = valueDes;
          break;
        case r'distanceKm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.distanceKm = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlertContextAnchor deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlertContextAnchorBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'digest_next.g.dart';

/// Cursor for the next call
///
/// Properties:
/// * [sinceSeq]
/// * [sinceAlertId]
@BuiltValue()
abstract class DigestNext implements Built<DigestNext, DigestNextBuilder> {
  @BuiltValueField(wireName: r'sinceSeq')
  int get sinceSeq;

  @BuiltValueField(wireName: r'sinceAlertId')
  int? get sinceAlertId;

  DigestNext._();

  factory DigestNext([void updates(DigestNextBuilder b)]) = _$DigestNext;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DigestNextBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DigestNext> get serializer => _$DigestNextSerializer();
}

class _$DigestNextSerializer implements PrimitiveSerializer<DigestNext> {
  @override
  final Iterable<Type> types = const [DigestNext, _$DigestNext];

  @override
  final String wireName = r'DigestNext';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DigestNext object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sinceSeq';
    yield serializers.serialize(
      object.sinceSeq,
      specifiedType: const FullType(int),
    );
    if (object.sinceAlertId != null) {
      yield r'sinceAlertId';
      yield serializers.serialize(
        object.sinceAlertId,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DigestNext object, {
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
    required DigestNextBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sinceSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sinceSeq = valueDes;
          break;
        case r'sinceAlertId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sinceAlertId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DigestNext deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DigestNextBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sample_value_derived.g.dart';

/// Speed and direction derived from u/v
///
/// Properties:
/// * [speedMs]
/// * [fromDeg]
/// * [compass]
@BuiltValue()
abstract class SampleValueDerived
    implements Built<SampleValueDerived, SampleValueDerivedBuilder> {
  @BuiltValueField(wireName: r'speedMs')
  num? get speedMs;

  @BuiltValueField(wireName: r'fromDeg')
  int? get fromDeg;

  @BuiltValueField(wireName: r'compass')
  String? get compass;

  SampleValueDerived._();

  factory SampleValueDerived([void updates(SampleValueDerivedBuilder b)]) =
      _$SampleValueDerived;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SampleValueDerivedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SampleValueDerived> get serializer =>
      _$SampleValueDerivedSerializer();
}

class _$SampleValueDerivedSerializer
    implements PrimitiveSerializer<SampleValueDerived> {
  @override
  final Iterable<Type> types = const [SampleValueDerived, _$SampleValueDerived];

  @override
  final String wireName = r'SampleValueDerived';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SampleValueDerived object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.speedMs != null) {
      yield r'speedMs';
      yield serializers.serialize(
        object.speedMs,
        specifiedType: const FullType(num),
      );
    }
    if (object.fromDeg != null) {
      yield r'fromDeg';
      yield serializers.serialize(
        object.fromDeg,
        specifiedType: const FullType(int),
      );
    }
    if (object.compass != null) {
      yield r'compass';
      yield serializers.serialize(
        object.compass,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SampleValueDerived object, {
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
    required SampleValueDerivedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'speedMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.speedMs = valueDes;
          break;
        case r'fromDeg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.fromDeg = valueDes;
          break;
        case r'compass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.compass = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SampleValueDerived deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SampleValueDerivedBuilder();
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

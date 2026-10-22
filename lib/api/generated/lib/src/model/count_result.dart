//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'count_result.g.dart';

/// Count-only response for `count=true` (038)
///
/// Properties:
/// * [count]
/// * [exact] - False above 1,000,000
/// * [watermarkSeq]
@BuiltValue()
abstract class CountResult implements Built<CountResult, CountResultBuilder> {
  @BuiltValueField(wireName: r'count')
  int get count;

  /// False above 1,000,000
  @BuiltValueField(wireName: r'exact')
  bool get exact;

  @BuiltValueField(wireName: r'watermarkSeq')
  int get watermarkSeq;

  CountResult._();

  factory CountResult([void updates(CountResultBuilder b)]) = _$CountResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CountResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CountResult> get serializer => _$CountResultSerializer();
}

class _$CountResultSerializer implements PrimitiveSerializer<CountResult> {
  @override
  final Iterable<Type> types = const [CountResult, _$CountResult];

  @override
  final String wireName = r'CountResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CountResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    yield r'exact';
    yield serializers.serialize(
      object.exact,
      specifiedType: const FullType(bool),
    );
    yield r'watermarkSeq';
    yield serializers.serialize(
      object.watermarkSeq,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CountResult object, {
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
    required CountResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'count':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.count = valueDes;
          break;
        case r'exact':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.exact = valueDes;
          break;
        case r'watermarkSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.watermarkSeq = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CountResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CountResultBuilder();
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

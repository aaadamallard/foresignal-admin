//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aggregator_test_result.g.dart';

/// Result of probing an aggregator's local endpoint
///
/// Properties:
/// * [ok]
/// * [reachable]
/// * [sampleCount] - Objects seen in a sample read
/// * [message]
/// * [checkedAt]
@BuiltValue()
abstract class AggregatorTestResult
    implements Built<AggregatorTestResult, AggregatorTestResultBuilder> {
  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'reachable')
  bool get reachable;

  /// Objects seen in a sample read
  @BuiltValueField(wireName: r'sampleCount')
  int? get sampleCount;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'checkedAt')
  DateTime? get checkedAt;

  AggregatorTestResult._();

  factory AggregatorTestResult([void updates(AggregatorTestResultBuilder b)]) =
      _$AggregatorTestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AggregatorTestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AggregatorTestResult> get serializer =>
      _$AggregatorTestResultSerializer();
}

class _$AggregatorTestResultSerializer
    implements PrimitiveSerializer<AggregatorTestResult> {
  @override
  final Iterable<Type> types = const [
    AggregatorTestResult,
    _$AggregatorTestResult,
  ];

  @override
  final String wireName = r'AggregatorTestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AggregatorTestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ok';
    yield serializers.serialize(object.ok, specifiedType: const FullType(bool));
    yield r'reachable';
    yield serializers.serialize(
      object.reachable,
      specifiedType: const FullType(bool),
    );
    if (object.sampleCount != null) {
      yield r'sampleCount';
      yield serializers.serialize(
        object.sampleCount,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.checkedAt != null) {
      yield r'checkedAt';
      yield serializers.serialize(
        object.checkedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AggregatorTestResult object, {
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
    required AggregatorTestResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ok':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.ok = valueDes;
          break;
        case r'reachable':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.reachable = valueDes;
          break;
        case r'sampleCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.sampleCount = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'checkedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.checkedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AggregatorTestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregatorTestResultBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'benchmark_case_expectations_questions_inner.g.dart';

/// Question with a known resolution
///
/// Properties:
/// * [text]
/// * [type]
/// * [outcome]
/// * [resolvedAt]
@BuiltValue()
abstract class BenchmarkCaseExpectationsQuestionsInner
    implements
        Built<
          BenchmarkCaseExpectationsQuestionsInner,
          BenchmarkCaseExpectationsQuestionsInnerBuilder
        > {
  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'type')
  BenchmarkCaseExpectationsQuestionsInnerTypeEnum get type;
  // enum typeEnum {  binary,  numeric,  };

  @BuiltValueField(wireName: r'outcome')
  JsonObject? get outcome;

  @BuiltValueField(wireName: r'resolvedAt')
  DateTime? get resolvedAt;

  BenchmarkCaseExpectationsQuestionsInner._();

  factory BenchmarkCaseExpectationsQuestionsInner([
    void updates(BenchmarkCaseExpectationsQuestionsInnerBuilder b),
  ]) = _$BenchmarkCaseExpectationsQuestionsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BenchmarkCaseExpectationsQuestionsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BenchmarkCaseExpectationsQuestionsInner> get serializer =>
      _$BenchmarkCaseExpectationsQuestionsInnerSerializer();
}

class _$BenchmarkCaseExpectationsQuestionsInnerSerializer
    implements PrimitiveSerializer<BenchmarkCaseExpectationsQuestionsInner> {
  @override
  final Iterable<Type> types = const [
    BenchmarkCaseExpectationsQuestionsInner,
    _$BenchmarkCaseExpectationsQuestionsInner,
  ];

  @override
  final String wireName = r'BenchmarkCaseExpectationsQuestionsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BenchmarkCaseExpectationsQuestionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(
        BenchmarkCaseExpectationsQuestionsInnerTypeEnum,
      ),
    );
    yield r'outcome';
    yield object.outcome == null
        ? null
        : serializers.serialize(
            object.outcome,
            specifiedType: const FullType.nullable(JsonObject),
          );
    if (object.resolvedAt != null) {
      yield r'resolvedAt';
      yield serializers.serialize(
        object.resolvedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkCaseExpectationsQuestionsInner object, {
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
    required BenchmarkCaseExpectationsQuestionsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.text = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      BenchmarkCaseExpectationsQuestionsInnerTypeEnum,
                    ),
                  )
                  as BenchmarkCaseExpectationsQuestionsInnerTypeEnum;
          result.type = valueDes;
          break;
        case r'outcome':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.outcome = valueDes;
          break;
        case r'resolvedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.resolvedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BenchmarkCaseExpectationsQuestionsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BenchmarkCaseExpectationsQuestionsInnerBuilder();
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

class BenchmarkCaseExpectationsQuestionsInnerTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'binary')
  static const BenchmarkCaseExpectationsQuestionsInnerTypeEnum binary =
      _$benchmarkCaseExpectationsQuestionsInnerTypeEnum_binary;
  @BuiltValueEnumConst(wireName: r'numeric')
  static const BenchmarkCaseExpectationsQuestionsInnerTypeEnum numeric =
      _$benchmarkCaseExpectationsQuestionsInnerTypeEnum_numeric;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BenchmarkCaseExpectationsQuestionsInnerTypeEnum
  unknownDefaultOpenApi =
      _$benchmarkCaseExpectationsQuestionsInnerTypeEnum_unknownDefaultOpenApi;

  static Serializer<BenchmarkCaseExpectationsQuestionsInnerTypeEnum>
  get serializer => _$benchmarkCaseExpectationsQuestionsInnerTypeEnumSerializer;

  const BenchmarkCaseExpectationsQuestionsInnerTypeEnum._(String name)
    : super(name);

  static BuiltSet<BenchmarkCaseExpectationsQuestionsInnerTypeEnum> get values =>
      _$benchmarkCaseExpectationsQuestionsInnerTypeEnumValues;
  static BenchmarkCaseExpectationsQuestionsInnerTypeEnum valueOf(String name) =>
      _$benchmarkCaseExpectationsQuestionsInnerTypeEnumValueOf(name);
}

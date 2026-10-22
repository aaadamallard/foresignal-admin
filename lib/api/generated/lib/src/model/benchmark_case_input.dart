//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/benchmark_case_expectations.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'benchmark_case_input.g.dart';

/// A new operator or agent historical case
///
/// Properties:
/// * [name]
/// * [description]
/// * [windowFrom]
/// * [windowTo]
/// * [regionCodes] - ISO 3166-1 alpha-2 country or ISO 3166-2 subdivision codes
/// * [expectations]
@BuiltValue()
abstract class BenchmarkCaseInput
    implements Built<BenchmarkCaseInput, BenchmarkCaseInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'windowFrom')
  DateTime get windowFrom;

  @BuiltValueField(wireName: r'windowTo')
  DateTime get windowTo;

  /// ISO 3166-1 alpha-2 country or ISO 3166-2 subdivision codes
  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  @BuiltValueField(wireName: r'expectations')
  BenchmarkCaseExpectations get expectations;

  BenchmarkCaseInput._();

  factory BenchmarkCaseInput([void updates(BenchmarkCaseInputBuilder b)]) =
      _$BenchmarkCaseInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BenchmarkCaseInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BenchmarkCaseInput> get serializer =>
      _$BenchmarkCaseInputSerializer();
}

class _$BenchmarkCaseInputSerializer
    implements PrimitiveSerializer<BenchmarkCaseInput> {
  @override
  final Iterable<Type> types = const [BenchmarkCaseInput, _$BenchmarkCaseInput];

  @override
  final String wireName = r'BenchmarkCaseInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BenchmarkCaseInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'windowFrom';
    yield serializers.serialize(
      object.windowFrom,
      specifiedType: const FullType(DateTime),
    );
    yield r'windowTo';
    yield serializers.serialize(
      object.windowTo,
      specifiedType: const FullType(DateTime),
    );
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'expectations';
    yield serializers.serialize(
      object.expectations,
      specifiedType: const FullType(BenchmarkCaseExpectations),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkCaseInput object, {
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
    required BenchmarkCaseInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'windowFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.windowFrom = valueDes;
          break;
        case r'windowTo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.windowTo = valueDes;
          break;
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        case r'expectations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BenchmarkCaseExpectations),
                  )
                  as BenchmarkCaseExpectations;
          result.expectations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BenchmarkCaseInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BenchmarkCaseInputBuilder();
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

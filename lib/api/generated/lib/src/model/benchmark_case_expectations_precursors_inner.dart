//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'benchmark_case_expectations_precursors_inner.g.dart';

/// Expected precursor outcome
///
/// Properties:
/// * [precursorId]
/// * [leader] - Leading family or series ref
/// * [follower] - Following family or series ref
/// * [expected]
/// * [lagHours]
@BuiltValue()
abstract class BenchmarkCaseExpectationsPrecursorsInner
    implements
        Built<
          BenchmarkCaseExpectationsPrecursorsInner,
          BenchmarkCaseExpectationsPrecursorsInnerBuilder
        > {
  @BuiltValueField(wireName: r'precursorId')
  String? get precursorId;

  /// Leading family or series ref
  @BuiltValueField(wireName: r'leader')
  String? get leader;

  /// Following family or series ref
  @BuiltValueField(wireName: r'follower')
  String? get follower;

  @BuiltValueField(wireName: r'expected')
  BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum get expected;
  // enum expectedEnum {  validated,  not-validated,  };

  @BuiltValueField(wireName: r'lagHours')
  num? get lagHours;

  BenchmarkCaseExpectationsPrecursorsInner._();

  factory BenchmarkCaseExpectationsPrecursorsInner([
    void updates(BenchmarkCaseExpectationsPrecursorsInnerBuilder b),
  ]) = _$BenchmarkCaseExpectationsPrecursorsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BenchmarkCaseExpectationsPrecursorsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BenchmarkCaseExpectationsPrecursorsInner> get serializer =>
      _$BenchmarkCaseExpectationsPrecursorsInnerSerializer();
}

class _$BenchmarkCaseExpectationsPrecursorsInnerSerializer
    implements PrimitiveSerializer<BenchmarkCaseExpectationsPrecursorsInner> {
  @override
  final Iterable<Type> types = const [
    BenchmarkCaseExpectationsPrecursorsInner,
    _$BenchmarkCaseExpectationsPrecursorsInner,
  ];

  @override
  final String wireName = r'BenchmarkCaseExpectationsPrecursorsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BenchmarkCaseExpectationsPrecursorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.precursorId != null) {
      yield r'precursorId';
      yield serializers.serialize(
        object.precursorId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.leader != null) {
      yield r'leader';
      yield serializers.serialize(
        object.leader,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.follower != null) {
      yield r'follower';
      yield serializers.serialize(
        object.follower,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'expected';
    yield serializers.serialize(
      object.expected,
      specifiedType: const FullType(
        BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum,
      ),
    );
    if (object.lagHours != null) {
      yield r'lagHours';
      yield serializers.serialize(
        object.lagHours,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkCaseExpectationsPrecursorsInner object, {
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
    required BenchmarkCaseExpectationsPrecursorsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'precursorId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.precursorId = valueDes;
          break;
        case r'leader':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.leader = valueDes;
          break;
        case r'follower':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.follower = valueDes;
          break;
        case r'expected':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum,
                    ),
                  )
                  as BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum;
          result.expected = valueDes;
          break;
        case r'lagHours':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.lagHours = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BenchmarkCaseExpectationsPrecursorsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BenchmarkCaseExpectationsPrecursorsInnerBuilder();
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

class BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'validated')
  static const BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum validated =
      _$benchmarkCaseExpectationsPrecursorsInnerExpectedEnum_validated;
  @BuiltValueEnumConst(wireName: r'not-validated')
  static const BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum
  notValidated =
      _$benchmarkCaseExpectationsPrecursorsInnerExpectedEnum_notValidated;

  static Serializer<BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum>
  get serializer =>
      _$benchmarkCaseExpectationsPrecursorsInnerExpectedEnumSerializer;

  const BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum._(String name)
    : super(name);

  static BuiltSet<BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum>
  get values => _$benchmarkCaseExpectationsPrecursorsInnerExpectedEnumValues;
  static BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum valueOf(
    String name,
  ) => _$benchmarkCaseExpectationsPrecursorsInnerExpectedEnumValueOf(name);
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/benchmark_case_expectations.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'benchmark_case.g.dart';

/// A historical benchmark case replayed with `asOf` stepping from the window start
///
/// Properties:
/// * [id] - ULID identifier
/// * [name]
/// * [description]
/// * [windowFrom]
/// * [windowTo]
/// * [regionCodes] - ISO 3166-1 alpha-2 country or ISO 3166-2 subdivision codes
/// * [expectations]
/// * [source_] - `auto` = sampled null region-week
/// * [createdBy]
/// * [createdAt]
@BuiltValue()
abstract class BenchmarkCase
    implements Built<BenchmarkCase, BenchmarkCaseBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

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
  BuiltList<String> get regionCodes;

  @BuiltValueField(wireName: r'expectations')
  BenchmarkCaseExpectations get expectations;

  /// `auto` = sampled null region-week
  @BuiltValueField(wireName: r'source')
  BenchmarkCaseSource_Enum get source_;
  // enum source_Enum {  operator,  agent,  auto,  };

  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  BenchmarkCase._();

  factory BenchmarkCase([void updates(BenchmarkCaseBuilder b)]) =
      _$BenchmarkCase;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BenchmarkCaseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BenchmarkCase> get serializer =>
      _$BenchmarkCaseSerializer();
}

class _$BenchmarkCaseSerializer implements PrimitiveSerializer<BenchmarkCase> {
  @override
  final Iterable<Type> types = const [BenchmarkCase, _$BenchmarkCase];

  @override
  final String wireName = r'BenchmarkCase';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BenchmarkCase object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
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
    yield r'regionCodes';
    yield serializers.serialize(
      object.regionCodes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'expectations';
    yield serializers.serialize(
      object.expectations,
      specifiedType: const FullType(BenchmarkCaseExpectations),
    );
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(BenchmarkCaseSource_Enum),
    );
    if (object.createdBy != null) {
      yield r'createdBy';
      yield serializers.serialize(
        object.createdBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkCase object, {
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
    required BenchmarkCaseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
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
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
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
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BenchmarkCaseSource_Enum),
                  )
                  as BenchmarkCaseSource_Enum;
          result.source_ = valueDes;
          break;
        case r'createdBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.createdBy = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BenchmarkCase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BenchmarkCaseBuilder();
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

/// `auto` = sampled null region-week
class BenchmarkCaseSource_Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'operator')
  static const BenchmarkCaseSource_Enum operator_ =
      _$benchmarkCaseSourceEnum_operator_;
  @BuiltValueEnumConst(wireName: r'agent')
  static const BenchmarkCaseSource_Enum agent = _$benchmarkCaseSourceEnum_agent;
  @BuiltValueEnumConst(wireName: r'auto')
  static const BenchmarkCaseSource_Enum auto = _$benchmarkCaseSourceEnum_auto;

  static Serializer<BenchmarkCaseSource_Enum> get serializer =>
      _$benchmarkCaseSourceEnumSerializer;

  const BenchmarkCaseSource_Enum._(String name) : super(name);

  static BuiltSet<BenchmarkCaseSource_Enum> get values =>
      _$benchmarkCaseSourceEnumValues;
  static BenchmarkCaseSource_Enum valueOf(String name) =>
      _$benchmarkCaseSourceEnumValueOf(name);
}

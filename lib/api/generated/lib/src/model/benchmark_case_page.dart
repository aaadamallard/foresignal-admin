//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/benchmark_case.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'benchmark_case_page.g.dart';

/// Page of benchmark cases
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class BenchmarkCasePage
    implements Built<BenchmarkCasePage, BenchmarkCasePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<BenchmarkCase> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  BenchmarkCasePage._();

  factory BenchmarkCasePage([void updates(BenchmarkCasePageBuilder b)]) =
      _$BenchmarkCasePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BenchmarkCasePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BenchmarkCasePage> get serializer =>
      _$BenchmarkCasePageSerializer();
}

class _$BenchmarkCasePageSerializer
    implements PrimitiveSerializer<BenchmarkCasePage> {
  @override
  final Iterable<Type> types = const [BenchmarkCasePage, _$BenchmarkCasePage];

  @override
  final String wireName = r'BenchmarkCasePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BenchmarkCasePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(BenchmarkCase)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkCasePage object, {
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
    required BenchmarkCasePageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BenchmarkCase)]),
          ) as BuiltList<BenchmarkCase>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BenchmarkCasePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BenchmarkCasePageBuilder();
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

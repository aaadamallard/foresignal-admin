//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/benchmark_run.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'benchmark_run_page.g.dart';

/// Page of benchmark runs, newest first
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class BenchmarkRunPage
    implements Built<BenchmarkRunPage, BenchmarkRunPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<BenchmarkRun> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  BenchmarkRunPage._();

  factory BenchmarkRunPage([void updates(BenchmarkRunPageBuilder b)]) =
      _$BenchmarkRunPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BenchmarkRunPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BenchmarkRunPage> get serializer =>
      _$BenchmarkRunPageSerializer();
}

class _$BenchmarkRunPageSerializer
    implements PrimitiveSerializer<BenchmarkRunPage> {
  @override
  final Iterable<Type> types = const [BenchmarkRunPage, _$BenchmarkRunPage];

  @override
  final String wireName = r'BenchmarkRunPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BenchmarkRunPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(BenchmarkRun)]),
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
    BenchmarkRunPage object, {
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
    required BenchmarkRunPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(BenchmarkRun),
                    ]),
                  )
                  as BuiltList<BenchmarkRun>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
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
  BenchmarkRunPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BenchmarkRunPageBuilder();
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

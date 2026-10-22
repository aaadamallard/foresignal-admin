//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coverage_stats_articles.g.dart';

/// Counts by lean bucket
///
/// Properties:
/// * [left]
/// * [center]
/// * [right]
/// * [unrated]
@BuiltValue()
abstract class CoverageStatsArticles
    implements Built<CoverageStatsArticles, CoverageStatsArticlesBuilder> {
  @BuiltValueField(wireName: r'left')
  int get left;

  @BuiltValueField(wireName: r'center')
  int get center;

  @BuiltValueField(wireName: r'right')
  int get right;

  @BuiltValueField(wireName: r'unrated')
  int get unrated;

  CoverageStatsArticles._();

  factory CoverageStatsArticles(
      [void updates(CoverageStatsArticlesBuilder b)]) = _$CoverageStatsArticles;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CoverageStatsArticlesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CoverageStatsArticles> get serializer =>
      _$CoverageStatsArticlesSerializer();
}

class _$CoverageStatsArticlesSerializer
    implements PrimitiveSerializer<CoverageStatsArticles> {
  @override
  final Iterable<Type> types = const [
    CoverageStatsArticles,
    _$CoverageStatsArticles
  ];

  @override
  final String wireName = r'CoverageStatsArticles';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CoverageStatsArticles object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'left';
    yield serializers.serialize(
      object.left,
      specifiedType: const FullType(int),
    );
    yield r'center';
    yield serializers.serialize(
      object.center,
      specifiedType: const FullType(int),
    );
    yield r'right';
    yield serializers.serialize(
      object.right,
      specifiedType: const FullType(int),
    );
    yield r'unrated';
    yield serializers.serialize(
      object.unrated,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CoverageStatsArticles object, {
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
    required CoverageStatsArticlesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'left':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.left = valueDes;
          break;
        case r'center':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.center = valueDes;
          break;
        case r'right':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.right = valueDes;
          break;
        case r'unrated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.unrated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CoverageStatsArticles deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CoverageStatsArticlesBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exposure_watchlist_entities_counts_inner.g.dart';

/// Count per watchlist
///
/// Properties:
/// * [watchlistId]
/// * [name]
/// * [count]
@BuiltValue()
abstract class ExposureWatchlistEntitiesCountsInner
    implements
        Built<ExposureWatchlistEntitiesCountsInner,
            ExposureWatchlistEntitiesCountsInnerBuilder> {
  @BuiltValueField(wireName: r'watchlistId')
  String get watchlistId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'count')
  int get count;

  ExposureWatchlistEntitiesCountsInner._();

  factory ExposureWatchlistEntitiesCountsInner(
          [void updates(ExposureWatchlistEntitiesCountsInnerBuilder b)]) =
      _$ExposureWatchlistEntitiesCountsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExposureWatchlistEntitiesCountsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExposureWatchlistEntitiesCountsInner> get serializer =>
      _$ExposureWatchlistEntitiesCountsInnerSerializer();
}

class _$ExposureWatchlistEntitiesCountsInnerSerializer
    implements PrimitiveSerializer<ExposureWatchlistEntitiesCountsInner> {
  @override
  final Iterable<Type> types = const [
    ExposureWatchlistEntitiesCountsInner,
    _$ExposureWatchlistEntitiesCountsInner
  ];

  @override
  final String wireName = r'ExposureWatchlistEntitiesCountsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExposureWatchlistEntitiesCountsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'watchlistId';
    yield serializers.serialize(
      object.watchlistId,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExposureWatchlistEntitiesCountsInner object, {
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
    required ExposureWatchlistEntitiesCountsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'watchlistId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.watchlistId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExposureWatchlistEntitiesCountsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExposureWatchlistEntitiesCountsInnerBuilder();
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

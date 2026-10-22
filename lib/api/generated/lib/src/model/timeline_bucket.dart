//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timeline_bucket.g.dart';

/// One timeline bucket (037)
///
/// Properties:
/// * [t]
/// * [total]
/// * [counts] - Per kind or source when groupBy is set
@BuiltValue()
abstract class TimelineBucket
    implements Built<TimelineBucket, TimelineBucketBuilder> {
  @BuiltValueField(wireName: r't')
  DateTime get t;

  @BuiltValueField(wireName: r'total')
  int get total;

  /// Per kind or source when groupBy is set
  @BuiltValueField(wireName: r'counts')
  BuiltMap<String, int>? get counts;

  TimelineBucket._();

  factory TimelineBucket([void updates(TimelineBucketBuilder b)]) =
      _$TimelineBucket;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimelineBucketBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimelineBucket> get serializer =>
      _$TimelineBucketSerializer();
}

class _$TimelineBucketSerializer
    implements PrimitiveSerializer<TimelineBucket> {
  @override
  final Iterable<Type> types = const [TimelineBucket, _$TimelineBucket];

  @override
  final String wireName = r'TimelineBucket';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimelineBucket object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r't';
    yield serializers.serialize(
      object.t,
      specifiedType: const FullType(DateTime),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    if (object.counts != null) {
      yield r'counts';
      yield serializers.serialize(
        object.counts,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(int),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimelineBucket object, {
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
    required TimelineBucketBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r't':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.t = valueDes;
          break;
        case r'total':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.total = valueDes;
          break;
        case r'counts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(int),
                    ]),
                  )
                  as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.counts.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimelineBucket deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimelineBucketBuilder();
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

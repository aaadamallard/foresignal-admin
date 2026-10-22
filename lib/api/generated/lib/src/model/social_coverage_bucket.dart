//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_coverage_bucket.g.dart';

/// One hour of collection coverage
///
/// Properties:
/// * [hour]
/// * [postsSeen] - Posts attributed to the region (platform geo, 136 text-derived places)
/// * [denominator] - All posts seen on complete streams for the platform
/// * [complete] - Complete-stream collection was healthy for the whole hour
@BuiltValue()
abstract class SocialCoverageBucket
    implements Built<SocialCoverageBucket, SocialCoverageBucketBuilder> {
  @BuiltValueField(wireName: r'hour')
  DateTime get hour;

  /// Posts attributed to the region (platform geo, 136 text-derived places)
  @BuiltValueField(wireName: r'postsSeen')
  int get postsSeen;

  /// All posts seen on complete streams for the platform
  @BuiltValueField(wireName: r'denominator')
  int? get denominator;

  /// Complete-stream collection was healthy for the whole hour
  @BuiltValueField(wireName: r'complete')
  bool get complete;

  SocialCoverageBucket._();

  factory SocialCoverageBucket([void updates(SocialCoverageBucketBuilder b)]) =
      _$SocialCoverageBucket;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialCoverageBucketBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialCoverageBucket> get serializer =>
      _$SocialCoverageBucketSerializer();
}

class _$SocialCoverageBucketSerializer
    implements PrimitiveSerializer<SocialCoverageBucket> {
  @override
  final Iterable<Type> types = const [
    SocialCoverageBucket,
    _$SocialCoverageBucket,
  ];

  @override
  final String wireName = r'SocialCoverageBucket';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialCoverageBucket object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'hour';
    yield serializers.serialize(
      object.hour,
      specifiedType: const FullType(DateTime),
    );
    yield r'postsSeen';
    yield serializers.serialize(
      object.postsSeen,
      specifiedType: const FullType(int),
    );
    if (object.denominator != null) {
      yield r'denominator';
      yield serializers.serialize(
        object.denominator,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'complete';
    yield serializers.serialize(
      object.complete,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialCoverageBucket object, {
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
    required SocialCoverageBucketBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hour':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.hour = valueDes;
          break;
        case r'postsSeen':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.postsSeen = valueDes;
          break;
        case r'denominator':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.denominator = valueDes;
          break;
        case r'complete':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.complete = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialCoverageBucket deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialCoverageBucketBuilder();
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

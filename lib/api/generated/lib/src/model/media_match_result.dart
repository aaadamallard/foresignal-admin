//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/media_match_result_query.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/media_match.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_match_result.g.dart';

/// Matches with first-seen dates and narratives; Foresignal only knows media it has fingerprinted (REFERENCE_WINDOW caveat)
///
/// Properties:
/// * [query]
/// * [maxDistance]
/// * [matches]
/// * [referenceWindowStart] - Start of the fingerprint store
/// * [caveats]
@BuiltValue()
abstract class MediaMatchResult
    implements Built<MediaMatchResult, MediaMatchResultBuilder> {
  @BuiltValueField(wireName: r'query')
  MediaMatchResultQuery get query;

  @BuiltValueField(wireName: r'maxDistance')
  int get maxDistance;

  @BuiltValueField(wireName: r'matches')
  BuiltList<MediaMatch> get matches;

  /// Start of the fingerprint store
  @BuiltValueField(wireName: r'referenceWindowStart')
  DateTime? get referenceWindowStart;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat> get caveats;

  MediaMatchResult._();

  factory MediaMatchResult([void updates(MediaMatchResultBuilder b)]) =
      _$MediaMatchResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaMatchResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaMatchResult> get serializer =>
      _$MediaMatchResultSerializer();
}

class _$MediaMatchResultSerializer
    implements PrimitiveSerializer<MediaMatchResult> {
  @override
  final Iterable<Type> types = const [MediaMatchResult, _$MediaMatchResult];

  @override
  final String wireName = r'MediaMatchResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaMatchResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'query';
    yield serializers.serialize(
      object.query,
      specifiedType: const FullType(MediaMatchResultQuery),
    );
    yield r'maxDistance';
    yield serializers.serialize(
      object.maxDistance,
      specifiedType: const FullType(int),
    );
    yield r'matches';
    yield serializers.serialize(
      object.matches,
      specifiedType: const FullType(BuiltList, [FullType(MediaMatch)]),
    );
    if (object.referenceWindowStart != null) {
      yield r'referenceWindowStart';
      yield serializers.serialize(
        object.referenceWindowStart,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'caveats';
    yield serializers.serialize(
      object.caveats,
      specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaMatchResult object, {
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
    required MediaMatchResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'query':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(MediaMatchResultQuery),
                  )
                  as MediaMatchResultQuery;
          result.query.replace(valueDes);
          break;
        case r'maxDistance':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.maxDistance = valueDes;
          break;
        case r'matches':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(MediaMatch),
                    ]),
                  )
                  as BuiltList<MediaMatch>;
          result.matches.replace(valueDes);
          break;
        case r'referenceWindowStart':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.referenceWindowStart = valueDes;
          break;
        case r'caveats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(Caveat),
                    ]),
                  )
                  as BuiltList<Caveat>;
          result.caveats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MediaMatchResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaMatchResultBuilder();
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

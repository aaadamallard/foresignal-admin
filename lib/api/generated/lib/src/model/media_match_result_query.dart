//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_match_result_query.g.dart';

/// The query hash
///
/// Properties:
/// * [pdq] - 256-bit PDQ hash, hex
/// * [quality]
/// * [source_]
@BuiltValue()
abstract class MediaMatchResultQuery
    implements Built<MediaMatchResultQuery, MediaMatchResultQueryBuilder> {
  /// 256-bit PDQ hash, hex
  @BuiltValueField(wireName: r'pdq')
  String get pdq;

  @BuiltValueField(wireName: r'quality')
  int? get quality;

  @BuiltValueField(wireName: r'source')
  MediaMatchResultQuerySource_Enum get source_;
  // enum source_Enum {  upload,  pdq,  };

  MediaMatchResultQuery._();

  factory MediaMatchResultQuery([
    void updates(MediaMatchResultQueryBuilder b),
  ]) = _$MediaMatchResultQuery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaMatchResultQueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaMatchResultQuery> get serializer =>
      _$MediaMatchResultQuerySerializer();
}

class _$MediaMatchResultQuerySerializer
    implements PrimitiveSerializer<MediaMatchResultQuery> {
  @override
  final Iterable<Type> types = const [
    MediaMatchResultQuery,
    _$MediaMatchResultQuery,
  ];

  @override
  final String wireName = r'MediaMatchResultQuery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaMatchResultQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'pdq';
    yield serializers.serialize(
      object.pdq,
      specifiedType: const FullType(String),
    );
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(MediaMatchResultQuerySource_Enum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaMatchResultQuery object, {
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
    required MediaMatchResultQueryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pdq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.pdq = valueDes;
          break;
        case r'quality':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.quality = valueDes;
          break;
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      MediaMatchResultQuerySource_Enum,
                    ),
                  )
                  as MediaMatchResultQuerySource_Enum;
          result.source_ = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MediaMatchResultQuery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaMatchResultQueryBuilder();
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

class MediaMatchResultQuerySource_Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'upload')
  static const MediaMatchResultQuerySource_Enum upload =
      _$mediaMatchResultQuerySourceEnum_upload;
  @BuiltValueEnumConst(wireName: r'pdq')
  static const MediaMatchResultQuerySource_Enum pdq =
      _$mediaMatchResultQuerySourceEnum_pdq;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MediaMatchResultQuerySource_Enum unknownDefaultOpenApi =
      _$mediaMatchResultQuerySourceEnum_unknownDefaultOpenApi;

  static Serializer<MediaMatchResultQuerySource_Enum> get serializer =>
      _$mediaMatchResultQuerySourceEnumSerializer;

  const MediaMatchResultQuerySource_Enum._(String name) : super(name);

  static BuiltSet<MediaMatchResultQuerySource_Enum> get values =>
      _$mediaMatchResultQuerySourceEnumValues;
  static MediaMatchResultQuerySource_Enum valueOf(String name) =>
      _$mediaMatchResultQuerySourceEnumValueOf(name);
}

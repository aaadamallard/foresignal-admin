//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'briefing_input_audio.g.dart';

/// Synthesize the plain-text rendition with the 026 `tts` role after each run (141): at most 4,000 characters per request; longer text is split at paragraph or sentence boundaries and the MP3 parts concatenated (at most 25 requests), while `opus` is truncated to one request with a spoken note. A synthesis failure never blocks the text delivery.
///
/// Properties:
/// * [voice] - The provider's voice, for example `alloy` (OpenAI) or `af_bella` (Kokoro)
/// * [format]
@BuiltValue()
abstract class BriefingInputAudio
    implements Built<BriefingInputAudio, BriefingInputAudioBuilder> {
  /// The provider's voice, for example `alloy` (OpenAI) or `af_bella` (Kokoro)
  @BuiltValueField(wireName: r'voice')
  String get voice;

  @BuiltValueField(wireName: r'format')
  BriefingInputAudioFormatEnum? get format;
  // enum formatEnum {  mp3,  opus,  };

  BriefingInputAudio._();

  factory BriefingInputAudio([void updates(BriefingInputAudioBuilder b)]) =
      _$BriefingInputAudio;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BriefingInputAudioBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BriefingInputAudio> get serializer =>
      _$BriefingInputAudioSerializer();
}

class _$BriefingInputAudioSerializer
    implements PrimitiveSerializer<BriefingInputAudio> {
  @override
  final Iterable<Type> types = const [BriefingInputAudio, _$BriefingInputAudio];

  @override
  final String wireName = r'BriefingInputAudio';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BriefingInputAudio object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'voice';
    yield serializers.serialize(
      object.voice,
      specifiedType: const FullType(String),
    );
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(BriefingInputAudioFormatEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BriefingInputAudio object, {
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
    required BriefingInputAudioBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'voice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.voice = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BriefingInputAudioFormatEnum),
          ) as BriefingInputAudioFormatEnum?;
          if (valueDes == null) continue;
          result.format = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BriefingInputAudio deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BriefingInputAudioBuilder();
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

class BriefingInputAudioFormatEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'mp3')
  static const BriefingInputAudioFormatEnum mp3 =
      _$briefingInputAudioFormatEnum_mp3;
  @BuiltValueEnumConst(wireName: r'opus')
  static const BriefingInputAudioFormatEnum opus =
      _$briefingInputAudioFormatEnum_opus;

  static Serializer<BriefingInputAudioFormatEnum> get serializer =>
      _$briefingInputAudioFormatEnumSerializer;

  const BriefingInputAudioFormatEnum._(String name) : super(name);

  static BuiltSet<BriefingInputAudioFormatEnum> get values =>
      _$briefingInputAudioFormatEnumValues;
  static BriefingInputAudioFormatEnum valueOf(String name) =>
      _$briefingInputAudioFormatEnumValueOf(name);
}

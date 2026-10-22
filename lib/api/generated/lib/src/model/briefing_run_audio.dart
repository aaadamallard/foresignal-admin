//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'briefing_run_audio.g.dart';

/// Synthesized audio of the run (141); null when the briefing has no `audio` option
///
/// Properties:
/// * [status] - `ok` stored; `failed` provider, budget or storage failure (the text was delivered anyway); `skipped` no `tts` provider or no text
/// * [mediaId] - 043 media (role `audio`), signed with 109
/// * [format]
/// * [voice]
/// * [characters] - Characters synthesized (the `tts` budget unit)
/// * [truncated] - True when the text was cut to fit (always for long `opus`; MP3 beyond 25 requests)
/// * [error]
/// * [bytes] - Size of the stored audio
/// * [contentType] - Media type of the stored audio
/// * [signature] - Detached JWS (`header..signature`, Ed25519, b64:false, `typ` the audio media type) over the audio bytes; verify against /.well-known/jwks.json (109)
@BuiltValue()
abstract class BriefingRunAudio
    implements Built<BriefingRunAudio, BriefingRunAudioBuilder> {
  /// `ok` stored; `failed` provider, budget or storage failure (the text was delivered anyway); `skipped` no `tts` provider or no text
  @BuiltValueField(wireName: r'status')
  BriefingRunAudioStatusEnum get status;
  // enum statusEnum {  ok,  failed,  skipped,  };

  /// 043 media (role `audio`), signed with 109
  @BuiltValueField(wireName: r'mediaId')
  String? get mediaId;

  @BuiltValueField(wireName: r'format')
  BriefingRunAudioFormatEnum? get format;
  // enum formatEnum {  mp3,  opus,  };

  @BuiltValueField(wireName: r'voice')
  String? get voice;

  /// Characters synthesized (the `tts` budget unit)
  @BuiltValueField(wireName: r'characters')
  int? get characters;

  /// True when the text was cut to fit (always for long `opus`; MP3 beyond 25 requests)
  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  @BuiltValueField(wireName: r'error')
  String? get error;

  /// Size of the stored audio
  @BuiltValueField(wireName: r'bytes')
  int? get bytes;

  /// Media type of the stored audio
  @BuiltValueField(wireName: r'contentType')
  String? get contentType;

  /// Detached JWS (`header..signature`, Ed25519, b64:false, `typ` the audio media type) over the audio bytes; verify against /.well-known/jwks.json (109)
  @BuiltValueField(wireName: r'signature')
  String? get signature;

  BriefingRunAudio._();

  factory BriefingRunAudio([void updates(BriefingRunAudioBuilder b)]) =
      _$BriefingRunAudio;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BriefingRunAudioBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BriefingRunAudio> get serializer =>
      _$BriefingRunAudioSerializer();
}

class _$BriefingRunAudioSerializer
    implements PrimitiveSerializer<BriefingRunAudio> {
  @override
  final Iterable<Type> types = const [BriefingRunAudio, _$BriefingRunAudio];

  @override
  final String wireName = r'BriefingRunAudio';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BriefingRunAudio object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(BriefingRunAudioStatusEnum),
    );
    if (object.mediaId != null) {
      yield r'mediaId';
      yield serializers.serialize(
        object.mediaId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType.nullable(BriefingRunAudioFormatEnum),
      );
    }
    if (object.voice != null) {
      yield r'voice';
      yield serializers.serialize(
        object.voice,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.characters != null) {
      yield r'characters';
      yield serializers.serialize(
        object.characters,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bytes != null) {
      yield r'bytes';
      yield serializers.serialize(
        object.bytes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.contentType != null) {
      yield r'contentType';
      yield serializers.serialize(
        object.contentType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.signature != null) {
      yield r'signature';
      yield serializers.serialize(
        object.signature,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BriefingRunAudio object, {
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
    required BriefingRunAudioBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BriefingRunAudioStatusEnum),
          ) as BriefingRunAudioStatusEnum;
          result.status = valueDes;
          break;
        case r'mediaId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mediaId = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BriefingRunAudioFormatEnum),
          ) as BriefingRunAudioFormatEnum?;
          if (valueDes == null) continue;
          result.format = valueDes;
          break;
        case r'voice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.voice = valueDes;
          break;
        case r'characters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.characters = valueDes;
          break;
        case r'truncated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.truncated = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bytes = valueDes;
          break;
        case r'contentType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contentType = valueDes;
          break;
        case r'signature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.signature = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BriefingRunAudio deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BriefingRunAudioBuilder();
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

/// `ok` stored; `failed` provider, budget or storage failure (the text was delivered anyway); `skipped` no `tts` provider or no text
class BriefingRunAudioStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const BriefingRunAudioStatusEnum ok = _$briefingRunAudioStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'failed')
  static const BriefingRunAudioStatusEnum failed =
      _$briefingRunAudioStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'skipped')
  static const BriefingRunAudioStatusEnum skipped =
      _$briefingRunAudioStatusEnum_skipped;

  static Serializer<BriefingRunAudioStatusEnum> get serializer =>
      _$briefingRunAudioStatusEnumSerializer;

  const BriefingRunAudioStatusEnum._(String name) : super(name);

  static BuiltSet<BriefingRunAudioStatusEnum> get values =>
      _$briefingRunAudioStatusEnumValues;
  static BriefingRunAudioStatusEnum valueOf(String name) =>
      _$briefingRunAudioStatusEnumValueOf(name);
}

class BriefingRunAudioFormatEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'mp3')
  static const BriefingRunAudioFormatEnum mp3 =
      _$briefingRunAudioFormatEnum_mp3;
  @BuiltValueEnumConst(wireName: r'opus')
  static const BriefingRunAudioFormatEnum opus =
      _$briefingRunAudioFormatEnum_opus;

  static Serializer<BriefingRunAudioFormatEnum> get serializer =>
      _$briefingRunAudioFormatEnumSerializer;

  const BriefingRunAudioFormatEnum._(String name) : super(name);

  static BuiltSet<BriefingRunAudioFormatEnum> get values =>
      _$briefingRunAudioFormatEnumValues;
  static BriefingRunAudioFormatEnum valueOf(String name) =>
      _$briefingRunAudioFormatEnumValueOf(name);
}

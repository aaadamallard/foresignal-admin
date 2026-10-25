// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'briefing_run_audio.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BriefingRunAudioStatusEnum _$briefingRunAudioStatusEnum_ok =
    const BriefingRunAudioStatusEnum._('ok');
const BriefingRunAudioStatusEnum _$briefingRunAudioStatusEnum_failed =
    const BriefingRunAudioStatusEnum._('failed');
const BriefingRunAudioStatusEnum _$briefingRunAudioStatusEnum_skipped =
    const BriefingRunAudioStatusEnum._('skipped');
const BriefingRunAudioStatusEnum
_$briefingRunAudioStatusEnum_unknownDefaultOpenApi =
    const BriefingRunAudioStatusEnum._('unknownDefaultOpenApi');

BriefingRunAudioStatusEnum _$briefingRunAudioStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$briefingRunAudioStatusEnum_ok;
    case 'failed':
      return _$briefingRunAudioStatusEnum_failed;
    case 'skipped':
      return _$briefingRunAudioStatusEnum_skipped;
    case 'unknownDefaultOpenApi':
      return _$briefingRunAudioStatusEnum_unknownDefaultOpenApi;
    default:
      return _$briefingRunAudioStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BriefingRunAudioStatusEnum> _$briefingRunAudioStatusEnumValues =
    BuiltSet<BriefingRunAudioStatusEnum>(const <BriefingRunAudioStatusEnum>[
      _$briefingRunAudioStatusEnum_ok,
      _$briefingRunAudioStatusEnum_failed,
      _$briefingRunAudioStatusEnum_skipped,
      _$briefingRunAudioStatusEnum_unknownDefaultOpenApi,
    ]);

const BriefingRunAudioFormatEnum _$briefingRunAudioFormatEnum_mp3 =
    const BriefingRunAudioFormatEnum._('mp3');
const BriefingRunAudioFormatEnum _$briefingRunAudioFormatEnum_opus =
    const BriefingRunAudioFormatEnum._('opus');
const BriefingRunAudioFormatEnum
_$briefingRunAudioFormatEnum_unknownDefaultOpenApi =
    const BriefingRunAudioFormatEnum._('unknownDefaultOpenApi');

BriefingRunAudioFormatEnum _$briefingRunAudioFormatEnumValueOf(String name) {
  switch (name) {
    case 'mp3':
      return _$briefingRunAudioFormatEnum_mp3;
    case 'opus':
      return _$briefingRunAudioFormatEnum_opus;
    case 'unknownDefaultOpenApi':
      return _$briefingRunAudioFormatEnum_unknownDefaultOpenApi;
    default:
      return _$briefingRunAudioFormatEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BriefingRunAudioFormatEnum> _$briefingRunAudioFormatEnumValues =
    BuiltSet<BriefingRunAudioFormatEnum>(const <BriefingRunAudioFormatEnum>[
      _$briefingRunAudioFormatEnum_mp3,
      _$briefingRunAudioFormatEnum_opus,
      _$briefingRunAudioFormatEnum_unknownDefaultOpenApi,
    ]);

Serializer<BriefingRunAudioStatusEnum> _$briefingRunAudioStatusEnumSerializer =
    _$BriefingRunAudioStatusEnumSerializer();
Serializer<BriefingRunAudioFormatEnum> _$briefingRunAudioFormatEnumSerializer =
    _$BriefingRunAudioFormatEnumSerializer();

class _$BriefingRunAudioStatusEnumSerializer
    implements PrimitiveSerializer<BriefingRunAudioStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'failed': 'failed',
    'skipped': 'skipped',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'failed': 'failed',
    'skipped': 'skipped',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BriefingRunAudioStatusEnum];
  @override
  final String wireName = 'BriefingRunAudioStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    BriefingRunAudioStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BriefingRunAudioStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BriefingRunAudioStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BriefingRunAudioFormatEnumSerializer
    implements PrimitiveSerializer<BriefingRunAudioFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mp3': 'mp3',
    'opus': 'opus',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'mp3': 'mp3',
    'opus': 'opus',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BriefingRunAudioFormatEnum];
  @override
  final String wireName = 'BriefingRunAudioFormatEnum';

  @override
  Object serialize(
    Serializers serializers,
    BriefingRunAudioFormatEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BriefingRunAudioFormatEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BriefingRunAudioFormatEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BriefingRunAudio extends BriefingRunAudio {
  @override
  final BriefingRunAudioStatusEnum status;
  @override
  final String? mediaId;
  @override
  final BriefingRunAudioFormatEnum? format;
  @override
  final String? voice;
  @override
  final int? characters;
  @override
  final bool? truncated;
  @override
  final String? error;
  @override
  final int? bytes;
  @override
  final String? contentType;
  @override
  final String? signature;

  factory _$BriefingRunAudio([
    void Function(BriefingRunAudioBuilder)? updates,
  ]) => (BriefingRunAudioBuilder()..update(updates))._build();

  _$BriefingRunAudio._({
    required this.status,
    this.mediaId,
    this.format,
    this.voice,
    this.characters,
    this.truncated,
    this.error,
    this.bytes,
    this.contentType,
    this.signature,
  }) : super._();
  @override
  BriefingRunAudio rebuild(void Function(BriefingRunAudioBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BriefingRunAudioBuilder toBuilder() =>
      BriefingRunAudioBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BriefingRunAudio &&
        status == other.status &&
        mediaId == other.mediaId &&
        format == other.format &&
        voice == other.voice &&
        characters == other.characters &&
        truncated == other.truncated &&
        error == other.error &&
        bytes == other.bytes &&
        contentType == other.contentType &&
        signature == other.signature;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, voice.hashCode);
    _$hash = $jc(_$hash, characters.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, signature.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BriefingRunAudio')
          ..add('status', status)
          ..add('mediaId', mediaId)
          ..add('format', format)
          ..add('voice', voice)
          ..add('characters', characters)
          ..add('truncated', truncated)
          ..add('error', error)
          ..add('bytes', bytes)
          ..add('contentType', contentType)
          ..add('signature', signature))
        .toString();
  }
}

class BriefingRunAudioBuilder
    implements Builder<BriefingRunAudio, BriefingRunAudioBuilder> {
  _$BriefingRunAudio? _$v;

  BriefingRunAudioStatusEnum? _status;
  BriefingRunAudioStatusEnum? get status => _$this._status;
  set status(BriefingRunAudioStatusEnum? status) => _$this._status = status;

  String? _mediaId;
  String? get mediaId => _$this._mediaId;
  set mediaId(String? mediaId) => _$this._mediaId = mediaId;

  BriefingRunAudioFormatEnum? _format;
  BriefingRunAudioFormatEnum? get format => _$this._format;
  set format(BriefingRunAudioFormatEnum? format) => _$this._format = format;

  String? _voice;
  String? get voice => _$this._voice;
  set voice(String? voice) => _$this._voice = voice;

  int? _characters;
  int? get characters => _$this._characters;
  set characters(int? characters) => _$this._characters = characters;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  String? _signature;
  String? get signature => _$this._signature;
  set signature(String? signature) => _$this._signature = signature;

  BriefingRunAudioBuilder() {
    BriefingRunAudio._defaults(this);
  }

  BriefingRunAudioBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _mediaId = $v.mediaId;
      _format = $v.format;
      _voice = $v.voice;
      _characters = $v.characters;
      _truncated = $v.truncated;
      _error = $v.error;
      _bytes = $v.bytes;
      _contentType = $v.contentType;
      _signature = $v.signature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BriefingRunAudio other) {
    _$v = other as _$BriefingRunAudio;
  }

  @override
  void update(void Function(BriefingRunAudioBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BriefingRunAudio build() => _build();

  _$BriefingRunAudio _build() {
    final _$result =
        _$v ??
        _$BriefingRunAudio._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'BriefingRunAudio',
            'status',
          ),
          mediaId: mediaId,
          format: format,
          voice: voice,
          characters: characters,
          truncated: truncated,
          error: error,
          bytes: bytes,
          contentType: contentType,
          signature: signature,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

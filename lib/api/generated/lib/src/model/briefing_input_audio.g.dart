// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'briefing_input_audio.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BriefingInputAudioFormatEnum _$briefingInputAudioFormatEnum_mp3 =
    const BriefingInputAudioFormatEnum._('mp3');
const BriefingInputAudioFormatEnum _$briefingInputAudioFormatEnum_opus =
    const BriefingInputAudioFormatEnum._('opus');

BriefingInputAudioFormatEnum _$briefingInputAudioFormatEnumValueOf(
    String name) {
  switch (name) {
    case 'mp3':
      return _$briefingInputAudioFormatEnum_mp3;
    case 'opus':
      return _$briefingInputAudioFormatEnum_opus;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BriefingInputAudioFormatEnum>
    _$briefingInputAudioFormatEnumValues =
    BuiltSet<BriefingInputAudioFormatEnum>(const <BriefingInputAudioFormatEnum>[
  _$briefingInputAudioFormatEnum_mp3,
  _$briefingInputAudioFormatEnum_opus,
]);

Serializer<BriefingInputAudioFormatEnum>
    _$briefingInputAudioFormatEnumSerializer =
    _$BriefingInputAudioFormatEnumSerializer();

class _$BriefingInputAudioFormatEnumSerializer
    implements PrimitiveSerializer<BriefingInputAudioFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mp3': 'mp3',
    'opus': 'opus',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'mp3': 'mp3',
    'opus': 'opus',
  };

  @override
  final Iterable<Type> types = const <Type>[BriefingInputAudioFormatEnum];
  @override
  final String wireName = 'BriefingInputAudioFormatEnum';

  @override
  Object serialize(Serializers serializers, BriefingInputAudioFormatEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BriefingInputAudioFormatEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BriefingInputAudioFormatEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$BriefingInputAudio extends BriefingInputAudio {
  @override
  final String voice;
  @override
  final BriefingInputAudioFormatEnum? format;

  factory _$BriefingInputAudio(
          [void Function(BriefingInputAudioBuilder)? updates]) =>
      (BriefingInputAudioBuilder()..update(updates))._build();

  _$BriefingInputAudio._({required this.voice, this.format}) : super._();
  @override
  BriefingInputAudio rebuild(
          void Function(BriefingInputAudioBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BriefingInputAudioBuilder toBuilder() =>
      BriefingInputAudioBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BriefingInputAudio &&
        voice == other.voice &&
        format == other.format;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, voice.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BriefingInputAudio')
          ..add('voice', voice)
          ..add('format', format))
        .toString();
  }
}

class BriefingInputAudioBuilder
    implements Builder<BriefingInputAudio, BriefingInputAudioBuilder> {
  _$BriefingInputAudio? _$v;

  String? _voice;
  String? get voice => _$this._voice;
  set voice(String? voice) => _$this._voice = voice;

  BriefingInputAudioFormatEnum? _format;
  BriefingInputAudioFormatEnum? get format => _$this._format;
  set format(BriefingInputAudioFormatEnum? format) => _$this._format = format;

  BriefingInputAudioBuilder() {
    BriefingInputAudio._defaults(this);
  }

  BriefingInputAudioBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _voice = $v.voice;
      _format = $v.format;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BriefingInputAudio other) {
    _$v = other as _$BriefingInputAudio;
  }

  @override
  void update(void Function(BriefingInputAudioBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BriefingInputAudio build() => _build();

  _$BriefingInputAudio _build() {
    final _$result = _$v ??
        _$BriefingInputAudio._(
          voice: BuiltValueNullFieldError.checkNotNull(
              voice, r'BriefingInputAudio', 'voice'),
          format: format,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

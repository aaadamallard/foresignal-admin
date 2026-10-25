// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_post_media.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialPostMediaTypeEnum _$socialPostMediaTypeEnum_image =
    const SocialPostMediaTypeEnum._('image');
const SocialPostMediaTypeEnum _$socialPostMediaTypeEnum_video =
    const SocialPostMediaTypeEnum._('video');
const SocialPostMediaTypeEnum _$socialPostMediaTypeEnum_gif =
    const SocialPostMediaTypeEnum._('gif');
const SocialPostMediaTypeEnum _$socialPostMediaTypeEnum_audio =
    const SocialPostMediaTypeEnum._('audio');
const SocialPostMediaTypeEnum _$socialPostMediaTypeEnum_linkCard =
    const SocialPostMediaTypeEnum._('linkCard');
const SocialPostMediaTypeEnum _$socialPostMediaTypeEnum_other =
    const SocialPostMediaTypeEnum._('other');
const SocialPostMediaTypeEnum _$socialPostMediaTypeEnum_unknownDefaultOpenApi =
    const SocialPostMediaTypeEnum._('unknownDefaultOpenApi');

SocialPostMediaTypeEnum _$socialPostMediaTypeEnumValueOf(String name) {
  switch (name) {
    case 'image':
      return _$socialPostMediaTypeEnum_image;
    case 'video':
      return _$socialPostMediaTypeEnum_video;
    case 'gif':
      return _$socialPostMediaTypeEnum_gif;
    case 'audio':
      return _$socialPostMediaTypeEnum_audio;
    case 'linkCard':
      return _$socialPostMediaTypeEnum_linkCard;
    case 'other':
      return _$socialPostMediaTypeEnum_other;
    case 'unknownDefaultOpenApi':
      return _$socialPostMediaTypeEnum_unknownDefaultOpenApi;
    default:
      return _$socialPostMediaTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SocialPostMediaTypeEnum> _$socialPostMediaTypeEnumValues =
    BuiltSet<SocialPostMediaTypeEnum>(const <SocialPostMediaTypeEnum>[
      _$socialPostMediaTypeEnum_image,
      _$socialPostMediaTypeEnum_video,
      _$socialPostMediaTypeEnum_gif,
      _$socialPostMediaTypeEnum_audio,
      _$socialPostMediaTypeEnum_linkCard,
      _$socialPostMediaTypeEnum_other,
      _$socialPostMediaTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<SocialPostMediaTypeEnum> _$socialPostMediaTypeEnumSerializer =
    _$SocialPostMediaTypeEnumSerializer();

class _$SocialPostMediaTypeEnumSerializer
    implements PrimitiveSerializer<SocialPostMediaTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'image': 'image',
    'video': 'video',
    'gif': 'gif',
    'audio': 'audio',
    'linkCard': 'link-card',
    'other': 'other',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'image': 'image',
    'video': 'video',
    'gif': 'gif',
    'audio': 'audio',
    'link-card': 'linkCard',
    'other': 'other',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialPostMediaTypeEnum];
  @override
  final String wireName = 'SocialPostMediaTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialPostMediaTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialPostMediaTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialPostMediaTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialPostMedia extends SocialPostMedia {
  @override
  final SocialPostMediaTypeEnum type;
  @override
  final String url;
  @override
  final String? thumbUrl;
  @override
  final String? altText;
  @override
  final String? fingerprintId;

  factory _$SocialPostMedia([void Function(SocialPostMediaBuilder)? updates]) =>
      (SocialPostMediaBuilder()..update(updates))._build();

  _$SocialPostMedia._({
    required this.type,
    required this.url,
    this.thumbUrl,
    this.altText,
    this.fingerprintId,
  }) : super._();
  @override
  SocialPostMedia rebuild(void Function(SocialPostMediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialPostMediaBuilder toBuilder() => SocialPostMediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialPostMedia &&
        type == other.type &&
        url == other.url &&
        thumbUrl == other.thumbUrl &&
        altText == other.altText &&
        fingerprintId == other.fingerprintId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, thumbUrl.hashCode);
    _$hash = $jc(_$hash, altText.hashCode);
    _$hash = $jc(_$hash, fingerprintId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialPostMedia')
          ..add('type', type)
          ..add('url', url)
          ..add('thumbUrl', thumbUrl)
          ..add('altText', altText)
          ..add('fingerprintId', fingerprintId))
        .toString();
  }
}

class SocialPostMediaBuilder
    implements Builder<SocialPostMedia, SocialPostMediaBuilder> {
  _$SocialPostMedia? _$v;

  SocialPostMediaTypeEnum? _type;
  SocialPostMediaTypeEnum? get type => _$this._type;
  set type(SocialPostMediaTypeEnum? type) => _$this._type = type;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _thumbUrl;
  String? get thumbUrl => _$this._thumbUrl;
  set thumbUrl(String? thumbUrl) => _$this._thumbUrl = thumbUrl;

  String? _altText;
  String? get altText => _$this._altText;
  set altText(String? altText) => _$this._altText = altText;

  String? _fingerprintId;
  String? get fingerprintId => _$this._fingerprintId;
  set fingerprintId(String? fingerprintId) =>
      _$this._fingerprintId = fingerprintId;

  SocialPostMediaBuilder() {
    SocialPostMedia._defaults(this);
  }

  SocialPostMediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _url = $v.url;
      _thumbUrl = $v.thumbUrl;
      _altText = $v.altText;
      _fingerprintId = $v.fingerprintId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialPostMedia other) {
    _$v = other as _$SocialPostMedia;
  }

  @override
  void update(void Function(SocialPostMediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialPostMedia build() => _build();

  _$SocialPostMedia _build() {
    final _$result =
        _$v ??
        _$SocialPostMedia._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'SocialPostMedia',
            'type',
          ),
          url: BuiltValueNullFieldError.checkNotNull(
            url,
            r'SocialPostMedia',
            'url',
          ),
          thumbUrl: thumbUrl,
          altText: altText,
          fingerprintId: fingerprintId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

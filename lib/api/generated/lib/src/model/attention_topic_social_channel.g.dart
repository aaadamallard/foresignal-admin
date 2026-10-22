// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attention_topic_social_channel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AttentionTopicSocialChannelTypeEnum
_$attentionTopicSocialChannelTypeEnum_subreddit =
    const AttentionTopicSocialChannelTypeEnum._('subreddit');
const AttentionTopicSocialChannelTypeEnum
_$attentionTopicSocialChannelTypeEnum_mastodonInstance =
    const AttentionTopicSocialChannelTypeEnum._('mastodonInstance');
const AttentionTopicSocialChannelTypeEnum
_$attentionTopicSocialChannelTypeEnum_mastodonHashtag =
    const AttentionTopicSocialChannelTypeEnum._('mastodonHashtag');
const AttentionTopicSocialChannelTypeEnum
_$attentionTopicSocialChannelTypeEnum_youtubeChannel =
    const AttentionTopicSocialChannelTypeEnum._('youtubeChannel');

AttentionTopicSocialChannelTypeEnum
_$attentionTopicSocialChannelTypeEnumValueOf(String name) {
  switch (name) {
    case 'subreddit':
      return _$attentionTopicSocialChannelTypeEnum_subreddit;
    case 'mastodonInstance':
      return _$attentionTopicSocialChannelTypeEnum_mastodonInstance;
    case 'mastodonHashtag':
      return _$attentionTopicSocialChannelTypeEnum_mastodonHashtag;
    case 'youtubeChannel':
      return _$attentionTopicSocialChannelTypeEnum_youtubeChannel;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AttentionTopicSocialChannelTypeEnum>
_$attentionTopicSocialChannelTypeEnumValues =
    BuiltSet<AttentionTopicSocialChannelTypeEnum>(
      const <AttentionTopicSocialChannelTypeEnum>[
        _$attentionTopicSocialChannelTypeEnum_subreddit,
        _$attentionTopicSocialChannelTypeEnum_mastodonInstance,
        _$attentionTopicSocialChannelTypeEnum_mastodonHashtag,
        _$attentionTopicSocialChannelTypeEnum_youtubeChannel,
      ],
    );

Serializer<AttentionTopicSocialChannelTypeEnum>
_$attentionTopicSocialChannelTypeEnumSerializer =
    _$AttentionTopicSocialChannelTypeEnumSerializer();

class _$AttentionTopicSocialChannelTypeEnumSerializer
    implements PrimitiveSerializer<AttentionTopicSocialChannelTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'subreddit': 'subreddit',
    'mastodonInstance': 'mastodon-instance',
    'mastodonHashtag': 'mastodon-hashtag',
    'youtubeChannel': 'youtube-channel',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'subreddit': 'subreddit',
    'mastodon-instance': 'mastodonInstance',
    'mastodon-hashtag': 'mastodonHashtag',
    'youtube-channel': 'youtubeChannel',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AttentionTopicSocialChannelTypeEnum,
  ];
  @override
  final String wireName = 'AttentionTopicSocialChannelTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    AttentionTopicSocialChannelTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AttentionTopicSocialChannelTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AttentionTopicSocialChannelTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AttentionTopicSocialChannel extends AttentionTopicSocialChannel {
  @override
  final String platform;
  @override
  final AttentionTopicSocialChannelTypeEnum type;
  @override
  final String id;

  factory _$AttentionTopicSocialChannel([
    void Function(AttentionTopicSocialChannelBuilder)? updates,
  ]) => (AttentionTopicSocialChannelBuilder()..update(updates))._build();

  _$AttentionTopicSocialChannel._({
    required this.platform,
    required this.type,
    required this.id,
  }) : super._();
  @override
  AttentionTopicSocialChannel rebuild(
    void Function(AttentionTopicSocialChannelBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AttentionTopicSocialChannelBuilder toBuilder() =>
      AttentionTopicSocialChannelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttentionTopicSocialChannel &&
        platform == other.platform &&
        type == other.type &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttentionTopicSocialChannel')
          ..add('platform', platform)
          ..add('type', type)
          ..add('id', id))
        .toString();
  }
}

class AttentionTopicSocialChannelBuilder
    implements
        Builder<
          AttentionTopicSocialChannel,
          AttentionTopicSocialChannelBuilder
        > {
  _$AttentionTopicSocialChannel? _$v;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  AttentionTopicSocialChannelTypeEnum? _type;
  AttentionTopicSocialChannelTypeEnum? get type => _$this._type;
  set type(AttentionTopicSocialChannelTypeEnum? type) => _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AttentionTopicSocialChannelBuilder() {
    AttentionTopicSocialChannel._defaults(this);
  }

  AttentionTopicSocialChannelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platform = $v.platform;
      _type = $v.type;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttentionTopicSocialChannel other) {
    _$v = other as _$AttentionTopicSocialChannel;
  }

  @override
  void update(void Function(AttentionTopicSocialChannelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttentionTopicSocialChannel build() => _build();

  _$AttentionTopicSocialChannel _build() {
    final _$result =
        _$v ??
        _$AttentionTopicSocialChannel._(
          platform: BuiltValueNullFieldError.checkNotNull(
            platform,
            r'AttentionTopicSocialChannel',
            'platform',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'AttentionTopicSocialChannel',
            'type',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'AttentionTopicSocialChannel',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

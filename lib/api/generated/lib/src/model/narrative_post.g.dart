// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative_post.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NarrativePostLinkReasonEnum _$narrativePostLinkReasonEnum_seed =
    const NarrativePostLinkReasonEnum._('seed');
const NarrativePostLinkReasonEnum _$narrativePostLinkReasonEnum_repost =
    const NarrativePostLinkReasonEnum._('repost');
const NarrativePostLinkReasonEnum _$narrativePostLinkReasonEnum_quote =
    const NarrativePostLinkReasonEnum._('quote');
const NarrativePostLinkReasonEnum _$narrativePostLinkReasonEnum_text =
    const NarrativePostLinkReasonEnum._('text');
const NarrativePostLinkReasonEnum _$narrativePostLinkReasonEnum_link =
    const NarrativePostLinkReasonEnum._('link');
const NarrativePostLinkReasonEnum _$narrativePostLinkReasonEnum_media =
    const NarrativePostLinkReasonEnum._('media');

NarrativePostLinkReasonEnum _$narrativePostLinkReasonEnumValueOf(String name) {
  switch (name) {
    case 'seed':
      return _$narrativePostLinkReasonEnum_seed;
    case 'repost':
      return _$narrativePostLinkReasonEnum_repost;
    case 'quote':
      return _$narrativePostLinkReasonEnum_quote;
    case 'text':
      return _$narrativePostLinkReasonEnum_text;
    case 'link':
      return _$narrativePostLinkReasonEnum_link;
    case 'media':
      return _$narrativePostLinkReasonEnum_media;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NarrativePostLinkReasonEnum>
_$narrativePostLinkReasonEnumValues =
    BuiltSet<NarrativePostLinkReasonEnum>(const <NarrativePostLinkReasonEnum>[
      _$narrativePostLinkReasonEnum_seed,
      _$narrativePostLinkReasonEnum_repost,
      _$narrativePostLinkReasonEnum_quote,
      _$narrativePostLinkReasonEnum_text,
      _$narrativePostLinkReasonEnum_link,
      _$narrativePostLinkReasonEnum_media,
    ]);

Serializer<NarrativePostLinkReasonEnum>
_$narrativePostLinkReasonEnumSerializer =
    _$NarrativePostLinkReasonEnumSerializer();

class _$NarrativePostLinkReasonEnumSerializer
    implements PrimitiveSerializer<NarrativePostLinkReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'seed': 'seed',
    'repost': 'repost',
    'quote': 'quote',
    'text': 'text',
    'link': 'link',
    'media': 'media',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'seed': 'seed',
    'repost': 'repost',
    'quote': 'quote',
    'text': 'text',
    'link': 'link',
    'media': 'media',
  };

  @override
  final Iterable<Type> types = const <Type>[NarrativePostLinkReasonEnum];
  @override
  final String wireName = 'NarrativePostLinkReasonEnum';

  @override
  Object serialize(
    Serializers serializers,
    NarrativePostLinkReasonEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NarrativePostLinkReasonEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NarrativePostLinkReasonEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NarrativePost extends NarrativePost {
  @override
  final SocialPost post;
  @override
  final NarrativePostLinkReasonEnum linkReason;
  @override
  final String evidenceGroupId;
  @override
  final DateTime joinedAt;
  @override
  final num? centrality;

  factory _$NarrativePost([void Function(NarrativePostBuilder)? updates]) =>
      (NarrativePostBuilder()..update(updates))._build();

  _$NarrativePost._({
    required this.post,
    required this.linkReason,
    required this.evidenceGroupId,
    required this.joinedAt,
    this.centrality,
  }) : super._();
  @override
  NarrativePost rebuild(void Function(NarrativePostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NarrativePostBuilder toBuilder() => NarrativePostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NarrativePost &&
        post == other.post &&
        linkReason == other.linkReason &&
        evidenceGroupId == other.evidenceGroupId &&
        joinedAt == other.joinedAt &&
        centrality == other.centrality;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, post.hashCode);
    _$hash = $jc(_$hash, linkReason.hashCode);
    _$hash = $jc(_$hash, evidenceGroupId.hashCode);
    _$hash = $jc(_$hash, joinedAt.hashCode);
    _$hash = $jc(_$hash, centrality.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NarrativePost')
          ..add('post', post)
          ..add('linkReason', linkReason)
          ..add('evidenceGroupId', evidenceGroupId)
          ..add('joinedAt', joinedAt)
          ..add('centrality', centrality))
        .toString();
  }
}

class NarrativePostBuilder
    implements Builder<NarrativePost, NarrativePostBuilder> {
  _$NarrativePost? _$v;

  SocialPostBuilder? _post;
  SocialPostBuilder get post => _$this._post ??= SocialPostBuilder();
  set post(SocialPostBuilder? post) => _$this._post = post;

  NarrativePostLinkReasonEnum? _linkReason;
  NarrativePostLinkReasonEnum? get linkReason => _$this._linkReason;
  set linkReason(NarrativePostLinkReasonEnum? linkReason) =>
      _$this._linkReason = linkReason;

  String? _evidenceGroupId;
  String? get evidenceGroupId => _$this._evidenceGroupId;
  set evidenceGroupId(String? evidenceGroupId) =>
      _$this._evidenceGroupId = evidenceGroupId;

  DateTime? _joinedAt;
  DateTime? get joinedAt => _$this._joinedAt;
  set joinedAt(DateTime? joinedAt) => _$this._joinedAt = joinedAt;

  num? _centrality;
  num? get centrality => _$this._centrality;
  set centrality(num? centrality) => _$this._centrality = centrality;

  NarrativePostBuilder() {
    NarrativePost._defaults(this);
  }

  NarrativePostBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _post = $v.post.toBuilder();
      _linkReason = $v.linkReason;
      _evidenceGroupId = $v.evidenceGroupId;
      _joinedAt = $v.joinedAt;
      _centrality = $v.centrality;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NarrativePost other) {
    _$v = other as _$NarrativePost;
  }

  @override
  void update(void Function(NarrativePostBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NarrativePost build() => _build();

  _$NarrativePost _build() {
    _$NarrativePost _$result;
    try {
      _$result =
          _$v ??
          _$NarrativePost._(
            post: post.build(),
            linkReason: BuiltValueNullFieldError.checkNotNull(
              linkReason,
              r'NarrativePost',
              'linkReason',
            ),
            evidenceGroupId: BuiltValueNullFieldError.checkNotNull(
              evidenceGroupId,
              r'NarrativePost',
              'evidenceGroupId',
            ),
            joinedAt: BuiltValueNullFieldError.checkNotNull(
              joinedAt,
              r'NarrativePost',
              'joinedAt',
            ),
            centrality: centrality,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'post';
        post.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NarrativePost',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

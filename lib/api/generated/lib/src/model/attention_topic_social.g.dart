// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attention_topic_social.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AttentionTopicSocialModeEnum _$attentionTopicSocialModeEnum_standing =
    const AttentionTopicSocialModeEnum._('standing');
const AttentionTopicSocialModeEnum _$attentionTopicSocialModeEnum_cueOnly =
    const AttentionTopicSocialModeEnum._('cueOnly');

AttentionTopicSocialModeEnum _$attentionTopicSocialModeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'standing':
      return _$attentionTopicSocialModeEnum_standing;
    case 'cueOnly':
      return _$attentionTopicSocialModeEnum_cueOnly;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AttentionTopicSocialModeEnum>
_$attentionTopicSocialModeEnumValues = BuiltSet<AttentionTopicSocialModeEnum>(
  const <AttentionTopicSocialModeEnum>[
    _$attentionTopicSocialModeEnum_standing,
    _$attentionTopicSocialModeEnum_cueOnly,
  ],
);

Serializer<AttentionTopicSocialModeEnum>
_$attentionTopicSocialModeEnumSerializer =
    _$AttentionTopicSocialModeEnumSerializer();

class _$AttentionTopicSocialModeEnumSerializer
    implements PrimitiveSerializer<AttentionTopicSocialModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'standing': 'standing',
    'cueOnly': 'cue-only',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'standing': 'standing',
    'cue-only': 'cueOnly',
  };

  @override
  final Iterable<Type> types = const <Type>[AttentionTopicSocialModeEnum];
  @override
  final String wireName = 'AttentionTopicSocialModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    AttentionTopicSocialModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AttentionTopicSocialModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AttentionTopicSocialModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AttentionTopicSocial extends AttentionTopicSocial {
  @override
  final BuiltMap<String, BuiltList<String>>? terms;
  @override
  final BuiltList<String>? hashtags;
  @override
  final BuiltList<AttentionTopicSocialAccountsInner>? accounts;
  @override
  final BuiltList<AttentionTopicSocialChannel>? channels;
  @override
  final BuiltList<String>? exclude;
  @override
  final BuiltList<String>? platforms;
  @override
  final BuiltList<String>? placeIds;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final BuiltList<String>? entityRefs;
  @override
  final AttentionTopicSocialModeEnum? mode;

  factory _$AttentionTopicSocial([
    void Function(AttentionTopicSocialBuilder)? updates,
  ]) => (AttentionTopicSocialBuilder()..update(updates))._build();

  _$AttentionTopicSocial._({
    this.terms,
    this.hashtags,
    this.accounts,
    this.channels,
    this.exclude,
    this.platforms,
    this.placeIds,
    this.regionCodes,
    this.entityRefs,
    this.mode,
  }) : super._();
  @override
  AttentionTopicSocial rebuild(
    void Function(AttentionTopicSocialBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AttentionTopicSocialBuilder toBuilder() =>
      AttentionTopicSocialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttentionTopicSocial &&
        terms == other.terms &&
        hashtags == other.hashtags &&
        accounts == other.accounts &&
        channels == other.channels &&
        exclude == other.exclude &&
        platforms == other.platforms &&
        placeIds == other.placeIds &&
        regionCodes == other.regionCodes &&
        entityRefs == other.entityRefs &&
        mode == other.mode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, terms.hashCode);
    _$hash = $jc(_$hash, hashtags.hashCode);
    _$hash = $jc(_$hash, accounts.hashCode);
    _$hash = $jc(_$hash, channels.hashCode);
    _$hash = $jc(_$hash, exclude.hashCode);
    _$hash = $jc(_$hash, platforms.hashCode);
    _$hash = $jc(_$hash, placeIds.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, entityRefs.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttentionTopicSocial')
          ..add('terms', terms)
          ..add('hashtags', hashtags)
          ..add('accounts', accounts)
          ..add('channels', channels)
          ..add('exclude', exclude)
          ..add('platforms', platforms)
          ..add('placeIds', placeIds)
          ..add('regionCodes', regionCodes)
          ..add('entityRefs', entityRefs)
          ..add('mode', mode))
        .toString();
  }
}

class AttentionTopicSocialBuilder
    implements Builder<AttentionTopicSocial, AttentionTopicSocialBuilder> {
  _$AttentionTopicSocial? _$v;

  MapBuilder<String, BuiltList<String>>? _terms;
  MapBuilder<String, BuiltList<String>> get terms =>
      _$this._terms ??= MapBuilder<String, BuiltList<String>>();
  set terms(MapBuilder<String, BuiltList<String>>? terms) =>
      _$this._terms = terms;

  ListBuilder<String>? _hashtags;
  ListBuilder<String> get hashtags =>
      _$this._hashtags ??= ListBuilder<String>();
  set hashtags(ListBuilder<String>? hashtags) => _$this._hashtags = hashtags;

  ListBuilder<AttentionTopicSocialAccountsInner>? _accounts;
  ListBuilder<AttentionTopicSocialAccountsInner> get accounts =>
      _$this._accounts ??= ListBuilder<AttentionTopicSocialAccountsInner>();
  set accounts(ListBuilder<AttentionTopicSocialAccountsInner>? accounts) =>
      _$this._accounts = accounts;

  ListBuilder<AttentionTopicSocialChannel>? _channels;
  ListBuilder<AttentionTopicSocialChannel> get channels =>
      _$this._channels ??= ListBuilder<AttentionTopicSocialChannel>();
  set channels(ListBuilder<AttentionTopicSocialChannel>? channels) =>
      _$this._channels = channels;

  ListBuilder<String>? _exclude;
  ListBuilder<String> get exclude => _$this._exclude ??= ListBuilder<String>();
  set exclude(ListBuilder<String>? exclude) => _$this._exclude = exclude;

  ListBuilder<String>? _platforms;
  ListBuilder<String> get platforms =>
      _$this._platforms ??= ListBuilder<String>();
  set platforms(ListBuilder<String>? platforms) =>
      _$this._platforms = platforms;

  ListBuilder<String>? _placeIds;
  ListBuilder<String> get placeIds =>
      _$this._placeIds ??= ListBuilder<String>();
  set placeIds(ListBuilder<String>? placeIds) => _$this._placeIds = placeIds;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  ListBuilder<String>? _entityRefs;
  ListBuilder<String> get entityRefs =>
      _$this._entityRefs ??= ListBuilder<String>();
  set entityRefs(ListBuilder<String>? entityRefs) =>
      _$this._entityRefs = entityRefs;

  AttentionTopicSocialModeEnum? _mode;
  AttentionTopicSocialModeEnum? get mode => _$this._mode;
  set mode(AttentionTopicSocialModeEnum? mode) => _$this._mode = mode;

  AttentionTopicSocialBuilder() {
    AttentionTopicSocial._defaults(this);
  }

  AttentionTopicSocialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _terms = $v.terms?.toBuilder();
      _hashtags = $v.hashtags?.toBuilder();
      _accounts = $v.accounts?.toBuilder();
      _channels = $v.channels?.toBuilder();
      _exclude = $v.exclude?.toBuilder();
      _platforms = $v.platforms?.toBuilder();
      _placeIds = $v.placeIds?.toBuilder();
      _regionCodes = $v.regionCodes?.toBuilder();
      _entityRefs = $v.entityRefs?.toBuilder();
      _mode = $v.mode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttentionTopicSocial other) {
    _$v = other as _$AttentionTopicSocial;
  }

  @override
  void update(void Function(AttentionTopicSocialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttentionTopicSocial build() => _build();

  _$AttentionTopicSocial _build() {
    _$AttentionTopicSocial _$result;
    try {
      _$result =
          _$v ??
          _$AttentionTopicSocial._(
            terms: _terms?.build(),
            hashtags: _hashtags?.build(),
            accounts: _accounts?.build(),
            channels: _channels?.build(),
            exclude: _exclude?.build(),
            platforms: _platforms?.build(),
            placeIds: _placeIds?.build(),
            regionCodes: _regionCodes?.build(),
            entityRefs: _entityRefs?.build(),
            mode: mode,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'terms';
        _terms?.build();
        _$failedField = 'hashtags';
        _hashtags?.build();
        _$failedField = 'accounts';
        _accounts?.build();
        _$failedField = 'channels';
        _channels?.build();
        _$failedField = 'exclude';
        _exclude?.build();
        _$failedField = 'platforms';
        _platforms?.build();
        _$failedField = 'placeIds';
        _placeIds?.build();
        _$failedField = 'regionCodes';
        _regionCodes?.build();
        _$failedField = 'entityRefs';
        _entityRefs?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AttentionTopicSocial',
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

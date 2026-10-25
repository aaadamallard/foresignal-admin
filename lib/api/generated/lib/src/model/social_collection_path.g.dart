// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_collection_path.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialCollectionPathPathEnum _$socialCollectionPathPathEnum_stream =
    const SocialCollectionPathPathEnum._('stream');
const SocialCollectionPathPathEnum _$socialCollectionPathPathEnum_replay =
    const SocialCollectionPathPathEnum._('replay');
const SocialCollectionPathPathEnum _$socialCollectionPathPathEnum_search =
    const SocialCollectionPathPathEnum._('search');
const SocialCollectionPathPathEnum _$socialCollectionPathPathEnum_counts =
    const SocialCollectionPathPathEnum._('counts');
const SocialCollectionPathPathEnum _$socialCollectionPathPathEnum_trends =
    const SocialCollectionPathPathEnum._('trends');
const SocialCollectionPathPathEnum _$socialCollectionPathPathEnum_channelPoll =
    const SocialCollectionPathPathEnum._('channelPoll');
const SocialCollectionPathPathEnum _$socialCollectionPathPathEnum_accountPoll =
    const SocialCollectionPathPathEnum._('accountPoll');
const SocialCollectionPathPathEnum
_$socialCollectionPathPathEnum_hashtagSearch =
    const SocialCollectionPathPathEnum._('hashtagSearch');
const SocialCollectionPathPathEnum _$socialCollectionPathPathEnum_cue =
    const SocialCollectionPathPathEnum._('cue');
const SocialCollectionPathPathEnum
_$socialCollectionPathPathEnum_unknownDefaultOpenApi =
    const SocialCollectionPathPathEnum._('unknownDefaultOpenApi');

SocialCollectionPathPathEnum _$socialCollectionPathPathEnumValueOf(
  String name,
) {
  switch (name) {
    case 'stream':
      return _$socialCollectionPathPathEnum_stream;
    case 'replay':
      return _$socialCollectionPathPathEnum_replay;
    case 'search':
      return _$socialCollectionPathPathEnum_search;
    case 'counts':
      return _$socialCollectionPathPathEnum_counts;
    case 'trends':
      return _$socialCollectionPathPathEnum_trends;
    case 'channelPoll':
      return _$socialCollectionPathPathEnum_channelPoll;
    case 'accountPoll':
      return _$socialCollectionPathPathEnum_accountPoll;
    case 'hashtagSearch':
      return _$socialCollectionPathPathEnum_hashtagSearch;
    case 'cue':
      return _$socialCollectionPathPathEnum_cue;
    case 'unknownDefaultOpenApi':
      return _$socialCollectionPathPathEnum_unknownDefaultOpenApi;
    default:
      return _$socialCollectionPathPathEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SocialCollectionPathPathEnum>
_$socialCollectionPathPathEnumValues =
    BuiltSet<SocialCollectionPathPathEnum>(const <SocialCollectionPathPathEnum>[
      _$socialCollectionPathPathEnum_stream,
      _$socialCollectionPathPathEnum_replay,
      _$socialCollectionPathPathEnum_search,
      _$socialCollectionPathPathEnum_counts,
      _$socialCollectionPathPathEnum_trends,
      _$socialCollectionPathPathEnum_channelPoll,
      _$socialCollectionPathPathEnum_accountPoll,
      _$socialCollectionPathPathEnum_hashtagSearch,
      _$socialCollectionPathPathEnum_cue,
      _$socialCollectionPathPathEnum_unknownDefaultOpenApi,
    ]);

Serializer<SocialCollectionPathPathEnum>
_$socialCollectionPathPathEnumSerializer =
    _$SocialCollectionPathPathEnumSerializer();

class _$SocialCollectionPathPathEnumSerializer
    implements PrimitiveSerializer<SocialCollectionPathPathEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'stream': 'stream',
    'replay': 'replay',
    'search': 'search',
    'counts': 'counts',
    'trends': 'trends',
    'channelPoll': 'channel-poll',
    'accountPoll': 'account-poll',
    'hashtagSearch': 'hashtag-search',
    'cue': 'cue',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'stream': 'stream',
    'replay': 'replay',
    'search': 'search',
    'counts': 'counts',
    'trends': 'trends',
    'channel-poll': 'channelPoll',
    'account-poll': 'accountPoll',
    'hashtag-search': 'hashtagSearch',
    'cue': 'cue',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialCollectionPathPathEnum];
  @override
  final String wireName = 'SocialCollectionPathPathEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialCollectionPathPathEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialCollectionPathPathEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialCollectionPathPathEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialCollectionPath extends SocialCollectionPath {
  @override
  final SocialCollectionPathPathEnum path;
  @override
  final SocialCollectionType collectionType;
  @override
  final bool enabled;
  @override
  final bool feedsBaselines;

  factory _$SocialCollectionPath([
    void Function(SocialCollectionPathBuilder)? updates,
  ]) => (SocialCollectionPathBuilder()..update(updates))._build();

  _$SocialCollectionPath._({
    required this.path,
    required this.collectionType,
    required this.enabled,
    required this.feedsBaselines,
  }) : super._();
  @override
  SocialCollectionPath rebuild(
    void Function(SocialCollectionPathBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialCollectionPathBuilder toBuilder() =>
      SocialCollectionPathBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialCollectionPath &&
        path == other.path &&
        collectionType == other.collectionType &&
        enabled == other.enabled &&
        feedsBaselines == other.feedsBaselines;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, collectionType.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, feedsBaselines.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialCollectionPath')
          ..add('path', path)
          ..add('collectionType', collectionType)
          ..add('enabled', enabled)
          ..add('feedsBaselines', feedsBaselines))
        .toString();
  }
}

class SocialCollectionPathBuilder
    implements Builder<SocialCollectionPath, SocialCollectionPathBuilder> {
  _$SocialCollectionPath? _$v;

  SocialCollectionPathPathEnum? _path;
  SocialCollectionPathPathEnum? get path => _$this._path;
  set path(SocialCollectionPathPathEnum? path) => _$this._path = path;

  SocialCollectionType? _collectionType;
  SocialCollectionType? get collectionType => _$this._collectionType;
  set collectionType(SocialCollectionType? collectionType) =>
      _$this._collectionType = collectionType;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _feedsBaselines;
  bool? get feedsBaselines => _$this._feedsBaselines;
  set feedsBaselines(bool? feedsBaselines) =>
      _$this._feedsBaselines = feedsBaselines;

  SocialCollectionPathBuilder() {
    SocialCollectionPath._defaults(this);
  }

  SocialCollectionPathBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _collectionType = $v.collectionType;
      _enabled = $v.enabled;
      _feedsBaselines = $v.feedsBaselines;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialCollectionPath other) {
    _$v = other as _$SocialCollectionPath;
  }

  @override
  void update(void Function(SocialCollectionPathBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialCollectionPath build() => _build();

  _$SocialCollectionPath _build() {
    final _$result =
        _$v ??
        _$SocialCollectionPath._(
          path: BuiltValueNullFieldError.checkNotNull(
            path,
            r'SocialCollectionPath',
            'path',
          ),
          collectionType: BuiltValueNullFieldError.checkNotNull(
            collectionType,
            r'SocialCollectionPath',
            'collectionType',
          ),
          enabled: BuiltValueNullFieldError.checkNotNull(
            enabled,
            r'SocialCollectionPath',
            'enabled',
          ),
          feedsBaselines: BuiltValueNullFieldError.checkNotNull(
            feedsBaselines,
            r'SocialCollectionPath',
            'feedsBaselines',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

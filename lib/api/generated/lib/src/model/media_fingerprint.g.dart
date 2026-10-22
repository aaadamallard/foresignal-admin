// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_fingerprint.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaFingerprint extends MediaFingerprint {
  @override
  final String id;
  @override
  final String pdq;
  @override
  final int quality;
  @override
  final bool matchable;
  @override
  final DateTime firstSeenAt;
  @override
  final String firstPostRef;
  @override
  final int useCount;
  @override
  final BuiltList<String> platforms;
  @override
  final BuiltList<String> narrativeIds;
  @override
  final String? mediaId;
  @override
  final BuiltList<String>? reuseFindingIds;
  @override
  final BuiltList<MediaFingerprintUsesInner>? uses;
  @override
  final BuiltList<ObjectEnvelope>? narratives;

  factory _$MediaFingerprint([
    void Function(MediaFingerprintBuilder)? updates,
  ]) => (MediaFingerprintBuilder()..update(updates))._build();

  _$MediaFingerprint._({
    required this.id,
    required this.pdq,
    required this.quality,
    required this.matchable,
    required this.firstSeenAt,
    required this.firstPostRef,
    required this.useCount,
    required this.platforms,
    required this.narrativeIds,
    this.mediaId,
    this.reuseFindingIds,
    this.uses,
    this.narratives,
  }) : super._();
  @override
  MediaFingerprint rebuild(void Function(MediaFingerprintBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaFingerprintBuilder toBuilder() =>
      MediaFingerprintBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaFingerprint &&
        id == other.id &&
        pdq == other.pdq &&
        quality == other.quality &&
        matchable == other.matchable &&
        firstSeenAt == other.firstSeenAt &&
        firstPostRef == other.firstPostRef &&
        useCount == other.useCount &&
        platforms == other.platforms &&
        narrativeIds == other.narrativeIds &&
        mediaId == other.mediaId &&
        reuseFindingIds == other.reuseFindingIds &&
        uses == other.uses &&
        narratives == other.narratives;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, pdq.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, matchable.hashCode);
    _$hash = $jc(_$hash, firstSeenAt.hashCode);
    _$hash = $jc(_$hash, firstPostRef.hashCode);
    _$hash = $jc(_$hash, useCount.hashCode);
    _$hash = $jc(_$hash, platforms.hashCode);
    _$hash = $jc(_$hash, narrativeIds.hashCode);
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jc(_$hash, reuseFindingIds.hashCode);
    _$hash = $jc(_$hash, uses.hashCode);
    _$hash = $jc(_$hash, narratives.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaFingerprint')
          ..add('id', id)
          ..add('pdq', pdq)
          ..add('quality', quality)
          ..add('matchable', matchable)
          ..add('firstSeenAt', firstSeenAt)
          ..add('firstPostRef', firstPostRef)
          ..add('useCount', useCount)
          ..add('platforms', platforms)
          ..add('narrativeIds', narrativeIds)
          ..add('mediaId', mediaId)
          ..add('reuseFindingIds', reuseFindingIds)
          ..add('uses', uses)
          ..add('narratives', narratives))
        .toString();
  }
}

class MediaFingerprintBuilder
    implements Builder<MediaFingerprint, MediaFingerprintBuilder> {
  _$MediaFingerprint? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _pdq;
  String? get pdq => _$this._pdq;
  set pdq(String? pdq) => _$this._pdq = pdq;

  int? _quality;
  int? get quality => _$this._quality;
  set quality(int? quality) => _$this._quality = quality;

  bool? _matchable;
  bool? get matchable => _$this._matchable;
  set matchable(bool? matchable) => _$this._matchable = matchable;

  DateTime? _firstSeenAt;
  DateTime? get firstSeenAt => _$this._firstSeenAt;
  set firstSeenAt(DateTime? firstSeenAt) => _$this._firstSeenAt = firstSeenAt;

  String? _firstPostRef;
  String? get firstPostRef => _$this._firstPostRef;
  set firstPostRef(String? firstPostRef) => _$this._firstPostRef = firstPostRef;

  int? _useCount;
  int? get useCount => _$this._useCount;
  set useCount(int? useCount) => _$this._useCount = useCount;

  ListBuilder<String>? _platforms;
  ListBuilder<String> get platforms =>
      _$this._platforms ??= ListBuilder<String>();
  set platforms(ListBuilder<String>? platforms) =>
      _$this._platforms = platforms;

  ListBuilder<String>? _narrativeIds;
  ListBuilder<String> get narrativeIds =>
      _$this._narrativeIds ??= ListBuilder<String>();
  set narrativeIds(ListBuilder<String>? narrativeIds) =>
      _$this._narrativeIds = narrativeIds;

  String? _mediaId;
  String? get mediaId => _$this._mediaId;
  set mediaId(String? mediaId) => _$this._mediaId = mediaId;

  ListBuilder<String>? _reuseFindingIds;
  ListBuilder<String> get reuseFindingIds =>
      _$this._reuseFindingIds ??= ListBuilder<String>();
  set reuseFindingIds(ListBuilder<String>? reuseFindingIds) =>
      _$this._reuseFindingIds = reuseFindingIds;

  ListBuilder<MediaFingerprintUsesInner>? _uses;
  ListBuilder<MediaFingerprintUsesInner> get uses =>
      _$this._uses ??= ListBuilder<MediaFingerprintUsesInner>();
  set uses(ListBuilder<MediaFingerprintUsesInner>? uses) => _$this._uses = uses;

  ListBuilder<ObjectEnvelope>? _narratives;
  ListBuilder<ObjectEnvelope> get narratives =>
      _$this._narratives ??= ListBuilder<ObjectEnvelope>();
  set narratives(ListBuilder<ObjectEnvelope>? narratives) =>
      _$this._narratives = narratives;

  MediaFingerprintBuilder() {
    MediaFingerprint._defaults(this);
  }

  MediaFingerprintBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _pdq = $v.pdq;
      _quality = $v.quality;
      _matchable = $v.matchable;
      _firstSeenAt = $v.firstSeenAt;
      _firstPostRef = $v.firstPostRef;
      _useCount = $v.useCount;
      _platforms = $v.platforms.toBuilder();
      _narrativeIds = $v.narrativeIds.toBuilder();
      _mediaId = $v.mediaId;
      _reuseFindingIds = $v.reuseFindingIds?.toBuilder();
      _uses = $v.uses?.toBuilder();
      _narratives = $v.narratives?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaFingerprint other) {
    _$v = other as _$MediaFingerprint;
  }

  @override
  void update(void Function(MediaFingerprintBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaFingerprint build() => _build();

  _$MediaFingerprint _build() {
    _$MediaFingerprint _$result;
    try {
      _$result =
          _$v ??
          _$MediaFingerprint._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'MediaFingerprint',
              'id',
            ),
            pdq: BuiltValueNullFieldError.checkNotNull(
              pdq,
              r'MediaFingerprint',
              'pdq',
            ),
            quality: BuiltValueNullFieldError.checkNotNull(
              quality,
              r'MediaFingerprint',
              'quality',
            ),
            matchable: BuiltValueNullFieldError.checkNotNull(
              matchable,
              r'MediaFingerprint',
              'matchable',
            ),
            firstSeenAt: BuiltValueNullFieldError.checkNotNull(
              firstSeenAt,
              r'MediaFingerprint',
              'firstSeenAt',
            ),
            firstPostRef: BuiltValueNullFieldError.checkNotNull(
              firstPostRef,
              r'MediaFingerprint',
              'firstPostRef',
            ),
            useCount: BuiltValueNullFieldError.checkNotNull(
              useCount,
              r'MediaFingerprint',
              'useCount',
            ),
            platforms: platforms.build(),
            narrativeIds: narrativeIds.build(),
            mediaId: mediaId,
            reuseFindingIds: _reuseFindingIds?.build(),
            uses: _uses?.build(),
            narratives: _narratives?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'platforms';
        platforms.build();
        _$failedField = 'narrativeIds';
        narrativeIds.build();

        _$failedField = 'reuseFindingIds';
        _reuseFindingIds?.build();
        _$failedField = 'uses';
        _uses?.build();
        _$failedField = 'narratives';
        _narratives?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MediaFingerprint',
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

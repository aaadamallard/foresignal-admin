// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digest_notable_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DigestNotableItem extends DigestNotableItem {
  @override
  final String id;
  @override
  final String? source_;
  @override
  final String? externalId;
  @override
  final String? kind;
  @override
  final int seq;
  @override
  final String? title;
  @override
  final bool? live;
  @override
  final DateTime? observedAt;
  @override
  final DateTime? effectiveTime;
  @override
  final JsonObject? rankValue;
  @override
  final String? link;

  factory _$DigestNotableItem(
          [void Function(DigestNotableItemBuilder)? updates]) =>
      (DigestNotableItemBuilder()..update(updates))._build();

  _$DigestNotableItem._(
      {required this.id,
      this.source_,
      this.externalId,
      this.kind,
      required this.seq,
      this.title,
      this.live,
      this.observedAt,
      this.effectiveTime,
      this.rankValue,
      this.link})
      : super._();
  @override
  DigestNotableItem rebuild(void Function(DigestNotableItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DigestNotableItemBuilder toBuilder() =>
      DigestNotableItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DigestNotableItem &&
        id == other.id &&
        source_ == other.source_ &&
        externalId == other.externalId &&
        kind == other.kind &&
        seq == other.seq &&
        title == other.title &&
        live == other.live &&
        observedAt == other.observedAt &&
        effectiveTime == other.effectiveTime &&
        rankValue == other.rankValue &&
        link == other.link;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, live.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, effectiveTime.hashCode);
    _$hash = $jc(_$hash, rankValue.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DigestNotableItem')
          ..add('id', id)
          ..add('source_', source_)
          ..add('externalId', externalId)
          ..add('kind', kind)
          ..add('seq', seq)
          ..add('title', title)
          ..add('live', live)
          ..add('observedAt', observedAt)
          ..add('effectiveTime', effectiveTime)
          ..add('rankValue', rankValue)
          ..add('link', link))
        .toString();
  }
}

class DigestNotableItemBuilder
    implements Builder<DigestNotableItem, DigestNotableItemBuilder> {
  _$DigestNotableItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _live;
  bool? get live => _$this._live;
  set live(bool? live) => _$this._live = live;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  DateTime? _effectiveTime;
  DateTime? get effectiveTime => _$this._effectiveTime;
  set effectiveTime(DateTime? effectiveTime) =>
      _$this._effectiveTime = effectiveTime;

  JsonObject? _rankValue;
  JsonObject? get rankValue => _$this._rankValue;
  set rankValue(JsonObject? rankValue) => _$this._rankValue = rankValue;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  DigestNotableItemBuilder() {
    DigestNotableItem._defaults(this);
  }

  DigestNotableItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _source_ = $v.source_;
      _externalId = $v.externalId;
      _kind = $v.kind;
      _seq = $v.seq;
      _title = $v.title;
      _live = $v.live;
      _observedAt = $v.observedAt;
      _effectiveTime = $v.effectiveTime;
      _rankValue = $v.rankValue;
      _link = $v.link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DigestNotableItem other) {
    _$v = other as _$DigestNotableItem;
  }

  @override
  void update(void Function(DigestNotableItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DigestNotableItem build() => _build();

  _$DigestNotableItem _build() {
    final _$result = _$v ??
        _$DigestNotableItem._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'DigestNotableItem', 'id'),
          source_: source_,
          externalId: externalId,
          kind: kind,
          seq: BuiltValueNullFieldError.checkNotNull(
              seq, r'DigestNotableItem', 'seq'),
          title: title,
          live: live,
          observedAt: observedAt,
          effectiveTime: effectiveTime,
          rankValue: rankValue,
          link: link,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

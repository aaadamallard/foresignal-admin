// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_outcome.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngestOutcome extends IngestOutcome {
  @override
  final int seen;
  @override
  final int changed;
  @override
  final int rejected;
  @override
  final int? fromSeq;
  @override
  final int? toSeq;
  @override
  final BuiltList<IngestOutcomeRejectionsInner>? rejections;
  @override
  final int persisted;
  @override
  final int? live;
  @override
  final int? touched;
  @override
  final int? touchesThrottled;
  @override
  final int? late_;
  @override
  final int? skipped;
  @override
  final BuiltMap<String, int>? byReason;
  @override
  final int? versionBytes;

  factory _$IngestOutcome([void Function(IngestOutcomeBuilder)? updates]) =>
      (IngestOutcomeBuilder()..update(updates))._build();

  _$IngestOutcome._({
    required this.seen,
    required this.changed,
    required this.rejected,
    this.fromSeq,
    this.toSeq,
    this.rejections,
    required this.persisted,
    this.live,
    this.touched,
    this.touchesThrottled,
    this.late_,
    this.skipped,
    this.byReason,
    this.versionBytes,
  }) : super._();
  @override
  IngestOutcome rebuild(void Function(IngestOutcomeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngestOutcomeBuilder toBuilder() => IngestOutcomeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestOutcome &&
        seen == other.seen &&
        changed == other.changed &&
        rejected == other.rejected &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq &&
        rejections == other.rejections &&
        persisted == other.persisted &&
        live == other.live &&
        touched == other.touched &&
        touchesThrottled == other.touchesThrottled &&
        late_ == other.late_ &&
        skipped == other.skipped &&
        byReason == other.byReason &&
        versionBytes == other.versionBytes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seen.hashCode);
    _$hash = $jc(_$hash, changed.hashCode);
    _$hash = $jc(_$hash, rejected.hashCode);
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jc(_$hash, rejections.hashCode);
    _$hash = $jc(_$hash, persisted.hashCode);
    _$hash = $jc(_$hash, live.hashCode);
    _$hash = $jc(_$hash, touched.hashCode);
    _$hash = $jc(_$hash, touchesThrottled.hashCode);
    _$hash = $jc(_$hash, late_.hashCode);
    _$hash = $jc(_$hash, skipped.hashCode);
    _$hash = $jc(_$hash, byReason.hashCode);
    _$hash = $jc(_$hash, versionBytes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngestOutcome')
          ..add('seen', seen)
          ..add('changed', changed)
          ..add('rejected', rejected)
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq)
          ..add('rejections', rejections)
          ..add('persisted', persisted)
          ..add('live', live)
          ..add('touched', touched)
          ..add('touchesThrottled', touchesThrottled)
          ..add('late_', late_)
          ..add('skipped', skipped)
          ..add('byReason', byReason)
          ..add('versionBytes', versionBytes))
        .toString();
  }
}

class IngestOutcomeBuilder
    implements Builder<IngestOutcome, IngestOutcomeBuilder> {
  _$IngestOutcome? _$v;

  int? _seen;
  int? get seen => _$this._seen;
  set seen(int? seen) => _$this._seen = seen;

  int? _changed;
  int? get changed => _$this._changed;
  set changed(int? changed) => _$this._changed = changed;

  int? _rejected;
  int? get rejected => _$this._rejected;
  set rejected(int? rejected) => _$this._rejected = rejected;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  ListBuilder<IngestOutcomeRejectionsInner>? _rejections;
  ListBuilder<IngestOutcomeRejectionsInner> get rejections =>
      _$this._rejections ??= ListBuilder<IngestOutcomeRejectionsInner>();
  set rejections(ListBuilder<IngestOutcomeRejectionsInner>? rejections) =>
      _$this._rejections = rejections;

  int? _persisted;
  int? get persisted => _$this._persisted;
  set persisted(int? persisted) => _$this._persisted = persisted;

  int? _live;
  int? get live => _$this._live;
  set live(int? live) => _$this._live = live;

  int? _touched;
  int? get touched => _$this._touched;
  set touched(int? touched) => _$this._touched = touched;

  int? _touchesThrottled;
  int? get touchesThrottled => _$this._touchesThrottled;
  set touchesThrottled(int? touchesThrottled) =>
      _$this._touchesThrottled = touchesThrottled;

  int? _late_;
  int? get late_ => _$this._late_;
  set late_(int? late_) => _$this._late_ = late_;

  int? _skipped;
  int? get skipped => _$this._skipped;
  set skipped(int? skipped) => _$this._skipped = skipped;

  MapBuilder<String, int>? _byReason;
  MapBuilder<String, int> get byReason =>
      _$this._byReason ??= MapBuilder<String, int>();
  set byReason(MapBuilder<String, int>? byReason) =>
      _$this._byReason = byReason;

  int? _versionBytes;
  int? get versionBytes => _$this._versionBytes;
  set versionBytes(int? versionBytes) => _$this._versionBytes = versionBytes;

  IngestOutcomeBuilder() {
    IngestOutcome._defaults(this);
  }

  IngestOutcomeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seen = $v.seen;
      _changed = $v.changed;
      _rejected = $v.rejected;
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _rejections = $v.rejections?.toBuilder();
      _persisted = $v.persisted;
      _live = $v.live;
      _touched = $v.touched;
      _touchesThrottled = $v.touchesThrottled;
      _late_ = $v.late_;
      _skipped = $v.skipped;
      _byReason = $v.byReason?.toBuilder();
      _versionBytes = $v.versionBytes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestOutcome other) {
    _$v = other as _$IngestOutcome;
  }

  @override
  void update(void Function(IngestOutcomeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestOutcome build() => _build();

  _$IngestOutcome _build() {
    _$IngestOutcome _$result;
    try {
      _$result =
          _$v ??
          _$IngestOutcome._(
            seen: BuiltValueNullFieldError.checkNotNull(
              seen,
              r'IngestOutcome',
              'seen',
            ),
            changed: BuiltValueNullFieldError.checkNotNull(
              changed,
              r'IngestOutcome',
              'changed',
            ),
            rejected: BuiltValueNullFieldError.checkNotNull(
              rejected,
              r'IngestOutcome',
              'rejected',
            ),
            fromSeq: fromSeq,
            toSeq: toSeq,
            rejections: _rejections?.build(),
            persisted: BuiltValueNullFieldError.checkNotNull(
              persisted,
              r'IngestOutcome',
              'persisted',
            ),
            live: live,
            touched: touched,
            touchesThrottled: touchesThrottled,
            late_: late_,
            skipped: skipped,
            byReason: _byReason?.build(),
            versionBytes: versionBytes,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rejections';
        _rejections?.build();

        _$failedField = 'byReason';
        _byReason?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IngestOutcome',
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

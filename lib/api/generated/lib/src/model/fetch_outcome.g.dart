// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_outcome.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FetchOutcome extends FetchOutcome {
  @override
  final String sourceId;
  @override
  final DateTime? startedAt;
  @override
  final int? durationMs;
  @override
  final bool success;
  @override
  final int recordsSeen;
  @override
  final int recordsChanged;
  @override
  final int? fromSeq;
  @override
  final int? toSeq;
  @override
  final String? error;
  @override
  final int? fetchId;
  @override
  final int? persisted;
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
  final int? rejected;
  @override
  final PersistReasonCounts? byReason;

  factory _$FetchOutcome([void Function(FetchOutcomeBuilder)? updates]) =>
      (FetchOutcomeBuilder()..update(updates))._build();

  _$FetchOutcome._({
    required this.sourceId,
    this.startedAt,
    this.durationMs,
    required this.success,
    required this.recordsSeen,
    required this.recordsChanged,
    this.fromSeq,
    this.toSeq,
    this.error,
    this.fetchId,
    this.persisted,
    this.live,
    this.touched,
    this.touchesThrottled,
    this.late_,
    this.skipped,
    this.rejected,
    this.byReason,
  }) : super._();
  @override
  FetchOutcome rebuild(void Function(FetchOutcomeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FetchOutcomeBuilder toBuilder() => FetchOutcomeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FetchOutcome &&
        sourceId == other.sourceId &&
        startedAt == other.startedAt &&
        durationMs == other.durationMs &&
        success == other.success &&
        recordsSeen == other.recordsSeen &&
        recordsChanged == other.recordsChanged &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq &&
        error == other.error &&
        fetchId == other.fetchId &&
        persisted == other.persisted &&
        live == other.live &&
        touched == other.touched &&
        touchesThrottled == other.touchesThrottled &&
        late_ == other.late_ &&
        skipped == other.skipped &&
        rejected == other.rejected &&
        byReason == other.byReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, durationMs.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, recordsSeen.hashCode);
    _$hash = $jc(_$hash, recordsChanged.hashCode);
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, fetchId.hashCode);
    _$hash = $jc(_$hash, persisted.hashCode);
    _$hash = $jc(_$hash, live.hashCode);
    _$hash = $jc(_$hash, touched.hashCode);
    _$hash = $jc(_$hash, touchesThrottled.hashCode);
    _$hash = $jc(_$hash, late_.hashCode);
    _$hash = $jc(_$hash, skipped.hashCode);
    _$hash = $jc(_$hash, rejected.hashCode);
    _$hash = $jc(_$hash, byReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FetchOutcome')
          ..add('sourceId', sourceId)
          ..add('startedAt', startedAt)
          ..add('durationMs', durationMs)
          ..add('success', success)
          ..add('recordsSeen', recordsSeen)
          ..add('recordsChanged', recordsChanged)
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq)
          ..add('error', error)
          ..add('fetchId', fetchId)
          ..add('persisted', persisted)
          ..add('live', live)
          ..add('touched', touched)
          ..add('touchesThrottled', touchesThrottled)
          ..add('late_', late_)
          ..add('skipped', skipped)
          ..add('rejected', rejected)
          ..add('byReason', byReason))
        .toString();
  }
}

class FetchOutcomeBuilder
    implements Builder<FetchOutcome, FetchOutcomeBuilder> {
  _$FetchOutcome? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  int? _durationMs;
  int? get durationMs => _$this._durationMs;
  set durationMs(int? durationMs) => _$this._durationMs = durationMs;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _recordsSeen;
  int? get recordsSeen => _$this._recordsSeen;
  set recordsSeen(int? recordsSeen) => _$this._recordsSeen = recordsSeen;

  int? _recordsChanged;
  int? get recordsChanged => _$this._recordsChanged;
  set recordsChanged(int? recordsChanged) =>
      _$this._recordsChanged = recordsChanged;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  int? _fetchId;
  int? get fetchId => _$this._fetchId;
  set fetchId(int? fetchId) => _$this._fetchId = fetchId;

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

  int? _rejected;
  int? get rejected => _$this._rejected;
  set rejected(int? rejected) => _$this._rejected = rejected;

  PersistReasonCountsBuilder? _byReason;
  PersistReasonCountsBuilder get byReason =>
      _$this._byReason ??= PersistReasonCountsBuilder();
  set byReason(PersistReasonCountsBuilder? byReason) =>
      _$this._byReason = byReason;

  FetchOutcomeBuilder() {
    FetchOutcome._defaults(this);
  }

  FetchOutcomeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _startedAt = $v.startedAt;
      _durationMs = $v.durationMs;
      _success = $v.success;
      _recordsSeen = $v.recordsSeen;
      _recordsChanged = $v.recordsChanged;
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _error = $v.error;
      _fetchId = $v.fetchId;
      _persisted = $v.persisted;
      _live = $v.live;
      _touched = $v.touched;
      _touchesThrottled = $v.touchesThrottled;
      _late_ = $v.late_;
      _skipped = $v.skipped;
      _rejected = $v.rejected;
      _byReason = $v.byReason?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FetchOutcome other) {
    _$v = other as _$FetchOutcome;
  }

  @override
  void update(void Function(FetchOutcomeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FetchOutcome build() => _build();

  _$FetchOutcome _build() {
    _$FetchOutcome _$result;
    try {
      _$result =
          _$v ??
          _$FetchOutcome._(
            sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId,
              r'FetchOutcome',
              'sourceId',
            ),
            startedAt: startedAt,
            durationMs: durationMs,
            success: BuiltValueNullFieldError.checkNotNull(
              success,
              r'FetchOutcome',
              'success',
            ),
            recordsSeen: BuiltValueNullFieldError.checkNotNull(
              recordsSeen,
              r'FetchOutcome',
              'recordsSeen',
            ),
            recordsChanged: BuiltValueNullFieldError.checkNotNull(
              recordsChanged,
              r'FetchOutcome',
              'recordsChanged',
            ),
            fromSeq: fromSeq,
            toSeq: toSeq,
            error: error,
            fetchId: fetchId,
            persisted: persisted,
            live: live,
            touched: touched,
            touchesThrottled: touchesThrottled,
            late_: late_,
            skipped: skipped,
            rejected: rejected,
            byReason: _byReason?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'byReason';
        _byReason?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FetchOutcome',
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

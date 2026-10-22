// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_history_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrecursorHistoryInner extends PrecursorHistoryInner {
  @override
  final DateTime at;
  @override
  final String by;
  @override
  final String? from;
  @override
  final String to;
  @override
  final String? reason;

  factory _$PrecursorHistoryInner([
    void Function(PrecursorHistoryInnerBuilder)? updates,
  ]) => (PrecursorHistoryInnerBuilder()..update(updates))._build();

  _$PrecursorHistoryInner._({
    required this.at,
    required this.by,
    this.from,
    required this.to,
    this.reason,
  }) : super._();
  @override
  PrecursorHistoryInner rebuild(
    void Function(PrecursorHistoryInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PrecursorHistoryInnerBuilder toBuilder() =>
      PrecursorHistoryInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorHistoryInner &&
        at == other.at &&
        by == other.by &&
        from == other.from &&
        to == other.to &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, by.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorHistoryInner')
          ..add('at', at)
          ..add('by', by)
          ..add('from', from)
          ..add('to', to)
          ..add('reason', reason))
        .toString();
  }
}

class PrecursorHistoryInnerBuilder
    implements Builder<PrecursorHistoryInner, PrecursorHistoryInnerBuilder> {
  _$PrecursorHistoryInner? _$v;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  String? _by;
  String? get by => _$this._by;
  set by(String? by) => _$this._by = by;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  PrecursorHistoryInnerBuilder() {
    PrecursorHistoryInner._defaults(this);
  }

  PrecursorHistoryInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _at = $v.at;
      _by = $v.by;
      _from = $v.from;
      _to = $v.to;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorHistoryInner other) {
    _$v = other as _$PrecursorHistoryInner;
  }

  @override
  void update(void Function(PrecursorHistoryInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorHistoryInner build() => _build();

  _$PrecursorHistoryInner _build() {
    final _$result =
        _$v ??
        _$PrecursorHistoryInner._(
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'PrecursorHistoryInner',
            'at',
          ),
          by: BuiltValueNullFieldError.checkNotNull(
            by,
            r'PrecursorHistoryInner',
            'by',
          ),
          from: from,
          to: BuiltValueNullFieldError.checkNotNull(
            to,
            r'PrecursorHistoryInner',
            'to',
          ),
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

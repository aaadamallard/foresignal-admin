// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytic_finding_dismissal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalyticFindingDismissal extends AnalyticFindingDismissal {
  @override
  final String reason;
  @override
  final DateTime at;
  @override
  final String by;

  factory _$AnalyticFindingDismissal([
    void Function(AnalyticFindingDismissalBuilder)? updates,
  ]) => (AnalyticFindingDismissalBuilder()..update(updates))._build();

  _$AnalyticFindingDismissal._({
    required this.reason,
    required this.at,
    required this.by,
  }) : super._();
  @override
  AnalyticFindingDismissal rebuild(
    void Function(AnalyticFindingDismissalBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnalyticFindingDismissalBuilder toBuilder() =>
      AnalyticFindingDismissalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalyticFindingDismissal &&
        reason == other.reason &&
        at == other.at &&
        by == other.by;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, by.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalyticFindingDismissal')
          ..add('reason', reason)
          ..add('at', at)
          ..add('by', by))
        .toString();
  }
}

class AnalyticFindingDismissalBuilder
    implements
        Builder<AnalyticFindingDismissal, AnalyticFindingDismissalBuilder> {
  _$AnalyticFindingDismissal? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  String? _by;
  String? get by => _$this._by;
  set by(String? by) => _$this._by = by;

  AnalyticFindingDismissalBuilder() {
    AnalyticFindingDismissal._defaults(this);
  }

  AnalyticFindingDismissalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _at = $v.at;
      _by = $v.by;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalyticFindingDismissal other) {
    _$v = other as _$AnalyticFindingDismissal;
  }

  @override
  void update(void Function(AnalyticFindingDismissalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalyticFindingDismissal build() => _build();

  _$AnalyticFindingDismissal _build() {
    final _$result =
        _$v ??
        _$AnalyticFindingDismissal._(
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'AnalyticFindingDismissal',
            'reason',
          ),
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'AnalyticFindingDismissal',
            'at',
          ),
          by: BuiltValueNullFieldError.checkNotNull(
            by,
            r'AnalyticFindingDismissal',
            'by',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

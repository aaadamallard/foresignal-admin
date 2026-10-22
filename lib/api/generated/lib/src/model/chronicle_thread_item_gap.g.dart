// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_thread_item_gap.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleThreadItemGap extends ChronicleThreadItemGap {
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final String? reason;

  factory _$ChronicleThreadItemGap([
    void Function(ChronicleThreadItemGapBuilder)? updates,
  ]) => (ChronicleThreadItemGapBuilder()..update(updates))._build();

  _$ChronicleThreadItemGap._({
    required this.from,
    required this.to,
    this.reason,
  }) : super._();
  @override
  ChronicleThreadItemGap rebuild(
    void Function(ChronicleThreadItemGapBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleThreadItemGapBuilder toBuilder() =>
      ChronicleThreadItemGapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleThreadItemGap &&
        from == other.from &&
        to == other.to &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleThreadItemGap')
          ..add('from', from)
          ..add('to', to)
          ..add('reason', reason))
        .toString();
  }
}

class ChronicleThreadItemGapBuilder
    implements Builder<ChronicleThreadItemGap, ChronicleThreadItemGapBuilder> {
  _$ChronicleThreadItemGap? _$v;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ChronicleThreadItemGapBuilder() {
    ChronicleThreadItemGap._defaults(this);
  }

  ChronicleThreadItemGapBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleThreadItemGap other) {
    _$v = other as _$ChronicleThreadItemGap;
  }

  @override
  void update(void Function(ChronicleThreadItemGapBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleThreadItemGap build() => _build();

  _$ChronicleThreadItemGap _build() {
    final _$result =
        _$v ??
        _$ChronicleThreadItemGap._(
          from: BuiltValueNullFieldError.checkNotNull(
            from,
            r'ChronicleThreadItemGap',
            'from',
          ),
          to: BuiltValueNullFieldError.checkNotNull(
            to,
            r'ChronicleThreadItemGap',
            'to',
          ),
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

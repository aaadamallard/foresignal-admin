// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_event_time.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClaimEventTime extends ClaimEventTime {
  @override
  final DateTime from;
  @override
  final DateTime? to;
  @override
  final String precision;

  factory _$ClaimEventTime([void Function(ClaimEventTimeBuilder)? updates]) =>
      (ClaimEventTimeBuilder()..update(updates))._build();

  _$ClaimEventTime._({required this.from, this.to, required this.precision})
    : super._();
  @override
  ClaimEventTime rebuild(void Function(ClaimEventTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimEventTimeBuilder toBuilder() => ClaimEventTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClaimEventTime &&
        from == other.from &&
        to == other.to &&
        precision == other.precision;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, precision.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClaimEventTime')
          ..add('from', from)
          ..add('to', to)
          ..add('precision', precision))
        .toString();
  }
}

class ClaimEventTimeBuilder
    implements Builder<ClaimEventTime, ClaimEventTimeBuilder> {
  _$ClaimEventTime? _$v;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  String? _precision;
  String? get precision => _$this._precision;
  set precision(String? precision) => _$this._precision = precision;

  ClaimEventTimeBuilder() {
    ClaimEventTime._defaults(this);
  }

  ClaimEventTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _precision = $v.precision;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClaimEventTime other) {
    _$v = other as _$ClaimEventTime;
  }

  @override
  void update(void Function(ClaimEventTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClaimEventTime build() => _build();

  _$ClaimEventTime _build() {
    final _$result =
        _$v ??
        _$ClaimEventTime._(
          from: BuiltValueNullFieldError.checkNotNull(
            from,
            r'ClaimEventTime',
            'from',
          ),
          to: to,
          precision: BuiltValueNullFieldError.checkNotNull(
            precision,
            r'ClaimEventTime',
            'precision',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

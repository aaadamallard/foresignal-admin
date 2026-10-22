// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_range.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeRange extends TimeRange {
  @override
  final DateTime start;
  @override
  final DateTime? end;

  factory _$TimeRange([void Function(TimeRangeBuilder)? updates]) =>
      (TimeRangeBuilder()..update(updates))._build();

  _$TimeRange._({required this.start, this.end}) : super._();
  @override
  TimeRange rebuild(void Function(TimeRangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeRangeBuilder toBuilder() => TimeRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeRange && start == other.start && end == other.end;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeRange')
          ..add('start', start)
          ..add('end', end))
        .toString();
  }
}

class TimeRangeBuilder implements Builder<TimeRange, TimeRangeBuilder> {
  _$TimeRange? _$v;

  DateTime? _start;
  DateTime? get start => _$this._start;
  set start(DateTime? start) => _$this._start = start;

  DateTime? _end;
  DateTime? get end => _$this._end;
  set end(DateTime? end) => _$this._end = end;

  TimeRangeBuilder() {
    TimeRange._defaults(this);
  }

  TimeRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _start = $v.start;
      _end = $v.end;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeRange other) {
    _$v = other as _$TimeRange;
  }

  @override
  void update(void Function(TimeRangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeRange build() => _build();

  _$TimeRange _build() {
    final _$result = _$v ??
        _$TimeRange._(
          start: BuiltValueNullFieldError.checkNotNull(
              start, r'TimeRange', 'start'),
          end: end,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

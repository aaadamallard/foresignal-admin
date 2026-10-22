// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_bucket.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimelineBucket extends TimelineBucket {
  @override
  final DateTime t;
  @override
  final int total;
  @override
  final BuiltMap<String, int>? counts;

  factory _$TimelineBucket([void Function(TimelineBucketBuilder)? updates]) =>
      (TimelineBucketBuilder()..update(updates))._build();

  _$TimelineBucket._({required this.t, required this.total, this.counts})
    : super._();
  @override
  TimelineBucket rebuild(void Function(TimelineBucketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimelineBucketBuilder toBuilder() => TimelineBucketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimelineBucket &&
        t == other.t &&
        total == other.total &&
        counts == other.counts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, t.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, counts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimelineBucket')
          ..add('t', t)
          ..add('total', total)
          ..add('counts', counts))
        .toString();
  }
}

class TimelineBucketBuilder
    implements Builder<TimelineBucket, TimelineBucketBuilder> {
  _$TimelineBucket? _$v;

  DateTime? _t;
  DateTime? get t => _$this._t;
  set t(DateTime? t) => _$this._t = t;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  MapBuilder<String, int>? _counts;
  MapBuilder<String, int> get counts =>
      _$this._counts ??= MapBuilder<String, int>();
  set counts(MapBuilder<String, int>? counts) => _$this._counts = counts;

  TimelineBucketBuilder() {
    TimelineBucket._defaults(this);
  }

  TimelineBucketBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _t = $v.t;
      _total = $v.total;
      _counts = $v.counts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimelineBucket other) {
    _$v = other as _$TimelineBucket;
  }

  @override
  void update(void Function(TimelineBucketBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimelineBucket build() => _build();

  _$TimelineBucket _build() {
    _$TimelineBucket _$result;
    try {
      _$result =
          _$v ??
          _$TimelineBucket._(
            t: BuiltValueNullFieldError.checkNotNull(t, r'TimelineBucket', 't'),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'TimelineBucket',
              'total',
            ),
            counts: _counts?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'counts';
        _counts?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TimelineBucket',
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

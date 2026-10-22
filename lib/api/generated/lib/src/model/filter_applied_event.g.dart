// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_applied_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilterAppliedEvent extends FilterAppliedEvent {
  @override
  final int atSeq;
  @override
  final int filterVersion;

  factory _$FilterAppliedEvent([
    void Function(FilterAppliedEventBuilder)? updates,
  ]) => (FilterAppliedEventBuilder()..update(updates))._build();

  _$FilterAppliedEvent._({required this.atSeq, required this.filterVersion})
    : super._();
  @override
  FilterAppliedEvent rebuild(
    void Function(FilterAppliedEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FilterAppliedEventBuilder toBuilder() =>
      FilterAppliedEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterAppliedEvent &&
        atSeq == other.atSeq &&
        filterVersion == other.filterVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atSeq.hashCode);
    _$hash = $jc(_$hash, filterVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilterAppliedEvent')
          ..add('atSeq', atSeq)
          ..add('filterVersion', filterVersion))
        .toString();
  }
}

class FilterAppliedEventBuilder
    implements Builder<FilterAppliedEvent, FilterAppliedEventBuilder> {
  _$FilterAppliedEvent? _$v;

  int? _atSeq;
  int? get atSeq => _$this._atSeq;
  set atSeq(int? atSeq) => _$this._atSeq = atSeq;

  int? _filterVersion;
  int? get filterVersion => _$this._filterVersion;
  set filterVersion(int? filterVersion) =>
      _$this._filterVersion = filterVersion;

  FilterAppliedEventBuilder() {
    FilterAppliedEvent._defaults(this);
  }

  FilterAppliedEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atSeq = $v.atSeq;
      _filterVersion = $v.filterVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterAppliedEvent other) {
    _$v = other as _$FilterAppliedEvent;
  }

  @override
  void update(void Function(FilterAppliedEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilterAppliedEvent build() => _build();

  _$FilterAppliedEvent _build() {
    final _$result =
        _$v ??
        _$FilterAppliedEvent._(
          atSeq: BuiltValueNullFieldError.checkNotNull(
            atSeq,
            r'FilterAppliedEvent',
            'atSeq',
          ),
          filterVersion: BuiltValueNullFieldError.checkNotNull(
            filterVersion,
            r'FilterAppliedEvent',
            'filterVersion',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

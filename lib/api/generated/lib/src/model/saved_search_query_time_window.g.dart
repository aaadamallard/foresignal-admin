// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_search_query_time_window.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SavedSearchQueryTimeWindow extends SavedSearchQueryTimeWindow {
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final String? relative;

  factory _$SavedSearchQueryTimeWindow([
    void Function(SavedSearchQueryTimeWindowBuilder)? updates,
  ]) => (SavedSearchQueryTimeWindowBuilder()..update(updates))._build();

  _$SavedSearchQueryTimeWindow._({this.start, this.end, this.relative})
    : super._();
  @override
  SavedSearchQueryTimeWindow rebuild(
    void Function(SavedSearchQueryTimeWindowBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SavedSearchQueryTimeWindowBuilder toBuilder() =>
      SavedSearchQueryTimeWindowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SavedSearchQueryTimeWindow &&
        start == other.start &&
        end == other.end &&
        relative == other.relative;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, relative.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SavedSearchQueryTimeWindow')
          ..add('start', start)
          ..add('end', end)
          ..add('relative', relative))
        .toString();
  }
}

class SavedSearchQueryTimeWindowBuilder
    implements
        Builder<SavedSearchQueryTimeWindow, SavedSearchQueryTimeWindowBuilder> {
  _$SavedSearchQueryTimeWindow? _$v;

  DateTime? _start;
  DateTime? get start => _$this._start;
  set start(DateTime? start) => _$this._start = start;

  DateTime? _end;
  DateTime? get end => _$this._end;
  set end(DateTime? end) => _$this._end = end;

  String? _relative;
  String? get relative => _$this._relative;
  set relative(String? relative) => _$this._relative = relative;

  SavedSearchQueryTimeWindowBuilder() {
    SavedSearchQueryTimeWindow._defaults(this);
  }

  SavedSearchQueryTimeWindowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _start = $v.start;
      _end = $v.end;
      _relative = $v.relative;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SavedSearchQueryTimeWindow other) {
    _$v = other as _$SavedSearchQueryTimeWindow;
  }

  @override
  void update(void Function(SavedSearchQueryTimeWindowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SavedSearchQueryTimeWindow build() => _build();

  _$SavedSearchQueryTimeWindow _build() {
    final _$result =
        _$v ??
        _$SavedSearchQueryTimeWindow._(
          start: start,
          end: end,
          relative: relative,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

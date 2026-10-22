// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_frame_index_frames_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleFrameIndexFramesInner extends ChronicleFrameIndexFramesInner {
  @override
  final DateTime t;
  @override
  final BuiltMap<String, int> counts;
  @override
  final BuiltList<String>? changed;
  @override
  final int? changedTotal;

  factory _$ChronicleFrameIndexFramesInner([
    void Function(ChronicleFrameIndexFramesInnerBuilder)? updates,
  ]) => (ChronicleFrameIndexFramesInnerBuilder()..update(updates))._build();

  _$ChronicleFrameIndexFramesInner._({
    required this.t,
    required this.counts,
    this.changed,
    this.changedTotal,
  }) : super._();
  @override
  ChronicleFrameIndexFramesInner rebuild(
    void Function(ChronicleFrameIndexFramesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleFrameIndexFramesInnerBuilder toBuilder() =>
      ChronicleFrameIndexFramesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleFrameIndexFramesInner &&
        t == other.t &&
        counts == other.counts &&
        changed == other.changed &&
        changedTotal == other.changedTotal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, t.hashCode);
    _$hash = $jc(_$hash, counts.hashCode);
    _$hash = $jc(_$hash, changed.hashCode);
    _$hash = $jc(_$hash, changedTotal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleFrameIndexFramesInner')
          ..add('t', t)
          ..add('counts', counts)
          ..add('changed', changed)
          ..add('changedTotal', changedTotal))
        .toString();
  }
}

class ChronicleFrameIndexFramesInnerBuilder
    implements
        Builder<
          ChronicleFrameIndexFramesInner,
          ChronicleFrameIndexFramesInnerBuilder
        > {
  _$ChronicleFrameIndexFramesInner? _$v;

  DateTime? _t;
  DateTime? get t => _$this._t;
  set t(DateTime? t) => _$this._t = t;

  MapBuilder<String, int>? _counts;
  MapBuilder<String, int> get counts =>
      _$this._counts ??= MapBuilder<String, int>();
  set counts(MapBuilder<String, int>? counts) => _$this._counts = counts;

  ListBuilder<String>? _changed;
  ListBuilder<String> get changed => _$this._changed ??= ListBuilder<String>();
  set changed(ListBuilder<String>? changed) => _$this._changed = changed;

  int? _changedTotal;
  int? get changedTotal => _$this._changedTotal;
  set changedTotal(int? changedTotal) => _$this._changedTotal = changedTotal;

  ChronicleFrameIndexFramesInnerBuilder() {
    ChronicleFrameIndexFramesInner._defaults(this);
  }

  ChronicleFrameIndexFramesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _t = $v.t;
      _counts = $v.counts.toBuilder();
      _changed = $v.changed?.toBuilder();
      _changedTotal = $v.changedTotal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleFrameIndexFramesInner other) {
    _$v = other as _$ChronicleFrameIndexFramesInner;
  }

  @override
  void update(void Function(ChronicleFrameIndexFramesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleFrameIndexFramesInner build() => _build();

  _$ChronicleFrameIndexFramesInner _build() {
    _$ChronicleFrameIndexFramesInner _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleFrameIndexFramesInner._(
            t: BuiltValueNullFieldError.checkNotNull(
              t,
              r'ChronicleFrameIndexFramesInner',
              't',
            ),
            counts: counts.build(),
            changed: _changed?.build(),
            changedTotal: changedTotal,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'counts';
        counts.build();
        _$failedField = 'changed';
        _changed?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleFrameIndexFramesInner',
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

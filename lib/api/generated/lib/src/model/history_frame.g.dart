// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_frame.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HistoryFrame extends HistoryFrame {
  @override
  final DateTime t;
  @override
  final BuiltList<FrameItem> upserts;
  @override
  final BuiltList<HistoryFrameRemovalsInner> removals;

  factory _$HistoryFrame([void Function(HistoryFrameBuilder)? updates]) =>
      (HistoryFrameBuilder()..update(updates))._build();

  _$HistoryFrame._({
    required this.t,
    required this.upserts,
    required this.removals,
  }) : super._();
  @override
  HistoryFrame rebuild(void Function(HistoryFrameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryFrameBuilder toBuilder() => HistoryFrameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryFrame &&
        t == other.t &&
        upserts == other.upserts &&
        removals == other.removals;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, t.hashCode);
    _$hash = $jc(_$hash, upserts.hashCode);
    _$hash = $jc(_$hash, removals.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HistoryFrame')
          ..add('t', t)
          ..add('upserts', upserts)
          ..add('removals', removals))
        .toString();
  }
}

class HistoryFrameBuilder
    implements Builder<HistoryFrame, HistoryFrameBuilder> {
  _$HistoryFrame? _$v;

  DateTime? _t;
  DateTime? get t => _$this._t;
  set t(DateTime? t) => _$this._t = t;

  ListBuilder<FrameItem>? _upserts;
  ListBuilder<FrameItem> get upserts =>
      _$this._upserts ??= ListBuilder<FrameItem>();
  set upserts(ListBuilder<FrameItem>? upserts) => _$this._upserts = upserts;

  ListBuilder<HistoryFrameRemovalsInner>? _removals;
  ListBuilder<HistoryFrameRemovalsInner> get removals =>
      _$this._removals ??= ListBuilder<HistoryFrameRemovalsInner>();
  set removals(ListBuilder<HistoryFrameRemovalsInner>? removals) =>
      _$this._removals = removals;

  HistoryFrameBuilder() {
    HistoryFrame._defaults(this);
  }

  HistoryFrameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _t = $v.t;
      _upserts = $v.upserts.toBuilder();
      _removals = $v.removals.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryFrame other) {
    _$v = other as _$HistoryFrame;
  }

  @override
  void update(void Function(HistoryFrameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistoryFrame build() => _build();

  _$HistoryFrame _build() {
    _$HistoryFrame _$result;
    try {
      _$result =
          _$v ??
          _$HistoryFrame._(
            t: BuiltValueNullFieldError.checkNotNull(t, r'HistoryFrame', 't'),
            upserts: upserts.build(),
            removals: removals.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'upserts';
        upserts.build();
        _$failedField = 'removals';
        removals.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HistoryFrame',
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

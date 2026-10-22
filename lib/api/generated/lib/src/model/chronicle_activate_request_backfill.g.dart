// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_activate_request_backfill.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleActivateRequestBackfill
    extends ChronicleActivateRequestBackfill {
  @override
  final DateTime from;

  factory _$ChronicleActivateRequestBackfill(
          [void Function(ChronicleActivateRequestBackfillBuilder)? updates]) =>
      (ChronicleActivateRequestBackfillBuilder()..update(updates))._build();

  _$ChronicleActivateRequestBackfill._({required this.from}) : super._();
  @override
  ChronicleActivateRequestBackfill rebuild(
          void Function(ChronicleActivateRequestBackfillBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleActivateRequestBackfillBuilder toBuilder() =>
      ChronicleActivateRequestBackfillBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleActivateRequestBackfill && from == other.from;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleActivateRequestBackfill')
          ..add('from', from))
        .toString();
  }
}

class ChronicleActivateRequestBackfillBuilder
    implements
        Builder<ChronicleActivateRequestBackfill,
            ChronicleActivateRequestBackfillBuilder> {
  _$ChronicleActivateRequestBackfill? _$v;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  ChronicleActivateRequestBackfillBuilder() {
    ChronicleActivateRequestBackfill._defaults(this);
  }

  ChronicleActivateRequestBackfillBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleActivateRequestBackfill other) {
    _$v = other as _$ChronicleActivateRequestBackfill;
  }

  @override
  void update(void Function(ChronicleActivateRequestBackfillBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleActivateRequestBackfill build() => _build();

  _$ChronicleActivateRequestBackfill _build() {
    final _$result = _$v ??
        _$ChronicleActivateRequestBackfill._(
          from: BuiltValueNullFieldError.checkNotNull(
              from, r'ChronicleActivateRequestBackfill', 'from'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

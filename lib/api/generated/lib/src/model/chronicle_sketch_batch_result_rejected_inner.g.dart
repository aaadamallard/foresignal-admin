// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_sketch_batch_result_rejected_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleSketchBatchResultRejectedInner
    extends ChronicleSketchBatchResultRejectedInner {
  @override
  final String sketchId;
  @override
  final String reason;

  factory _$ChronicleSketchBatchResultRejectedInner(
          [void Function(ChronicleSketchBatchResultRejectedInnerBuilder)?
              updates]) =>
      (ChronicleSketchBatchResultRejectedInnerBuilder()..update(updates))
          ._build();

  _$ChronicleSketchBatchResultRejectedInner._(
      {required this.sketchId, required this.reason})
      : super._();
  @override
  ChronicleSketchBatchResultRejectedInner rebuild(
          void Function(ChronicleSketchBatchResultRejectedInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleSketchBatchResultRejectedInnerBuilder toBuilder() =>
      ChronicleSketchBatchResultRejectedInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSketchBatchResultRejectedInner &&
        sketchId == other.sketchId &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sketchId.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ChronicleSketchBatchResultRejectedInner')
          ..add('sketchId', sketchId)
          ..add('reason', reason))
        .toString();
  }
}

class ChronicleSketchBatchResultRejectedInnerBuilder
    implements
        Builder<ChronicleSketchBatchResultRejectedInner,
            ChronicleSketchBatchResultRejectedInnerBuilder> {
  _$ChronicleSketchBatchResultRejectedInner? _$v;

  String? _sketchId;
  String? get sketchId => _$this._sketchId;
  set sketchId(String? sketchId) => _$this._sketchId = sketchId;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ChronicleSketchBatchResultRejectedInnerBuilder() {
    ChronicleSketchBatchResultRejectedInner._defaults(this);
  }

  ChronicleSketchBatchResultRejectedInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sketchId = $v.sketchId;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSketchBatchResultRejectedInner other) {
    _$v = other as _$ChronicleSketchBatchResultRejectedInner;
  }

  @override
  void update(
      void Function(ChronicleSketchBatchResultRejectedInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSketchBatchResultRejectedInner build() => _build();

  _$ChronicleSketchBatchResultRejectedInner _build() {
    final _$result = _$v ??
        _$ChronicleSketchBatchResultRejectedInner._(
          sketchId: BuiltValueNullFieldError.checkNotNull(
              sketchId, r'ChronicleSketchBatchResultRejectedInner', 'sketchId'),
          reason: BuiltValueNullFieldError.checkNotNull(
              reason, r'ChronicleSketchBatchResultRejectedInner', 'reason'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_sketch_batch_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleSketchBatchResult extends ChronicleSketchBatchResult {
  @override
  final int accepted;
  @override
  final BuiltList<ChronicleSketchBatchResultRejectedInner> rejected;

  factory _$ChronicleSketchBatchResult([
    void Function(ChronicleSketchBatchResultBuilder)? updates,
  ]) => (ChronicleSketchBatchResultBuilder()..update(updates))._build();

  _$ChronicleSketchBatchResult._({
    required this.accepted,
    required this.rejected,
  }) : super._();
  @override
  ChronicleSketchBatchResult rebuild(
    void Function(ChronicleSketchBatchResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleSketchBatchResultBuilder toBuilder() =>
      ChronicleSketchBatchResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSketchBatchResult &&
        accepted == other.accepted &&
        rejected == other.rejected;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accepted.hashCode);
    _$hash = $jc(_$hash, rejected.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleSketchBatchResult')
          ..add('accepted', accepted)
          ..add('rejected', rejected))
        .toString();
  }
}

class ChronicleSketchBatchResultBuilder
    implements
        Builder<ChronicleSketchBatchResult, ChronicleSketchBatchResultBuilder> {
  _$ChronicleSketchBatchResult? _$v;

  int? _accepted;
  int? get accepted => _$this._accepted;
  set accepted(int? accepted) => _$this._accepted = accepted;

  ListBuilder<ChronicleSketchBatchResultRejectedInner>? _rejected;
  ListBuilder<ChronicleSketchBatchResultRejectedInner> get rejected =>
      _$this._rejected ??=
          ListBuilder<ChronicleSketchBatchResultRejectedInner>();
  set rejected(
    ListBuilder<ChronicleSketchBatchResultRejectedInner>? rejected,
  ) => _$this._rejected = rejected;

  ChronicleSketchBatchResultBuilder() {
    ChronicleSketchBatchResult._defaults(this);
  }

  ChronicleSketchBatchResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accepted = $v.accepted;
      _rejected = $v.rejected.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSketchBatchResult other) {
    _$v = other as _$ChronicleSketchBatchResult;
  }

  @override
  void update(void Function(ChronicleSketchBatchResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSketchBatchResult build() => _build();

  _$ChronicleSketchBatchResult _build() {
    _$ChronicleSketchBatchResult _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleSketchBatchResult._(
            accepted: BuiltValueNullFieldError.checkNotNull(
              accepted,
              r'ChronicleSketchBatchResult',
              'accepted',
            ),
            rejected: rejected.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rejected';
        rejected.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleSketchBatchResult',
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

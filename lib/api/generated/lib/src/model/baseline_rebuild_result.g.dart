// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baseline_rebuild_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaselineRebuildResult extends BaselineRebuildResult {
  @override
  final String ruleId;
  @override
  final bool accepted;
  @override
  final num? weeksAvailable;
  @override
  final DateTime? backfillFrom;

  factory _$BaselineRebuildResult(
          [void Function(BaselineRebuildResultBuilder)? updates]) =>
      (BaselineRebuildResultBuilder()..update(updates))._build();

  _$BaselineRebuildResult._(
      {required this.ruleId,
      required this.accepted,
      this.weeksAvailable,
      this.backfillFrom})
      : super._();
  @override
  BaselineRebuildResult rebuild(
          void Function(BaselineRebuildResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaselineRebuildResultBuilder toBuilder() =>
      BaselineRebuildResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaselineRebuildResult &&
        ruleId == other.ruleId &&
        accepted == other.accepted &&
        weeksAvailable == other.weeksAvailable &&
        backfillFrom == other.backfillFrom;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, accepted.hashCode);
    _$hash = $jc(_$hash, weeksAvailable.hashCode);
    _$hash = $jc(_$hash, backfillFrom.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BaselineRebuildResult')
          ..add('ruleId', ruleId)
          ..add('accepted', accepted)
          ..add('weeksAvailable', weeksAvailable)
          ..add('backfillFrom', backfillFrom))
        .toString();
  }
}

class BaselineRebuildResultBuilder
    implements Builder<BaselineRebuildResult, BaselineRebuildResultBuilder> {
  _$BaselineRebuildResult? _$v;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  bool? _accepted;
  bool? get accepted => _$this._accepted;
  set accepted(bool? accepted) => _$this._accepted = accepted;

  num? _weeksAvailable;
  num? get weeksAvailable => _$this._weeksAvailable;
  set weeksAvailable(num? weeksAvailable) =>
      _$this._weeksAvailable = weeksAvailable;

  DateTime? _backfillFrom;
  DateTime? get backfillFrom => _$this._backfillFrom;
  set backfillFrom(DateTime? backfillFrom) =>
      _$this._backfillFrom = backfillFrom;

  BaselineRebuildResultBuilder() {
    BaselineRebuildResult._defaults(this);
  }

  BaselineRebuildResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleId = $v.ruleId;
      _accepted = $v.accepted;
      _weeksAvailable = $v.weeksAvailable;
      _backfillFrom = $v.backfillFrom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaselineRebuildResult other) {
    _$v = other as _$BaselineRebuildResult;
  }

  @override
  void update(void Function(BaselineRebuildResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BaselineRebuildResult build() => _build();

  _$BaselineRebuildResult _build() {
    final _$result = _$v ??
        _$BaselineRebuildResult._(
          ruleId: BuiltValueNullFieldError.checkNotNull(
              ruleId, r'BaselineRebuildResult', 'ruleId'),
          accepted: BuiltValueNullFieldError.checkNotNull(
              accepted, r'BaselineRebuildResult', 'accepted'),
          weeksAvailable: weeksAvailable,
          backfillFrom: backfillFrom,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_backtest_result_variants_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleBacktestResultVariantsInner
    extends RuleBacktestResultVariantsInner {
  @override
  final int index;
  @override
  final BuiltMap<String, JsonObject?> patch_;
  @override
  final int wouldFire;
  @override
  final BuiltList<RuleBacktestResultPerDayInner>? perDay;
  @override
  final RuleBacktestResultOverlap? overlap;

  factory _$RuleBacktestResultVariantsInner([
    void Function(RuleBacktestResultVariantsInnerBuilder)? updates,
  ]) => (RuleBacktestResultVariantsInnerBuilder()..update(updates))._build();

  _$RuleBacktestResultVariantsInner._({
    required this.index,
    required this.patch_,
    required this.wouldFire,
    this.perDay,
    this.overlap,
  }) : super._();
  @override
  RuleBacktestResultVariantsInner rebuild(
    void Function(RuleBacktestResultVariantsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RuleBacktestResultVariantsInnerBuilder toBuilder() =>
      RuleBacktestResultVariantsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleBacktestResultVariantsInner &&
        index == other.index &&
        patch_ == other.patch_ &&
        wouldFire == other.wouldFire &&
        perDay == other.perDay &&
        overlap == other.overlap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, patch_.hashCode);
    _$hash = $jc(_$hash, wouldFire.hashCode);
    _$hash = $jc(_$hash, perDay.hashCode);
    _$hash = $jc(_$hash, overlap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleBacktestResultVariantsInner')
          ..add('index', index)
          ..add('patch_', patch_)
          ..add('wouldFire', wouldFire)
          ..add('perDay', perDay)
          ..add('overlap', overlap))
        .toString();
  }
}

class RuleBacktestResultVariantsInnerBuilder
    implements
        Builder<
          RuleBacktestResultVariantsInner,
          RuleBacktestResultVariantsInnerBuilder
        > {
  _$RuleBacktestResultVariantsInner? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  MapBuilder<String, JsonObject?>? _patch_;
  MapBuilder<String, JsonObject?> get patch_ =>
      _$this._patch_ ??= MapBuilder<String, JsonObject?>();
  set patch_(MapBuilder<String, JsonObject?>? patch_) =>
      _$this._patch_ = patch_;

  int? _wouldFire;
  int? get wouldFire => _$this._wouldFire;
  set wouldFire(int? wouldFire) => _$this._wouldFire = wouldFire;

  ListBuilder<RuleBacktestResultPerDayInner>? _perDay;
  ListBuilder<RuleBacktestResultPerDayInner> get perDay =>
      _$this._perDay ??= ListBuilder<RuleBacktestResultPerDayInner>();
  set perDay(ListBuilder<RuleBacktestResultPerDayInner>? perDay) =>
      _$this._perDay = perDay;

  RuleBacktestResultOverlapBuilder? _overlap;
  RuleBacktestResultOverlapBuilder get overlap =>
      _$this._overlap ??= RuleBacktestResultOverlapBuilder();
  set overlap(RuleBacktestResultOverlapBuilder? overlap) =>
      _$this._overlap = overlap;

  RuleBacktestResultVariantsInnerBuilder() {
    RuleBacktestResultVariantsInner._defaults(this);
  }

  RuleBacktestResultVariantsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _patch_ = $v.patch_.toBuilder();
      _wouldFire = $v.wouldFire;
      _perDay = $v.perDay?.toBuilder();
      _overlap = $v.overlap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleBacktestResultVariantsInner other) {
    _$v = other as _$RuleBacktestResultVariantsInner;
  }

  @override
  void update(void Function(RuleBacktestResultVariantsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleBacktestResultVariantsInner build() => _build();

  _$RuleBacktestResultVariantsInner _build() {
    _$RuleBacktestResultVariantsInner _$result;
    try {
      _$result =
          _$v ??
          _$RuleBacktestResultVariantsInner._(
            index: BuiltValueNullFieldError.checkNotNull(
              index,
              r'RuleBacktestResultVariantsInner',
              'index',
            ),
            patch_: patch_.build(),
            wouldFire: BuiltValueNullFieldError.checkNotNull(
              wouldFire,
              r'RuleBacktestResultVariantsInner',
              'wouldFire',
            ),
            perDay: _perDay?.build(),
            overlap: _overlap?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patch_';
        patch_.build();

        _$failedField = 'perDay';
        _perDay?.build();
        _$failedField = 'overlap';
        _overlap?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RuleBacktestResultVariantsInner',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_cap_override.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HypothesisCapOverride extends HypothesisCapOverride {
  @override
  final String by;
  @override
  final DateTime at;
  @override
  final String rationale;

  factory _$HypothesisCapOverride(
          [void Function(HypothesisCapOverrideBuilder)? updates]) =>
      (HypothesisCapOverrideBuilder()..update(updates))._build();

  _$HypothesisCapOverride._(
      {required this.by, required this.at, required this.rationale})
      : super._();
  @override
  HypothesisCapOverride rebuild(
          void Function(HypothesisCapOverrideBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HypothesisCapOverrideBuilder toBuilder() =>
      HypothesisCapOverrideBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisCapOverride &&
        by == other.by &&
        at == other.at &&
        rationale == other.rationale;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, by.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, rationale.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisCapOverride')
          ..add('by', by)
          ..add('at', at)
          ..add('rationale', rationale))
        .toString();
  }
}

class HypothesisCapOverrideBuilder
    implements Builder<HypothesisCapOverride, HypothesisCapOverrideBuilder> {
  _$HypothesisCapOverride? _$v;

  String? _by;
  String? get by => _$this._by;
  set by(String? by) => _$this._by = by;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  String? _rationale;
  String? get rationale => _$this._rationale;
  set rationale(String? rationale) => _$this._rationale = rationale;

  HypothesisCapOverrideBuilder() {
    HypothesisCapOverride._defaults(this);
  }

  HypothesisCapOverrideBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _by = $v.by;
      _at = $v.at;
      _rationale = $v.rationale;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisCapOverride other) {
    _$v = other as _$HypothesisCapOverride;
  }

  @override
  void update(void Function(HypothesisCapOverrideBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisCapOverride build() => _build();

  _$HypothesisCapOverride _build() {
    final _$result = _$v ??
        _$HypothesisCapOverride._(
          by: BuiltValueNullFieldError.checkNotNull(
              by, r'HypothesisCapOverride', 'by'),
          at: BuiltValueNullFieldError.checkNotNull(
              at, r'HypothesisCapOverride', 'at'),
          rationale: BuiltValueNullFieldError.checkNotNull(
              rationale, r'HypothesisCapOverride', 'rationale'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

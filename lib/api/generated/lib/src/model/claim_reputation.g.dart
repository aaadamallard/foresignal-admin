// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_reputation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClaimReputation extends ClaimReputation {
  @override
  final String outletId;
  @override
  final String factuality;
  @override
  final String? lean;
  @override
  final bool stateAffiliated;

  factory _$ClaimReputation([void Function(ClaimReputationBuilder)? updates]) =>
      (ClaimReputationBuilder()..update(updates))._build();

  _$ClaimReputation._(
      {required this.outletId,
      required this.factuality,
      this.lean,
      required this.stateAffiliated})
      : super._();
  @override
  ClaimReputation rebuild(void Function(ClaimReputationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimReputationBuilder toBuilder() => ClaimReputationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClaimReputation &&
        outletId == other.outletId &&
        factuality == other.factuality &&
        lean == other.lean &&
        stateAffiliated == other.stateAffiliated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, outletId.hashCode);
    _$hash = $jc(_$hash, factuality.hashCode);
    _$hash = $jc(_$hash, lean.hashCode);
    _$hash = $jc(_$hash, stateAffiliated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClaimReputation')
          ..add('outletId', outletId)
          ..add('factuality', factuality)
          ..add('lean', lean)
          ..add('stateAffiliated', stateAffiliated))
        .toString();
  }
}

class ClaimReputationBuilder
    implements Builder<ClaimReputation, ClaimReputationBuilder> {
  _$ClaimReputation? _$v;

  String? _outletId;
  String? get outletId => _$this._outletId;
  set outletId(String? outletId) => _$this._outletId = outletId;

  String? _factuality;
  String? get factuality => _$this._factuality;
  set factuality(String? factuality) => _$this._factuality = factuality;

  String? _lean;
  String? get lean => _$this._lean;
  set lean(String? lean) => _$this._lean = lean;

  bool? _stateAffiliated;
  bool? get stateAffiliated => _$this._stateAffiliated;
  set stateAffiliated(bool? stateAffiliated) =>
      _$this._stateAffiliated = stateAffiliated;

  ClaimReputationBuilder() {
    ClaimReputation._defaults(this);
  }

  ClaimReputationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _outletId = $v.outletId;
      _factuality = $v.factuality;
      _lean = $v.lean;
      _stateAffiliated = $v.stateAffiliated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClaimReputation other) {
    _$v = other as _$ClaimReputation;
  }

  @override
  void update(void Function(ClaimReputationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClaimReputation build() => _build();

  _$ClaimReputation _build() {
    final _$result = _$v ??
        _$ClaimReputation._(
          outletId: BuiltValueNullFieldError.checkNotNull(
              outletId, r'ClaimReputation', 'outletId'),
          factuality: BuiltValueNullFieldError.checkNotNull(
              factuality, r'ClaimReputation', 'factuality'),
          lean: lean,
          stateAffiliated: BuiltValueNullFieldError.checkNotNull(
              stateAffiliated, r'ClaimReputation', 'stateAffiliated'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

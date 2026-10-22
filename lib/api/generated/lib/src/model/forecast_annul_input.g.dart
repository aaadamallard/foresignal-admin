// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_annul_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastAnnulInput extends ForecastAnnulInput {
  @override
  final String reason;

  factory _$ForecastAnnulInput([
    void Function(ForecastAnnulInputBuilder)? updates,
  ]) => (ForecastAnnulInputBuilder()..update(updates))._build();

  _$ForecastAnnulInput._({required this.reason}) : super._();
  @override
  ForecastAnnulInput rebuild(
    void Function(ForecastAnnulInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ForecastAnnulInputBuilder toBuilder() =>
      ForecastAnnulInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastAnnulInput && reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ForecastAnnulInput',
    )..add('reason', reason)).toString();
  }
}

class ForecastAnnulInputBuilder
    implements Builder<ForecastAnnulInput, ForecastAnnulInputBuilder> {
  _$ForecastAnnulInput? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ForecastAnnulInputBuilder() {
    ForecastAnnulInput._defaults(this);
  }

  ForecastAnnulInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastAnnulInput other) {
    _$v = other as _$ForecastAnnulInput;
  }

  @override
  void update(void Function(ForecastAnnulInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastAnnulInput build() => _build();

  _$ForecastAnnulInput _build() {
    final _$result =
        _$v ??
        _$ForecastAnnulInput._(
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'ForecastAnnulInput',
            'reason',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

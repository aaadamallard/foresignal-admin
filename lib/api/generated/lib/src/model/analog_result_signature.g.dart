// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analog_result_signature.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalogResultSignature extends AnalogResultSignature {
  @override
  final int dayN;
  @override
  final DateTime? computedAt;

  factory _$AnalogResultSignature([
    void Function(AnalogResultSignatureBuilder)? updates,
  ]) => (AnalogResultSignatureBuilder()..update(updates))._build();

  _$AnalogResultSignature._({required this.dayN, this.computedAt}) : super._();
  @override
  AnalogResultSignature rebuild(
    void Function(AnalogResultSignatureBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnalogResultSignatureBuilder toBuilder() =>
      AnalogResultSignatureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalogResultSignature &&
        dayN == other.dayN &&
        computedAt == other.computedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dayN.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalogResultSignature')
          ..add('dayN', dayN)
          ..add('computedAt', computedAt))
        .toString();
  }
}

class AnalogResultSignatureBuilder
    implements Builder<AnalogResultSignature, AnalogResultSignatureBuilder> {
  _$AnalogResultSignature? _$v;

  int? _dayN;
  int? get dayN => _$this._dayN;
  set dayN(int? dayN) => _$this._dayN = dayN;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  AnalogResultSignatureBuilder() {
    AnalogResultSignature._defaults(this);
  }

  AnalogResultSignatureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dayN = $v.dayN;
      _computedAt = $v.computedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalogResultSignature other) {
    _$v = other as _$AnalogResultSignature;
  }

  @override
  void update(void Function(AnalogResultSignatureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalogResultSignature build() => _build();

  _$AnalogResultSignature _build() {
    final _$result =
        _$v ??
        _$AnalogResultSignature._(
          dayN: BuiltValueNullFieldError.checkNotNull(
            dayN,
            r'AnalogResultSignature',
            'dayN',
          ),
          computedAt: computedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digest_next.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DigestNext extends DigestNext {
  @override
  final int sinceSeq;
  @override
  final int? sinceAlertId;

  factory _$DigestNext([void Function(DigestNextBuilder)? updates]) =>
      (DigestNextBuilder()..update(updates))._build();

  _$DigestNext._({required this.sinceSeq, this.sinceAlertId}) : super._();
  @override
  DigestNext rebuild(void Function(DigestNextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DigestNextBuilder toBuilder() => DigestNextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DigestNext &&
        sinceSeq == other.sinceSeq &&
        sinceAlertId == other.sinceAlertId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sinceSeq.hashCode);
    _$hash = $jc(_$hash, sinceAlertId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DigestNext')
          ..add('sinceSeq', sinceSeq)
          ..add('sinceAlertId', sinceAlertId))
        .toString();
  }
}

class DigestNextBuilder implements Builder<DigestNext, DigestNextBuilder> {
  _$DigestNext? _$v;

  int? _sinceSeq;
  int? get sinceSeq => _$this._sinceSeq;
  set sinceSeq(int? sinceSeq) => _$this._sinceSeq = sinceSeq;

  int? _sinceAlertId;
  int? get sinceAlertId => _$this._sinceAlertId;
  set sinceAlertId(int? sinceAlertId) => _$this._sinceAlertId = sinceAlertId;

  DigestNextBuilder() {
    DigestNext._defaults(this);
  }

  DigestNextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sinceSeq = $v.sinceSeq;
      _sinceAlertId = $v.sinceAlertId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DigestNext other) {
    _$v = other as _$DigestNext;
  }

  @override
  void update(void Function(DigestNextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DigestNext build() => _build();

  _$DigestNext _build() {
    final _$result = _$v ??
        _$DigestNext._(
          sinceSeq: BuiltValueNullFieldError.checkNotNull(
              sinceSeq, r'DigestNext', 'sinceSeq'),
          sinceAlertId: sinceAlertId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

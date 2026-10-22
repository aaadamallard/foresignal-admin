// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cot_backfill_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CotBackfillRequest extends CotBackfillRequest {
  @override
  final Date? from;

  factory _$CotBackfillRequest(
          [void Function(CotBackfillRequestBuilder)? updates]) =>
      (CotBackfillRequestBuilder()..update(updates))._build();

  _$CotBackfillRequest._({this.from}) : super._();
  @override
  CotBackfillRequest rebuild(
          void Function(CotBackfillRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CotBackfillRequestBuilder toBuilder() =>
      CotBackfillRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CotBackfillRequest && from == other.from;
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
    return (newBuiltValueToStringHelper(r'CotBackfillRequest')
          ..add('from', from))
        .toString();
  }
}

class CotBackfillRequestBuilder
    implements Builder<CotBackfillRequest, CotBackfillRequestBuilder> {
  _$CotBackfillRequest? _$v;

  Date? _from;
  Date? get from => _$this._from;
  set from(Date? from) => _$this._from = from;

  CotBackfillRequestBuilder() {
    CotBackfillRequest._defaults(this);
  }

  CotBackfillRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CotBackfillRequest other) {
    _$v = other as _$CotBackfillRequest;
  }

  @override
  void update(void Function(CotBackfillRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CotBackfillRequest build() => _build();

  _$CotBackfillRequest _build() {
    final _$result = _$v ??
        _$CotBackfillRequest._(
          from: from,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

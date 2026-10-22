// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_activate_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleActivateRequest extends ChronicleActivateRequest {
  @override
  final ChronicleActivateRequestBackfill? backfill;

  factory _$ChronicleActivateRequest([
    void Function(ChronicleActivateRequestBuilder)? updates,
  ]) => (ChronicleActivateRequestBuilder()..update(updates))._build();

  _$ChronicleActivateRequest._({this.backfill}) : super._();
  @override
  ChronicleActivateRequest rebuild(
    void Function(ChronicleActivateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleActivateRequestBuilder toBuilder() =>
      ChronicleActivateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleActivateRequest && backfill == other.backfill;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, backfill.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ChronicleActivateRequest',
    )..add('backfill', backfill)).toString();
  }
}

class ChronicleActivateRequestBuilder
    implements
        Builder<ChronicleActivateRequest, ChronicleActivateRequestBuilder> {
  _$ChronicleActivateRequest? _$v;

  ChronicleActivateRequestBackfillBuilder? _backfill;
  ChronicleActivateRequestBackfillBuilder get backfill =>
      _$this._backfill ??= ChronicleActivateRequestBackfillBuilder();
  set backfill(ChronicleActivateRequestBackfillBuilder? backfill) =>
      _$this._backfill = backfill;

  ChronicleActivateRequestBuilder() {
    ChronicleActivateRequest._defaults(this);
  }

  ChronicleActivateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backfill = $v.backfill?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleActivateRequest other) {
    _$v = other as _$ChronicleActivateRequest;
  }

  @override
  void update(void Function(ChronicleActivateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleActivateRequest build() => _build();

  _$ChronicleActivateRequest _build() {
    _$ChronicleActivateRequest _$result;
    try {
      _$result =
          _$v ?? _$ChronicleActivateRequest._(backfill: _backfill?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'backfill';
        _backfill?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleActivateRequest',
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

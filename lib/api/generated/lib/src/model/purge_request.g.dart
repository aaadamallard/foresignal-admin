// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purge_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PurgeRequest extends PurgeRequest {
  @override
  final bool? purgeAlerts;

  factory _$PurgeRequest([void Function(PurgeRequestBuilder)? updates]) =>
      (PurgeRequestBuilder()..update(updates))._build();

  _$PurgeRequest._({this.purgeAlerts}) : super._();
  @override
  PurgeRequest rebuild(void Function(PurgeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PurgeRequestBuilder toBuilder() => PurgeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PurgeRequest && purgeAlerts == other.purgeAlerts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, purgeAlerts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'PurgeRequest',
    )..add('purgeAlerts', purgeAlerts)).toString();
  }
}

class PurgeRequestBuilder
    implements Builder<PurgeRequest, PurgeRequestBuilder> {
  _$PurgeRequest? _$v;

  bool? _purgeAlerts;
  bool? get purgeAlerts => _$this._purgeAlerts;
  set purgeAlerts(bool? purgeAlerts) => _$this._purgeAlerts = purgeAlerts;

  PurgeRequestBuilder() {
    PurgeRequest._defaults(this);
  }

  PurgeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _purgeAlerts = $v.purgeAlerts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PurgeRequest other) {
    _$v = other as _$PurgeRequest;
  }

  @override
  void update(void Function(PurgeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PurgeRequest build() => _build();

  _$PurgeRequest _build() {
    final _$result = _$v ?? _$PurgeRequest._(purgeAlerts: purgeAlerts);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

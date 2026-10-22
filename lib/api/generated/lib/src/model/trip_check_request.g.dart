// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_check_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TripCheckRequest extends TripCheckRequest {
  @override
  final bool? dryRun;
  @override
  final DateTime? occurrence;

  factory _$TripCheckRequest(
          [void Function(TripCheckRequestBuilder)? updates]) =>
      (TripCheckRequestBuilder()..update(updates))._build();

  _$TripCheckRequest._({this.dryRun, this.occurrence}) : super._();
  @override
  TripCheckRequest rebuild(void Function(TripCheckRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TripCheckRequestBuilder toBuilder() =>
      TripCheckRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TripCheckRequest &&
        dryRun == other.dryRun &&
        occurrence == other.occurrence;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, occurrence.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TripCheckRequest')
          ..add('dryRun', dryRun)
          ..add('occurrence', occurrence))
        .toString();
  }
}

class TripCheckRequestBuilder
    implements Builder<TripCheckRequest, TripCheckRequestBuilder> {
  _$TripCheckRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DateTime? _occurrence;
  DateTime? get occurrence => _$this._occurrence;
  set occurrence(DateTime? occurrence) => _$this._occurrence = occurrence;

  TripCheckRequestBuilder() {
    TripCheckRequest._defaults(this);
  }

  TripCheckRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _occurrence = $v.occurrence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TripCheckRequest other) {
    _$v = other as _$TripCheckRequest;
  }

  @override
  void update(void Function(TripCheckRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TripCheckRequest build() => _build();

  _$TripCheckRequest _build() {
    final _$result = _$v ??
        _$TripCheckRequest._(
          dryRun: dryRun,
          occurrence: occurrence,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

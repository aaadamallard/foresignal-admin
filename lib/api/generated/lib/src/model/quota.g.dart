// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quota.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Quota extends Quota {
  @override
  final int? apiRateLimitPerMinute;
  @override
  final int? maxStorageBytes;
  @override
  final int? maxAlerts;
  @override
  final int? maxChannels;
  @override
  final int? maxSavedViews;

  factory _$Quota([void Function(QuotaBuilder)? updates]) =>
      (QuotaBuilder()..update(updates))._build();

  _$Quota._({
    this.apiRateLimitPerMinute,
    this.maxStorageBytes,
    this.maxAlerts,
    this.maxChannels,
    this.maxSavedViews,
  }) : super._();
  @override
  Quota rebuild(void Function(QuotaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuotaBuilder toBuilder() => QuotaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Quota &&
        apiRateLimitPerMinute == other.apiRateLimitPerMinute &&
        maxStorageBytes == other.maxStorageBytes &&
        maxAlerts == other.maxAlerts &&
        maxChannels == other.maxChannels &&
        maxSavedViews == other.maxSavedViews;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, apiRateLimitPerMinute.hashCode);
    _$hash = $jc(_$hash, maxStorageBytes.hashCode);
    _$hash = $jc(_$hash, maxAlerts.hashCode);
    _$hash = $jc(_$hash, maxChannels.hashCode);
    _$hash = $jc(_$hash, maxSavedViews.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Quota')
          ..add('apiRateLimitPerMinute', apiRateLimitPerMinute)
          ..add('maxStorageBytes', maxStorageBytes)
          ..add('maxAlerts', maxAlerts)
          ..add('maxChannels', maxChannels)
          ..add('maxSavedViews', maxSavedViews))
        .toString();
  }
}

class QuotaBuilder implements Builder<Quota, QuotaBuilder> {
  _$Quota? _$v;

  int? _apiRateLimitPerMinute;
  int? get apiRateLimitPerMinute => _$this._apiRateLimitPerMinute;
  set apiRateLimitPerMinute(int? apiRateLimitPerMinute) =>
      _$this._apiRateLimitPerMinute = apiRateLimitPerMinute;

  int? _maxStorageBytes;
  int? get maxStorageBytes => _$this._maxStorageBytes;
  set maxStorageBytes(int? maxStorageBytes) =>
      _$this._maxStorageBytes = maxStorageBytes;

  int? _maxAlerts;
  int? get maxAlerts => _$this._maxAlerts;
  set maxAlerts(int? maxAlerts) => _$this._maxAlerts = maxAlerts;

  int? _maxChannels;
  int? get maxChannels => _$this._maxChannels;
  set maxChannels(int? maxChannels) => _$this._maxChannels = maxChannels;

  int? _maxSavedViews;
  int? get maxSavedViews => _$this._maxSavedViews;
  set maxSavedViews(int? maxSavedViews) =>
      _$this._maxSavedViews = maxSavedViews;

  QuotaBuilder() {
    Quota._defaults(this);
  }

  QuotaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiRateLimitPerMinute = $v.apiRateLimitPerMinute;
      _maxStorageBytes = $v.maxStorageBytes;
      _maxAlerts = $v.maxAlerts;
      _maxChannels = $v.maxChannels;
      _maxSavedViews = $v.maxSavedViews;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Quota other) {
    _$v = other as _$Quota;
  }

  @override
  void update(void Function(QuotaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Quota build() => _build();

  _$Quota _build() {
    final _$result =
        _$v ??
        _$Quota._(
          apiRateLimitPerMinute: apiRateLimitPerMinute,
          maxStorageBytes: maxStorageBytes,
          maxAlerts: maxAlerts,
          maxChannels: maxChannels,
          maxSavedViews: maxSavedViews,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

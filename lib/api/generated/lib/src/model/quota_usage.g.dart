// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quota_usage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuotaUsage extends QuotaUsage {
  @override
  final Quota quota;
  @override
  final BuiltMap<String, JsonObject?> usage;

  factory _$QuotaUsage([void Function(QuotaUsageBuilder)? updates]) =>
      (QuotaUsageBuilder()..update(updates))._build();

  _$QuotaUsage._({required this.quota, required this.usage}) : super._();
  @override
  QuotaUsage rebuild(void Function(QuotaUsageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuotaUsageBuilder toBuilder() => QuotaUsageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuotaUsage && quota == other.quota && usage == other.usage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, quota.hashCode);
    _$hash = $jc(_$hash, usage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuotaUsage')
          ..add('quota', quota)
          ..add('usage', usage))
        .toString();
  }
}

class QuotaUsageBuilder implements Builder<QuotaUsage, QuotaUsageBuilder> {
  _$QuotaUsage? _$v;

  QuotaBuilder? _quota;
  QuotaBuilder get quota => _$this._quota ??= QuotaBuilder();
  set quota(QuotaBuilder? quota) => _$this._quota = quota;

  MapBuilder<String, JsonObject?>? _usage;
  MapBuilder<String, JsonObject?> get usage =>
      _$this._usage ??= MapBuilder<String, JsonObject?>();
  set usage(MapBuilder<String, JsonObject?>? usage) => _$this._usage = usage;

  QuotaUsageBuilder() {
    QuotaUsage._defaults(this);
  }

  QuotaUsageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quota = $v.quota.toBuilder();
      _usage = $v.usage.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuotaUsage other) {
    _$v = other as _$QuotaUsage;
  }

  @override
  void update(void Function(QuotaUsageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuotaUsage build() => _build();

  _$QuotaUsage _build() {
    _$QuotaUsage _$result;
    try {
      _$result =
          _$v ?? _$QuotaUsage._(quota: quota.build(), usage: usage.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'quota';
        quota.build();
        _$failedField = 'usage';
        usage.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'QuotaUsage',
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

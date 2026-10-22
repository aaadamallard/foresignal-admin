// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collector_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CollectorSettings extends CollectorSettings {
  @override
  final int maxConcurrentPulls;

  factory _$CollectorSettings(
          [void Function(CollectorSettingsBuilder)? updates]) =>
      (CollectorSettingsBuilder()..update(updates))._build();

  _$CollectorSettings._({required this.maxConcurrentPulls}) : super._();
  @override
  CollectorSettings rebuild(void Function(CollectorSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectorSettingsBuilder toBuilder() =>
      CollectorSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectorSettings &&
        maxConcurrentPulls == other.maxConcurrentPulls;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxConcurrentPulls.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollectorSettings')
          ..add('maxConcurrentPulls', maxConcurrentPulls))
        .toString();
  }
}

class CollectorSettingsBuilder
    implements Builder<CollectorSettings, CollectorSettingsBuilder> {
  _$CollectorSettings? _$v;

  int? _maxConcurrentPulls;
  int? get maxConcurrentPulls => _$this._maxConcurrentPulls;
  set maxConcurrentPulls(int? maxConcurrentPulls) =>
      _$this._maxConcurrentPulls = maxConcurrentPulls;

  CollectorSettingsBuilder() {
    CollectorSettings._defaults(this);
  }

  CollectorSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxConcurrentPulls = $v.maxConcurrentPulls;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectorSettings other) {
    _$v = other as _$CollectorSettings;
  }

  @override
  void update(void Function(CollectorSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollectorSettings build() => _build();

  _$CollectorSettings _build() {
    final _$result = _$v ??
        _$CollectorSettings._(
          maxConcurrentPulls: BuiltValueNullFieldError.checkNotNull(
              maxConcurrentPulls, r'CollectorSettings', 'maxConcurrentPulls'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metric_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricSettings extends MetricSettings {
  @override
  final BuiltList<MetricProjection> projections;

  factory _$MetricSettings([void Function(MetricSettingsBuilder)? updates]) =>
      (MetricSettingsBuilder()..update(updates))._build();

  _$MetricSettings._({required this.projections}) : super._();
  @override
  MetricSettings rebuild(void Function(MetricSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetricSettingsBuilder toBuilder() => MetricSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricSettings && projections == other.projections;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, projections.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'MetricSettings',
    )..add('projections', projections)).toString();
  }
}

class MetricSettingsBuilder
    implements Builder<MetricSettings, MetricSettingsBuilder> {
  _$MetricSettings? _$v;

  ListBuilder<MetricProjection>? _projections;
  ListBuilder<MetricProjection> get projections =>
      _$this._projections ??= ListBuilder<MetricProjection>();
  set projections(ListBuilder<MetricProjection>? projections) =>
      _$this._projections = projections;

  MetricSettingsBuilder() {
    MetricSettings._defaults(this);
  }

  MetricSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projections = $v.projections.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricSettings other) {
    _$v = other as _$MetricSettings;
  }

  @override
  void update(void Function(MetricSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricSettings build() => _build();

  _$MetricSettings _build() {
    _$MetricSettings _$result;
    try {
      _$result = _$v ?? _$MetricSettings._(projections: projections.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'projections';
        projections.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MetricSettings',
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

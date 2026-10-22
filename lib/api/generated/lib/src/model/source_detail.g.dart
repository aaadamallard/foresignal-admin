// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SourceDetail extends SourceDetail {
  @override
  final SourceDescriptor descriptor;
  @override
  final SourceSettings settings;
  @override
  final SourceHealth health;

  factory _$SourceDetail([void Function(SourceDetailBuilder)? updates]) =>
      (SourceDetailBuilder()..update(updates))._build();

  _$SourceDetail._(
      {required this.descriptor, required this.settings, required this.health})
      : super._();
  @override
  SourceDetail rebuild(void Function(SourceDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceDetailBuilder toBuilder() => SourceDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceDetail &&
        descriptor == other.descriptor &&
        settings == other.settings &&
        health == other.health;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, descriptor.hashCode);
    _$hash = $jc(_$hash, settings.hashCode);
    _$hash = $jc(_$hash, health.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SourceDetail')
          ..add('descriptor', descriptor)
          ..add('settings', settings)
          ..add('health', health))
        .toString();
  }
}

class SourceDetailBuilder
    implements Builder<SourceDetail, SourceDetailBuilder> {
  _$SourceDetail? _$v;

  SourceDescriptorBuilder? _descriptor;
  SourceDescriptorBuilder get descriptor =>
      _$this._descriptor ??= SourceDescriptorBuilder();
  set descriptor(SourceDescriptorBuilder? descriptor) =>
      _$this._descriptor = descriptor;

  SourceSettingsBuilder? _settings;
  SourceSettingsBuilder get settings =>
      _$this._settings ??= SourceSettingsBuilder();
  set settings(SourceSettingsBuilder? settings) => _$this._settings = settings;

  SourceHealthBuilder? _health;
  SourceHealthBuilder get health => _$this._health ??= SourceHealthBuilder();
  set health(SourceHealthBuilder? health) => _$this._health = health;

  SourceDetailBuilder() {
    SourceDetail._defaults(this);
  }

  SourceDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _descriptor = $v.descriptor.toBuilder();
      _settings = $v.settings.toBuilder();
      _health = $v.health.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceDetail other) {
    _$v = other as _$SourceDetail;
  }

  @override
  void update(void Function(SourceDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceDetail build() => _build();

  _$SourceDetail _build() {
    _$SourceDetail _$result;
    try {
      _$result = _$v ??
          _$SourceDetail._(
            descriptor: descriptor.build(),
            settings: settings.build(),
            health: health.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'descriptor';
        descriptor.build();
        _$failedField = 'settings';
        settings.build();
        _$failedField = 'health';
        health.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SourceDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

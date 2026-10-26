// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_thresholds_source_storm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceThresholdsSourceStorm extends ResourceThresholdsSourceStorm {
  @override
  final int? failedSources;

  factory _$ResourceThresholdsSourceStorm([
    void Function(ResourceThresholdsSourceStormBuilder)? updates,
  ]) => (ResourceThresholdsSourceStormBuilder()..update(updates))._build();

  _$ResourceThresholdsSourceStorm._({this.failedSources}) : super._();
  @override
  ResourceThresholdsSourceStorm rebuild(
    void Function(ResourceThresholdsSourceStormBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ResourceThresholdsSourceStormBuilder toBuilder() =>
      ResourceThresholdsSourceStormBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceThresholdsSourceStorm &&
        failedSources == other.failedSources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, failedSources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ResourceThresholdsSourceStorm',
    )..add('failedSources', failedSources)).toString();
  }
}

class ResourceThresholdsSourceStormBuilder
    implements
        Builder<
          ResourceThresholdsSourceStorm,
          ResourceThresholdsSourceStormBuilder
        > {
  _$ResourceThresholdsSourceStorm? _$v;

  int? _failedSources;
  int? get failedSources => _$this._failedSources;
  set failedSources(int? failedSources) =>
      _$this._failedSources = failedSources;

  ResourceThresholdsSourceStormBuilder() {
    ResourceThresholdsSourceStorm._defaults(this);
  }

  ResourceThresholdsSourceStormBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failedSources = $v.failedSources;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceThresholdsSourceStorm other) {
    _$v = other as _$ResourceThresholdsSourceStorm;
  }

  @override
  void update(void Function(ResourceThresholdsSourceStormBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceThresholdsSourceStorm build() => _build();

  _$ResourceThresholdsSourceStorm _build() {
    final _$result =
        _$v ?? _$ResourceThresholdsSourceStorm._(failedSources: failedSources);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

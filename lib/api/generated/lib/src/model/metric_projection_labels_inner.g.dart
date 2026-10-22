// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metric_projection_labels_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricProjectionLabelsInner extends MetricProjectionLabelsInner {
  @override
  final String name;
  @override
  final String path;

  factory _$MetricProjectionLabelsInner(
          [void Function(MetricProjectionLabelsInnerBuilder)? updates]) =>
      (MetricProjectionLabelsInnerBuilder()..update(updates))._build();

  _$MetricProjectionLabelsInner._({required this.name, required this.path})
      : super._();
  @override
  MetricProjectionLabelsInner rebuild(
          void Function(MetricProjectionLabelsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetricProjectionLabelsInnerBuilder toBuilder() =>
      MetricProjectionLabelsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricProjectionLabelsInner &&
        name == other.name &&
        path == other.path;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MetricProjectionLabelsInner')
          ..add('name', name)
          ..add('path', path))
        .toString();
  }
}

class MetricProjectionLabelsInnerBuilder
    implements
        Builder<MetricProjectionLabelsInner,
            MetricProjectionLabelsInnerBuilder> {
  _$MetricProjectionLabelsInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  MetricProjectionLabelsInnerBuilder() {
    MetricProjectionLabelsInner._defaults(this);
  }

  MetricProjectionLabelsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _path = $v.path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricProjectionLabelsInner other) {
    _$v = other as _$MetricProjectionLabelsInner;
  }

  @override
  void update(void Function(MetricProjectionLabelsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricProjectionLabelsInner build() => _build();

  _$MetricProjectionLabelsInner _build() {
    final _$result = _$v ??
        _$MetricProjectionLabelsInner._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'MetricProjectionLabelsInner', 'name'),
          path: BuiltValueNullFieldError.checkNotNull(
              path, r'MetricProjectionLabelsInner', 'path'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

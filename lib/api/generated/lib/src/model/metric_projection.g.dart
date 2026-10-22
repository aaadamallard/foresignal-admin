// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metric_projection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetricProjection extends MetricProjection {
  @override
  final String name;
  @override
  final String source_;
  @override
  final String? kind;
  @override
  final String path;
  @override
  final BuiltList<MetricProjectionLabelsInner>? labels;
  @override
  final String? unit;
  @override
  final String? help;
  @override
  final int? maxSeries;
  @override
  final bool? allowPrivate;

  factory _$MetricProjection([
    void Function(MetricProjectionBuilder)? updates,
  ]) => (MetricProjectionBuilder()..update(updates))._build();

  _$MetricProjection._({
    required this.name,
    required this.source_,
    this.kind,
    required this.path,
    this.labels,
    this.unit,
    this.help,
    this.maxSeries,
    this.allowPrivate,
  }) : super._();
  @override
  MetricProjection rebuild(void Function(MetricProjectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetricProjectionBuilder toBuilder() =>
      MetricProjectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetricProjection &&
        name == other.name &&
        source_ == other.source_ &&
        kind == other.kind &&
        path == other.path &&
        labels == other.labels &&
        unit == other.unit &&
        help == other.help &&
        maxSeries == other.maxSeries &&
        allowPrivate == other.allowPrivate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, labels.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, help.hashCode);
    _$hash = $jc(_$hash, maxSeries.hashCode);
    _$hash = $jc(_$hash, allowPrivate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MetricProjection')
          ..add('name', name)
          ..add('source_', source_)
          ..add('kind', kind)
          ..add('path', path)
          ..add('labels', labels)
          ..add('unit', unit)
          ..add('help', help)
          ..add('maxSeries', maxSeries)
          ..add('allowPrivate', allowPrivate))
        .toString();
  }
}

class MetricProjectionBuilder
    implements Builder<MetricProjection, MetricProjectionBuilder> {
  _$MetricProjection? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  ListBuilder<MetricProjectionLabelsInner>? _labels;
  ListBuilder<MetricProjectionLabelsInner> get labels =>
      _$this._labels ??= ListBuilder<MetricProjectionLabelsInner>();
  set labels(ListBuilder<MetricProjectionLabelsInner>? labels) =>
      _$this._labels = labels;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  String? _help;
  String? get help => _$this._help;
  set help(String? help) => _$this._help = help;

  int? _maxSeries;
  int? get maxSeries => _$this._maxSeries;
  set maxSeries(int? maxSeries) => _$this._maxSeries = maxSeries;

  bool? _allowPrivate;
  bool? get allowPrivate => _$this._allowPrivate;
  set allowPrivate(bool? allowPrivate) => _$this._allowPrivate = allowPrivate;

  MetricProjectionBuilder() {
    MetricProjection._defaults(this);
  }

  MetricProjectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _source_ = $v.source_;
      _kind = $v.kind;
      _path = $v.path;
      _labels = $v.labels?.toBuilder();
      _unit = $v.unit;
      _help = $v.help;
      _maxSeries = $v.maxSeries;
      _allowPrivate = $v.allowPrivate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetricProjection other) {
    _$v = other as _$MetricProjection;
  }

  @override
  void update(void Function(MetricProjectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetricProjection build() => _build();

  _$MetricProjection _build() {
    _$MetricProjection _$result;
    try {
      _$result =
          _$v ??
          _$MetricProjection._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'MetricProjection',
              'name',
            ),
            source_: BuiltValueNullFieldError.checkNotNull(
              source_,
              r'MetricProjection',
              'source_',
            ),
            kind: kind,
            path: BuiltValueNullFieldError.checkNotNull(
              path,
              r'MetricProjection',
              'path',
            ),
            labels: _labels?.build(),
            unit: unit,
            help: help,
            maxSeries: maxSeries,
            allowPrivate: allowPrivate,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'labels';
        _labels?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MetricProjection',
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

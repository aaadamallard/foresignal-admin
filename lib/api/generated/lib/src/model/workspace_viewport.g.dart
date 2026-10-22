// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_viewport.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkspaceViewport extends WorkspaceViewport {
  @override
  final BuiltList<num>? bbox;
  @override
  final BuiltList<num>? center;
  @override
  final num? radiusKm;

  factory _$WorkspaceViewport(
          [void Function(WorkspaceViewportBuilder)? updates]) =>
      (WorkspaceViewportBuilder()..update(updates))._build();

  _$WorkspaceViewport._({this.bbox, this.center, this.radiusKm}) : super._();
  @override
  WorkspaceViewport rebuild(void Function(WorkspaceViewportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkspaceViewportBuilder toBuilder() =>
      WorkspaceViewportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkspaceViewport &&
        bbox == other.bbox &&
        center == other.center &&
        radiusKm == other.radiusKm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, center.hashCode);
    _$hash = $jc(_$hash, radiusKm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkspaceViewport')
          ..add('bbox', bbox)
          ..add('center', center)
          ..add('radiusKm', radiusKm))
        .toString();
  }
}

class WorkspaceViewportBuilder
    implements Builder<WorkspaceViewport, WorkspaceViewportBuilder> {
  _$WorkspaceViewport? _$v;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  ListBuilder<num>? _center;
  ListBuilder<num> get center => _$this._center ??= ListBuilder<num>();
  set center(ListBuilder<num>? center) => _$this._center = center;

  num? _radiusKm;
  num? get radiusKm => _$this._radiusKm;
  set radiusKm(num? radiusKm) => _$this._radiusKm = radiusKm;

  WorkspaceViewportBuilder() {
    WorkspaceViewport._defaults(this);
  }

  WorkspaceViewportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bbox = $v.bbox?.toBuilder();
      _center = $v.center?.toBuilder();
      _radiusKm = $v.radiusKm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkspaceViewport other) {
    _$v = other as _$WorkspaceViewport;
  }

  @override
  void update(void Function(WorkspaceViewportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkspaceViewport build() => _build();

  _$WorkspaceViewport _build() {
    _$WorkspaceViewport _$result;
    try {
      _$result = _$v ??
          _$WorkspaceViewport._(
            bbox: _bbox?.build(),
            center: _center?.build(),
            radiusKm: radiusKm,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bbox';
        _bbox?.build();
        _$failedField = 'center';
        _center?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkspaceViewport', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infra_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InfraStatus extends InfraStatus {
  @override
  final bool built;
  @override
  final bool building;
  @override
  final InfraBuild? lastBuild;
  @override
  final BuiltMap<String, int>? nodesByType;
  @override
  final DateTime? osmExtractDate;

  factory _$InfraStatus([void Function(InfraStatusBuilder)? updates]) =>
      (InfraStatusBuilder()..update(updates))._build();

  _$InfraStatus._(
      {required this.built,
      required this.building,
      this.lastBuild,
      this.nodesByType,
      this.osmExtractDate})
      : super._();
  @override
  InfraStatus rebuild(void Function(InfraStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfraStatusBuilder toBuilder() => InfraStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfraStatus &&
        built == other.built &&
        building == other.building &&
        lastBuild == other.lastBuild &&
        nodesByType == other.nodesByType &&
        osmExtractDate == other.osmExtractDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, built.hashCode);
    _$hash = $jc(_$hash, building.hashCode);
    _$hash = $jc(_$hash, lastBuild.hashCode);
    _$hash = $jc(_$hash, nodesByType.hashCode);
    _$hash = $jc(_$hash, osmExtractDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InfraStatus')
          ..add('built', built)
          ..add('building', building)
          ..add('lastBuild', lastBuild)
          ..add('nodesByType', nodesByType)
          ..add('osmExtractDate', osmExtractDate))
        .toString();
  }
}

class InfraStatusBuilder implements Builder<InfraStatus, InfraStatusBuilder> {
  _$InfraStatus? _$v;

  bool? _built;
  bool? get built => _$this._built;
  set built(bool? built) => _$this._built = built;

  bool? _building;
  bool? get building => _$this._building;
  set building(bool? building) => _$this._building = building;

  InfraBuildBuilder? _lastBuild;
  InfraBuildBuilder get lastBuild => _$this._lastBuild ??= InfraBuildBuilder();
  set lastBuild(InfraBuildBuilder? lastBuild) => _$this._lastBuild = lastBuild;

  MapBuilder<String, int>? _nodesByType;
  MapBuilder<String, int> get nodesByType =>
      _$this._nodesByType ??= MapBuilder<String, int>();
  set nodesByType(MapBuilder<String, int>? nodesByType) =>
      _$this._nodesByType = nodesByType;

  DateTime? _osmExtractDate;
  DateTime? get osmExtractDate => _$this._osmExtractDate;
  set osmExtractDate(DateTime? osmExtractDate) =>
      _$this._osmExtractDate = osmExtractDate;

  InfraStatusBuilder() {
    InfraStatus._defaults(this);
  }

  InfraStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _built = $v.built;
      _building = $v.building;
      _lastBuild = $v.lastBuild?.toBuilder();
      _nodesByType = $v.nodesByType?.toBuilder();
      _osmExtractDate = $v.osmExtractDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfraStatus other) {
    _$v = other as _$InfraStatus;
  }

  @override
  void update(void Function(InfraStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfraStatus build() => _build();

  _$InfraStatus _build() {
    _$InfraStatus _$result;
    try {
      _$result = _$v ??
          _$InfraStatus._(
            built: BuiltValueNullFieldError.checkNotNull(
                built, r'InfraStatus', 'built'),
            building: BuiltValueNullFieldError.checkNotNull(
                building, r'InfraStatus', 'building'),
            lastBuild: _lastBuild?.build(),
            nodesByType: _nodesByType?.build(),
            osmExtractDate: osmExtractDate,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lastBuild';
        _lastBuild?.build();
        _$failedField = 'nodesByType';
        _nodesByType?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InfraStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

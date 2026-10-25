// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projected_impact_dependency_paths_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum
_$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_confirmed =
    const ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum._(
      'confirmed',
    );
const ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum
_$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_likely =
    const ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum._('likely');
const ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum
_$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_possible =
    const ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum._('possible');
const ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum
_$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_speculative =
    const ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum._(
      'speculative',
    );
const ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum
_$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_unknownDefaultOpenApi =
    const ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum._(
      'unknownDefaultOpenApi',
    );

ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum
_$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnumValueOf(String name) {
  switch (name) {
    case 'confirmed':
      return _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_confirmed;
    case 'likely':
      return _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_likely;
    case 'possible':
      return _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_possible;
    case 'speculative':
      return _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_speculative;
    case 'unknownDefaultOpenApi':
      return _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_unknownDefaultOpenApi;
    default:
      return _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum>
_$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnumValues =
    BuiltSet<ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum>(const <
      ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum
    >[
      _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_confirmed,
      _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_likely,
      _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_possible,
      _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_speculative,
      _$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnum_unknownDefaultOpenApi,
    ]);

Serializer<ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum>
_$projectedImpactDependencyPathsInnerWeakestEdgeLabelEnumSerializer =
    _$ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnumSerializer();

class _$ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnumSerializer
    implements
        PrimitiveSerializer<
          ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum
        > {
  static const Map<String, Object> _toWire = const <String, Object>{
    'confirmed': 'confirmed',
    'likely': 'likely',
    'possible': 'possible',
    'speculative': 'speculative',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'confirmed': 'confirmed',
    'likely': 'likely',
    'possible': 'possible',
    'speculative': 'speculative',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum,
  ];
  @override
  final String wireName =
      'ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProjectedImpactDependencyPathsInner
    extends ProjectedImpactDependencyPathsInner {
  @override
  final String from;
  @override
  final String to;
  @override
  final BuiltList<String>? hops;
  @override
  final ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum
  weakestEdgeLabel;
  @override
  final int? depth;

  factory _$ProjectedImpactDependencyPathsInner([
    void Function(ProjectedImpactDependencyPathsInnerBuilder)? updates,
  ]) =>
      (ProjectedImpactDependencyPathsInnerBuilder()..update(updates))._build();

  _$ProjectedImpactDependencyPathsInner._({
    required this.from,
    required this.to,
    this.hops,
    required this.weakestEdgeLabel,
    this.depth,
  }) : super._();
  @override
  ProjectedImpactDependencyPathsInner rebuild(
    void Function(ProjectedImpactDependencyPathsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProjectedImpactDependencyPathsInnerBuilder toBuilder() =>
      ProjectedImpactDependencyPathsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectedImpactDependencyPathsInner &&
        from == other.from &&
        to == other.to &&
        hops == other.hops &&
        weakestEdgeLabel == other.weakestEdgeLabel &&
        depth == other.depth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, hops.hashCode);
    _$hash = $jc(_$hash, weakestEdgeLabel.hashCode);
    _$hash = $jc(_$hash, depth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectedImpactDependencyPathsInner')
          ..add('from', from)
          ..add('to', to)
          ..add('hops', hops)
          ..add('weakestEdgeLabel', weakestEdgeLabel)
          ..add('depth', depth))
        .toString();
  }
}

class ProjectedImpactDependencyPathsInnerBuilder
    implements
        Builder<
          ProjectedImpactDependencyPathsInner,
          ProjectedImpactDependencyPathsInnerBuilder
        > {
  _$ProjectedImpactDependencyPathsInner? _$v;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  ListBuilder<String>? _hops;
  ListBuilder<String> get hops => _$this._hops ??= ListBuilder<String>();
  set hops(ListBuilder<String>? hops) => _$this._hops = hops;

  ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum? _weakestEdgeLabel;
  ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum?
  get weakestEdgeLabel => _$this._weakestEdgeLabel;
  set weakestEdgeLabel(
    ProjectedImpactDependencyPathsInnerWeakestEdgeLabelEnum? weakestEdgeLabel,
  ) => _$this._weakestEdgeLabel = weakestEdgeLabel;

  int? _depth;
  int? get depth => _$this._depth;
  set depth(int? depth) => _$this._depth = depth;

  ProjectedImpactDependencyPathsInnerBuilder() {
    ProjectedImpactDependencyPathsInner._defaults(this);
  }

  ProjectedImpactDependencyPathsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _hops = $v.hops?.toBuilder();
      _weakestEdgeLabel = $v.weakestEdgeLabel;
      _depth = $v.depth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectedImpactDependencyPathsInner other) {
    _$v = other as _$ProjectedImpactDependencyPathsInner;
  }

  @override
  void update(
    void Function(ProjectedImpactDependencyPathsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ProjectedImpactDependencyPathsInner build() => _build();

  _$ProjectedImpactDependencyPathsInner _build() {
    _$ProjectedImpactDependencyPathsInner _$result;
    try {
      _$result =
          _$v ??
          _$ProjectedImpactDependencyPathsInner._(
            from: BuiltValueNullFieldError.checkNotNull(
              from,
              r'ProjectedImpactDependencyPathsInner',
              'from',
            ),
            to: BuiltValueNullFieldError.checkNotNull(
              to,
              r'ProjectedImpactDependencyPathsInner',
              'to',
            ),
            hops: _hops?.build(),
            weakestEdgeLabel: BuiltValueNullFieldError.checkNotNull(
              weakestEdgeLabel,
              r'ProjectedImpactDependencyPathsInner',
              'weakestEdgeLabel',
            ),
            depth: depth,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hops';
        _hops?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProjectedImpactDependencyPathsInner',
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

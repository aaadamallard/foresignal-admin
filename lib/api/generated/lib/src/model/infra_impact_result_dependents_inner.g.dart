// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infra_impact_result_dependents_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InfraImpactResultDependentsInnerPathLabelEnum
    _$infraImpactResultDependentsInnerPathLabelEnum_confirmed =
    const InfraImpactResultDependentsInnerPathLabelEnum._('confirmed');
const InfraImpactResultDependentsInnerPathLabelEnum
    _$infraImpactResultDependentsInnerPathLabelEnum_likely =
    const InfraImpactResultDependentsInnerPathLabelEnum._('likely');
const InfraImpactResultDependentsInnerPathLabelEnum
    _$infraImpactResultDependentsInnerPathLabelEnum_possible =
    const InfraImpactResultDependentsInnerPathLabelEnum._('possible');
const InfraImpactResultDependentsInnerPathLabelEnum
    _$infraImpactResultDependentsInnerPathLabelEnum_speculative =
    const InfraImpactResultDependentsInnerPathLabelEnum._('speculative');

InfraImpactResultDependentsInnerPathLabelEnum
    _$infraImpactResultDependentsInnerPathLabelEnumValueOf(String name) {
  switch (name) {
    case 'confirmed':
      return _$infraImpactResultDependentsInnerPathLabelEnum_confirmed;
    case 'likely':
      return _$infraImpactResultDependentsInnerPathLabelEnum_likely;
    case 'possible':
      return _$infraImpactResultDependentsInnerPathLabelEnum_possible;
    case 'speculative':
      return _$infraImpactResultDependentsInnerPathLabelEnum_speculative;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InfraImpactResultDependentsInnerPathLabelEnum>
    _$infraImpactResultDependentsInnerPathLabelEnumValues = BuiltSet<
        InfraImpactResultDependentsInnerPathLabelEnum>(const <InfraImpactResultDependentsInnerPathLabelEnum>[
  _$infraImpactResultDependentsInnerPathLabelEnum_confirmed,
  _$infraImpactResultDependentsInnerPathLabelEnum_likely,
  _$infraImpactResultDependentsInnerPathLabelEnum_possible,
  _$infraImpactResultDependentsInnerPathLabelEnum_speculative,
]);

Serializer<InfraImpactResultDependentsInnerPathLabelEnum>
    _$infraImpactResultDependentsInnerPathLabelEnumSerializer =
    _$InfraImpactResultDependentsInnerPathLabelEnumSerializer();

class _$InfraImpactResultDependentsInnerPathLabelEnumSerializer
    implements
        PrimitiveSerializer<InfraImpactResultDependentsInnerPathLabelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'confirmed': 'confirmed',
    'likely': 'likely',
    'possible': 'possible',
    'speculative': 'speculative',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'confirmed': 'confirmed',
    'likely': 'likely',
    'possible': 'possible',
    'speculative': 'speculative',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InfraImpactResultDependentsInnerPathLabelEnum
  ];
  @override
  final String wireName = 'InfraImpactResultDependentsInnerPathLabelEnum';

  @override
  Object serialize(Serializers serializers,
          InfraImpactResultDependentsInnerPathLabelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InfraImpactResultDependentsInnerPathLabelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InfraImpactResultDependentsInnerPathLabelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InfraImpactResultDependentsInner
    extends InfraImpactResultDependentsInner {
  @override
  final InfraNode node;
  @override
  final int depth;
  @override
  final InfraImpactResultDependentsInnerPathLabelEnum pathLabel;
  @override
  final num pathScore;
  @override
  final BuiltList<InfraImpactResultDependentsInnerPathInner> path;

  factory _$InfraImpactResultDependentsInner(
          [void Function(InfraImpactResultDependentsInnerBuilder)? updates]) =>
      (InfraImpactResultDependentsInnerBuilder()..update(updates))._build();

  _$InfraImpactResultDependentsInner._(
      {required this.node,
      required this.depth,
      required this.pathLabel,
      required this.pathScore,
      required this.path})
      : super._();
  @override
  InfraImpactResultDependentsInner rebuild(
          void Function(InfraImpactResultDependentsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfraImpactResultDependentsInnerBuilder toBuilder() =>
      InfraImpactResultDependentsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfraImpactResultDependentsInner &&
        node == other.node &&
        depth == other.depth &&
        pathLabel == other.pathLabel &&
        pathScore == other.pathScore &&
        path == other.path;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jc(_$hash, depth.hashCode);
    _$hash = $jc(_$hash, pathLabel.hashCode);
    _$hash = $jc(_$hash, pathScore.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InfraImpactResultDependentsInner')
          ..add('node', node)
          ..add('depth', depth)
          ..add('pathLabel', pathLabel)
          ..add('pathScore', pathScore)
          ..add('path', path))
        .toString();
  }
}

class InfraImpactResultDependentsInnerBuilder
    implements
        Builder<InfraImpactResultDependentsInner,
            InfraImpactResultDependentsInnerBuilder> {
  _$InfraImpactResultDependentsInner? _$v;

  InfraNodeBuilder? _node;
  InfraNodeBuilder get node => _$this._node ??= InfraNodeBuilder();
  set node(InfraNodeBuilder? node) => _$this._node = node;

  int? _depth;
  int? get depth => _$this._depth;
  set depth(int? depth) => _$this._depth = depth;

  InfraImpactResultDependentsInnerPathLabelEnum? _pathLabel;
  InfraImpactResultDependentsInnerPathLabelEnum? get pathLabel =>
      _$this._pathLabel;
  set pathLabel(InfraImpactResultDependentsInnerPathLabelEnum? pathLabel) =>
      _$this._pathLabel = pathLabel;

  num? _pathScore;
  num? get pathScore => _$this._pathScore;
  set pathScore(num? pathScore) => _$this._pathScore = pathScore;

  ListBuilder<InfraImpactResultDependentsInnerPathInner>? _path;
  ListBuilder<InfraImpactResultDependentsInnerPathInner> get path =>
      _$this._path ??= ListBuilder<InfraImpactResultDependentsInnerPathInner>();
  set path(ListBuilder<InfraImpactResultDependentsInnerPathInner>? path) =>
      _$this._path = path;

  InfraImpactResultDependentsInnerBuilder() {
    InfraImpactResultDependentsInner._defaults(this);
  }

  InfraImpactResultDependentsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _node = $v.node.toBuilder();
      _depth = $v.depth;
      _pathLabel = $v.pathLabel;
      _pathScore = $v.pathScore;
      _path = $v.path.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfraImpactResultDependentsInner other) {
    _$v = other as _$InfraImpactResultDependentsInner;
  }

  @override
  void update(void Function(InfraImpactResultDependentsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfraImpactResultDependentsInner build() => _build();

  _$InfraImpactResultDependentsInner _build() {
    _$InfraImpactResultDependentsInner _$result;
    try {
      _$result = _$v ??
          _$InfraImpactResultDependentsInner._(
            node: node.build(),
            depth: BuiltValueNullFieldError.checkNotNull(
                depth, r'InfraImpactResultDependentsInner', 'depth'),
            pathLabel: BuiltValueNullFieldError.checkNotNull(
                pathLabel, r'InfraImpactResultDependentsInner', 'pathLabel'),
            pathScore: BuiltValueNullFieldError.checkNotNull(
                pathScore, r'InfraImpactResultDependentsInner', 'pathScore'),
            path: path.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        node.build();

        _$failedField = 'path';
        path.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InfraImpactResultDependentsInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

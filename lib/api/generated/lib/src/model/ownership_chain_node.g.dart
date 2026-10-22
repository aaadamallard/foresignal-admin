// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ownership_chain_node.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OwnershipChainNodeWeakestEdgeLabelEnum
_$ownershipChainNodeWeakestEdgeLabelEnum_confirmed =
    const OwnershipChainNodeWeakestEdgeLabelEnum._('confirmed');
const OwnershipChainNodeWeakestEdgeLabelEnum
_$ownershipChainNodeWeakestEdgeLabelEnum_likely =
    const OwnershipChainNodeWeakestEdgeLabelEnum._('likely');
const OwnershipChainNodeWeakestEdgeLabelEnum
_$ownershipChainNodeWeakestEdgeLabelEnum_possible =
    const OwnershipChainNodeWeakestEdgeLabelEnum._('possible');
const OwnershipChainNodeWeakestEdgeLabelEnum
_$ownershipChainNodeWeakestEdgeLabelEnum_speculative =
    const OwnershipChainNodeWeakestEdgeLabelEnum._('speculative');

OwnershipChainNodeWeakestEdgeLabelEnum
_$ownershipChainNodeWeakestEdgeLabelEnumValueOf(String name) {
  switch (name) {
    case 'confirmed':
      return _$ownershipChainNodeWeakestEdgeLabelEnum_confirmed;
    case 'likely':
      return _$ownershipChainNodeWeakestEdgeLabelEnum_likely;
    case 'possible':
      return _$ownershipChainNodeWeakestEdgeLabelEnum_possible;
    case 'speculative':
      return _$ownershipChainNodeWeakestEdgeLabelEnum_speculative;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OwnershipChainNodeWeakestEdgeLabelEnum>
_$ownershipChainNodeWeakestEdgeLabelEnumValues =
    BuiltSet<OwnershipChainNodeWeakestEdgeLabelEnum>(
      const <OwnershipChainNodeWeakestEdgeLabelEnum>[
        _$ownershipChainNodeWeakestEdgeLabelEnum_confirmed,
        _$ownershipChainNodeWeakestEdgeLabelEnum_likely,
        _$ownershipChainNodeWeakestEdgeLabelEnum_possible,
        _$ownershipChainNodeWeakestEdgeLabelEnum_speculative,
      ],
    );

Serializer<OwnershipChainNodeWeakestEdgeLabelEnum>
_$ownershipChainNodeWeakestEdgeLabelEnumSerializer =
    _$OwnershipChainNodeWeakestEdgeLabelEnumSerializer();

class _$OwnershipChainNodeWeakestEdgeLabelEnumSerializer
    implements PrimitiveSerializer<OwnershipChainNodeWeakestEdgeLabelEnum> {
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
    OwnershipChainNodeWeakestEdgeLabelEnum,
  ];
  @override
  final String wireName = 'OwnershipChainNodeWeakestEdgeLabelEnum';

  @override
  Object serialize(
    Serializers serializers,
    OwnershipChainNodeWeakestEdgeLabelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OwnershipChainNodeWeakestEdgeLabelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OwnershipChainNodeWeakestEdgeLabelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OwnershipChainNode extends OwnershipChainNode {
  @override
  final ObjectEnvelope node;
  @override
  final BuiltList<String> reachedFrom;
  @override
  final OwnershipChainNodeWeakestEdgeLabelEnum weakestEdgeLabel;
  @override
  final BuiltList<OwnershipChainNodePathsInner> paths;

  factory _$OwnershipChainNode([
    void Function(OwnershipChainNodeBuilder)? updates,
  ]) => (OwnershipChainNodeBuilder()..update(updates))._build();

  _$OwnershipChainNode._({
    required this.node,
    required this.reachedFrom,
    required this.weakestEdgeLabel,
    required this.paths,
  }) : super._();
  @override
  OwnershipChainNode rebuild(
    void Function(OwnershipChainNodeBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OwnershipChainNodeBuilder toBuilder() =>
      OwnershipChainNodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OwnershipChainNode &&
        node == other.node &&
        reachedFrom == other.reachedFrom &&
        weakestEdgeLabel == other.weakestEdgeLabel &&
        paths == other.paths;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jc(_$hash, reachedFrom.hashCode);
    _$hash = $jc(_$hash, weakestEdgeLabel.hashCode);
    _$hash = $jc(_$hash, paths.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OwnershipChainNode')
          ..add('node', node)
          ..add('reachedFrom', reachedFrom)
          ..add('weakestEdgeLabel', weakestEdgeLabel)
          ..add('paths', paths))
        .toString();
  }
}

class OwnershipChainNodeBuilder
    implements Builder<OwnershipChainNode, OwnershipChainNodeBuilder> {
  _$OwnershipChainNode? _$v;

  ObjectEnvelopeBuilder? _node;
  ObjectEnvelopeBuilder get node => _$this._node ??= ObjectEnvelopeBuilder();
  set node(ObjectEnvelopeBuilder? node) => _$this._node = node;

  ListBuilder<String>? _reachedFrom;
  ListBuilder<String> get reachedFrom =>
      _$this._reachedFrom ??= ListBuilder<String>();
  set reachedFrom(ListBuilder<String>? reachedFrom) =>
      _$this._reachedFrom = reachedFrom;

  OwnershipChainNodeWeakestEdgeLabelEnum? _weakestEdgeLabel;
  OwnershipChainNodeWeakestEdgeLabelEnum? get weakestEdgeLabel =>
      _$this._weakestEdgeLabel;
  set weakestEdgeLabel(
    OwnershipChainNodeWeakestEdgeLabelEnum? weakestEdgeLabel,
  ) => _$this._weakestEdgeLabel = weakestEdgeLabel;

  ListBuilder<OwnershipChainNodePathsInner>? _paths;
  ListBuilder<OwnershipChainNodePathsInner> get paths =>
      _$this._paths ??= ListBuilder<OwnershipChainNodePathsInner>();
  set paths(ListBuilder<OwnershipChainNodePathsInner>? paths) =>
      _$this._paths = paths;

  OwnershipChainNodeBuilder() {
    OwnershipChainNode._defaults(this);
  }

  OwnershipChainNodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _node = $v.node.toBuilder();
      _reachedFrom = $v.reachedFrom.toBuilder();
      _weakestEdgeLabel = $v.weakestEdgeLabel;
      _paths = $v.paths.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OwnershipChainNode other) {
    _$v = other as _$OwnershipChainNode;
  }

  @override
  void update(void Function(OwnershipChainNodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OwnershipChainNode build() => _build();

  _$OwnershipChainNode _build() {
    _$OwnershipChainNode _$result;
    try {
      _$result =
          _$v ??
          _$OwnershipChainNode._(
            node: node.build(),
            reachedFrom: reachedFrom.build(),
            weakestEdgeLabel: BuiltValueNullFieldError.checkNotNull(
              weakestEdgeLabel,
              r'OwnershipChainNode',
              'weakestEdgeLabel',
            ),
            paths: paths.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        node.build();
        _$failedField = 'reachedFrom';
        reachedFrom.build();

        _$failedField = 'paths';
        paths.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OwnershipChainNode',
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

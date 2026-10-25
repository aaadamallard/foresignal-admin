// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_dependencies_dependencies_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum
_$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_confirmed =
    const CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum._(
      'confirmed',
    );
const CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum
_$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_likely =
    const CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum._('likely');
const CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum
_$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_possible =
    const CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum._('possible');
const CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum
_$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_speculative =
    const CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum._(
      'speculative',
    );
const CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum
_$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_unknownDefaultOpenApi =
    const CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum._(
      'unknownDefaultOpenApi',
    );

CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum
_$commonDependenciesDependenciesInnerWeakestEdgeLabelEnumValueOf(String name) {
  switch (name) {
    case 'confirmed':
      return _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_confirmed;
    case 'likely':
      return _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_likely;
    case 'possible':
      return _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_possible;
    case 'speculative':
      return _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_speculative;
    case 'unknownDefaultOpenApi':
      return _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_unknownDefaultOpenApi;
    default:
      return _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum>
_$commonDependenciesDependenciesInnerWeakestEdgeLabelEnumValues =
    BuiltSet<CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum>(const <
      CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum
    >[
      _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_confirmed,
      _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_likely,
      _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_possible,
      _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_speculative,
      _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_unknownDefaultOpenApi,
    ]);

Serializer<CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum>
_$commonDependenciesDependenciesInnerWeakestEdgeLabelEnumSerializer =
    _$CommonDependenciesDependenciesInnerWeakestEdgeLabelEnumSerializer();

class _$CommonDependenciesDependenciesInnerWeakestEdgeLabelEnumSerializer
    implements
        PrimitiveSerializer<
          CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum
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
    CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum,
  ];
  @override
  final String wireName =
      'CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum';

  @override
  Object serialize(
    Serializers serializers,
    CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CommonDependenciesDependenciesInner
    extends CommonDependenciesDependenciesInner {
  @override
  final ObjectEnvelope node;
  @override
  final BuiltList<String> sharedBy;
  @override
  final CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum
  weakestEdgeLabel;
  @override
  final BuiltList<CommonDependenciesDependenciesInnerPathsInner> paths;

  factory _$CommonDependenciesDependenciesInner([
    void Function(CommonDependenciesDependenciesInnerBuilder)? updates,
  ]) =>
      (CommonDependenciesDependenciesInnerBuilder()..update(updates))._build();

  _$CommonDependenciesDependenciesInner._({
    required this.node,
    required this.sharedBy,
    required this.weakestEdgeLabel,
    required this.paths,
  }) : super._();
  @override
  CommonDependenciesDependenciesInner rebuild(
    void Function(CommonDependenciesDependenciesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CommonDependenciesDependenciesInnerBuilder toBuilder() =>
      CommonDependenciesDependenciesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommonDependenciesDependenciesInner &&
        node == other.node &&
        sharedBy == other.sharedBy &&
        weakestEdgeLabel == other.weakestEdgeLabel &&
        paths == other.paths;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jc(_$hash, sharedBy.hashCode);
    _$hash = $jc(_$hash, weakestEdgeLabel.hashCode);
    _$hash = $jc(_$hash, paths.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommonDependenciesDependenciesInner')
          ..add('node', node)
          ..add('sharedBy', sharedBy)
          ..add('weakestEdgeLabel', weakestEdgeLabel)
          ..add('paths', paths))
        .toString();
  }
}

class CommonDependenciesDependenciesInnerBuilder
    implements
        Builder<
          CommonDependenciesDependenciesInner,
          CommonDependenciesDependenciesInnerBuilder
        > {
  _$CommonDependenciesDependenciesInner? _$v;

  ObjectEnvelopeBuilder? _node;
  ObjectEnvelopeBuilder get node => _$this._node ??= ObjectEnvelopeBuilder();
  set node(ObjectEnvelopeBuilder? node) => _$this._node = node;

  ListBuilder<String>? _sharedBy;
  ListBuilder<String> get sharedBy =>
      _$this._sharedBy ??= ListBuilder<String>();
  set sharedBy(ListBuilder<String>? sharedBy) => _$this._sharedBy = sharedBy;

  CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum? _weakestEdgeLabel;
  CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum?
  get weakestEdgeLabel => _$this._weakestEdgeLabel;
  set weakestEdgeLabel(
    CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum? weakestEdgeLabel,
  ) => _$this._weakestEdgeLabel = weakestEdgeLabel;

  ListBuilder<CommonDependenciesDependenciesInnerPathsInner>? _paths;
  ListBuilder<CommonDependenciesDependenciesInnerPathsInner> get paths =>
      _$this._paths ??=
          ListBuilder<CommonDependenciesDependenciesInnerPathsInner>();
  set paths(
    ListBuilder<CommonDependenciesDependenciesInnerPathsInner>? paths,
  ) => _$this._paths = paths;

  CommonDependenciesDependenciesInnerBuilder() {
    CommonDependenciesDependenciesInner._defaults(this);
  }

  CommonDependenciesDependenciesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _node = $v.node.toBuilder();
      _sharedBy = $v.sharedBy.toBuilder();
      _weakestEdgeLabel = $v.weakestEdgeLabel;
      _paths = $v.paths.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommonDependenciesDependenciesInner other) {
    _$v = other as _$CommonDependenciesDependenciesInner;
  }

  @override
  void update(
    void Function(CommonDependenciesDependenciesInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CommonDependenciesDependenciesInner build() => _build();

  _$CommonDependenciesDependenciesInner _build() {
    _$CommonDependenciesDependenciesInner _$result;
    try {
      _$result =
          _$v ??
          _$CommonDependenciesDependenciesInner._(
            node: node.build(),
            sharedBy: sharedBy.build(),
            weakestEdgeLabel: BuiltValueNullFieldError.checkNotNull(
              weakestEdgeLabel,
              r'CommonDependenciesDependenciesInner',
              'weakestEdgeLabel',
            ),
            paths: paths.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        node.build();
        _$failedField = 'sharedBy';
        sharedBy.build();

        _$failedField = 'paths';
        paths.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CommonDependenciesDependenciesInner',
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

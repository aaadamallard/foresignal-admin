// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_dependencies_dependencies_inner_paths_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
_$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_confirmed =
    const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum._(
      'confirmed',
    );
const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
_$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_likely =
    const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum._(
      'likely',
    );
const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
_$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_possible =
    const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum._(
      'possible',
    );
const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
_$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_speculative =
    const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum._(
      'speculative',
    );

CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
_$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnumValueOf(
  String name,
) {
  switch (name) {
    case 'confirmed':
      return _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_confirmed;
    case 'likely':
      return _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_likely;
    case 'possible':
      return _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_possible;
    case 'speculative':
      return _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_speculative;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<
  CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
>
_$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnumValues =
    BuiltSet<
      CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
    >(const <CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum>[
      _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_confirmed,
      _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_likely,
      _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_possible,
      _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_speculative,
    ]);

Serializer<CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum>
_$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnumSerializer =
    _$CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnumSerializer();

class _$CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnumSerializer
    implements
        PrimitiveSerializer<
          CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
        > {
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
    CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum,
  ];
  @override
  final String wireName =
      'CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum';

  @override
  Object serialize(
    Serializers serializers,
    CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum.valueOf(
        _fromWire[serialized] ?? (serialized is String ? serialized : ''),
      );
}

class _$CommonDependenciesDependenciesInnerPathsInner
    extends CommonDependenciesDependenciesInnerPathsInner {
  @override
  final String from;
  @override
  final BuiltList<String> hops;
  @override
  final BuiltList<String>? relationTypes;
  @override
  final CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
  weakestEdgeLabel;

  factory _$CommonDependenciesDependenciesInnerPathsInner([
    void Function(CommonDependenciesDependenciesInnerPathsInnerBuilder)?
    updates,
  ]) =>
      (CommonDependenciesDependenciesInnerPathsInnerBuilder()..update(updates))
          ._build();

  _$CommonDependenciesDependenciesInnerPathsInner._({
    required this.from,
    required this.hops,
    this.relationTypes,
    required this.weakestEdgeLabel,
  }) : super._();
  @override
  CommonDependenciesDependenciesInnerPathsInner rebuild(
    void Function(CommonDependenciesDependenciesInnerPathsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CommonDependenciesDependenciesInnerPathsInnerBuilder toBuilder() =>
      CommonDependenciesDependenciesInnerPathsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommonDependenciesDependenciesInnerPathsInner &&
        from == other.from &&
        hops == other.hops &&
        relationTypes == other.relationTypes &&
        weakestEdgeLabel == other.weakestEdgeLabel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, hops.hashCode);
    _$hash = $jc(_$hash, relationTypes.hashCode);
    _$hash = $jc(_$hash, weakestEdgeLabel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'CommonDependenciesDependenciesInnerPathsInner',
          )
          ..add('from', from)
          ..add('hops', hops)
          ..add('relationTypes', relationTypes)
          ..add('weakestEdgeLabel', weakestEdgeLabel))
        .toString();
  }
}

class CommonDependenciesDependenciesInnerPathsInnerBuilder
    implements
        Builder<
          CommonDependenciesDependenciesInnerPathsInner,
          CommonDependenciesDependenciesInnerPathsInnerBuilder
        > {
  _$CommonDependenciesDependenciesInnerPathsInner? _$v;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  ListBuilder<String>? _hops;
  ListBuilder<String> get hops => _$this._hops ??= ListBuilder<String>();
  set hops(ListBuilder<String>? hops) => _$this._hops = hops;

  ListBuilder<String>? _relationTypes;
  ListBuilder<String> get relationTypes =>
      _$this._relationTypes ??= ListBuilder<String>();
  set relationTypes(ListBuilder<String>? relationTypes) =>
      _$this._relationTypes = relationTypes;

  CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum?
  _weakestEdgeLabel;
  CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum?
  get weakestEdgeLabel => _$this._weakestEdgeLabel;
  set weakestEdgeLabel(
    CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum?
    weakestEdgeLabel,
  ) => _$this._weakestEdgeLabel = weakestEdgeLabel;

  CommonDependenciesDependenciesInnerPathsInnerBuilder() {
    CommonDependenciesDependenciesInnerPathsInner._defaults(this);
  }

  CommonDependenciesDependenciesInnerPathsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _hops = $v.hops.toBuilder();
      _relationTypes = $v.relationTypes?.toBuilder();
      _weakestEdgeLabel = $v.weakestEdgeLabel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommonDependenciesDependenciesInnerPathsInner other) {
    _$v = other as _$CommonDependenciesDependenciesInnerPathsInner;
  }

  @override
  void update(
    void Function(CommonDependenciesDependenciesInnerPathsInnerBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CommonDependenciesDependenciesInnerPathsInner build() => _build();

  _$CommonDependenciesDependenciesInnerPathsInner _build() {
    _$CommonDependenciesDependenciesInnerPathsInner _$result;
    try {
      _$result =
          _$v ??
          _$CommonDependenciesDependenciesInnerPathsInner._(
            from: BuiltValueNullFieldError.checkNotNull(
              from,
              r'CommonDependenciesDependenciesInnerPathsInner',
              'from',
            ),
            hops: hops.build(),
            relationTypes: _relationTypes?.build(),
            weakestEdgeLabel: BuiltValueNullFieldError.checkNotNull(
              weakestEdgeLabel,
              r'CommonDependenciesDependenciesInnerPathsInner',
              'weakestEdgeLabel',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hops';
        hops.build();
        _$failedField = 'relationTypes';
        _relationTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CommonDependenciesDependenciesInnerPathsInner',
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

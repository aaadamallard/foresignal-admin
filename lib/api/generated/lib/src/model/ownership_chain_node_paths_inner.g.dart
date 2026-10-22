// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ownership_chain_node_paths_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OwnershipChainNodePathsInnerRelationTypesEnum
    _$ownershipChainNodePathsInnerRelationTypesEnum_owns =
    const OwnershipChainNodePathsInnerRelationTypesEnum._('owns');
const OwnershipChainNodePathsInnerRelationTypesEnum
    _$ownershipChainNodePathsInnerRelationTypesEnum_controls =
    const OwnershipChainNodePathsInnerRelationTypesEnum._('controls');
const OwnershipChainNodePathsInnerRelationTypesEnum
    _$ownershipChainNodePathsInnerRelationTypesEnum_officerOf =
    const OwnershipChainNodePathsInnerRelationTypesEnum._('officerOf');
const OwnershipChainNodePathsInnerRelationTypesEnum
    _$ownershipChainNodePathsInnerRelationTypesEnum_beneficialOwner =
    const OwnershipChainNodePathsInnerRelationTypesEnum._('beneficialOwner');
const OwnershipChainNodePathsInnerRelationTypesEnum
    _$ownershipChainNodePathsInnerRelationTypesEnum_affiliatedWith =
    const OwnershipChainNodePathsInnerRelationTypesEnum._('affiliatedWith');

OwnershipChainNodePathsInnerRelationTypesEnum
    _$ownershipChainNodePathsInnerRelationTypesEnumValueOf(String name) {
  switch (name) {
    case 'owns':
      return _$ownershipChainNodePathsInnerRelationTypesEnum_owns;
    case 'controls':
      return _$ownershipChainNodePathsInnerRelationTypesEnum_controls;
    case 'officerOf':
      return _$ownershipChainNodePathsInnerRelationTypesEnum_officerOf;
    case 'beneficialOwner':
      return _$ownershipChainNodePathsInnerRelationTypesEnum_beneficialOwner;
    case 'affiliatedWith':
      return _$ownershipChainNodePathsInnerRelationTypesEnum_affiliatedWith;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OwnershipChainNodePathsInnerRelationTypesEnum>
    _$ownershipChainNodePathsInnerRelationTypesEnumValues = BuiltSet<
        OwnershipChainNodePathsInnerRelationTypesEnum>(const <OwnershipChainNodePathsInnerRelationTypesEnum>[
  _$ownershipChainNodePathsInnerRelationTypesEnum_owns,
  _$ownershipChainNodePathsInnerRelationTypesEnum_controls,
  _$ownershipChainNodePathsInnerRelationTypesEnum_officerOf,
  _$ownershipChainNodePathsInnerRelationTypesEnum_beneficialOwner,
  _$ownershipChainNodePathsInnerRelationTypesEnum_affiliatedWith,
]);

const OwnershipChainNodePathsInnerWeakestEdgeLabelEnum
    _$ownershipChainNodePathsInnerWeakestEdgeLabelEnum_confirmed =
    const OwnershipChainNodePathsInnerWeakestEdgeLabelEnum._('confirmed');
const OwnershipChainNodePathsInnerWeakestEdgeLabelEnum
    _$ownershipChainNodePathsInnerWeakestEdgeLabelEnum_likely =
    const OwnershipChainNodePathsInnerWeakestEdgeLabelEnum._('likely');
const OwnershipChainNodePathsInnerWeakestEdgeLabelEnum
    _$ownershipChainNodePathsInnerWeakestEdgeLabelEnum_possible =
    const OwnershipChainNodePathsInnerWeakestEdgeLabelEnum._('possible');
const OwnershipChainNodePathsInnerWeakestEdgeLabelEnum
    _$ownershipChainNodePathsInnerWeakestEdgeLabelEnum_speculative =
    const OwnershipChainNodePathsInnerWeakestEdgeLabelEnum._('speculative');

OwnershipChainNodePathsInnerWeakestEdgeLabelEnum
    _$ownershipChainNodePathsInnerWeakestEdgeLabelEnumValueOf(String name) {
  switch (name) {
    case 'confirmed':
      return _$ownershipChainNodePathsInnerWeakestEdgeLabelEnum_confirmed;
    case 'likely':
      return _$ownershipChainNodePathsInnerWeakestEdgeLabelEnum_likely;
    case 'possible':
      return _$ownershipChainNodePathsInnerWeakestEdgeLabelEnum_possible;
    case 'speculative':
      return _$ownershipChainNodePathsInnerWeakestEdgeLabelEnum_speculative;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OwnershipChainNodePathsInnerWeakestEdgeLabelEnum>
    _$ownershipChainNodePathsInnerWeakestEdgeLabelEnumValues = BuiltSet<
        OwnershipChainNodePathsInnerWeakestEdgeLabelEnum>(const <OwnershipChainNodePathsInnerWeakestEdgeLabelEnum>[
  _$ownershipChainNodePathsInnerWeakestEdgeLabelEnum_confirmed,
  _$ownershipChainNodePathsInnerWeakestEdgeLabelEnum_likely,
  _$ownershipChainNodePathsInnerWeakestEdgeLabelEnum_possible,
  _$ownershipChainNodePathsInnerWeakestEdgeLabelEnum_speculative,
]);

Serializer<OwnershipChainNodePathsInnerRelationTypesEnum>
    _$ownershipChainNodePathsInnerRelationTypesEnumSerializer =
    _$OwnershipChainNodePathsInnerRelationTypesEnumSerializer();
Serializer<OwnershipChainNodePathsInnerWeakestEdgeLabelEnum>
    _$ownershipChainNodePathsInnerWeakestEdgeLabelEnumSerializer =
    _$OwnershipChainNodePathsInnerWeakestEdgeLabelEnumSerializer();

class _$OwnershipChainNodePathsInnerRelationTypesEnumSerializer
    implements
        PrimitiveSerializer<OwnershipChainNodePathsInnerRelationTypesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'owns': 'owns',
    'controls': 'controls',
    'officerOf': 'officer-of',
    'beneficialOwner': 'beneficial-owner',
    'affiliatedWith': 'affiliated-with',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'owns': 'owns',
    'controls': 'controls',
    'officer-of': 'officerOf',
    'beneficial-owner': 'beneficialOwner',
    'affiliated-with': 'affiliatedWith',
  };

  @override
  final Iterable<Type> types = const <Type>[
    OwnershipChainNodePathsInnerRelationTypesEnum
  ];
  @override
  final String wireName = 'OwnershipChainNodePathsInnerRelationTypesEnum';

  @override
  Object serialize(Serializers serializers,
          OwnershipChainNodePathsInnerRelationTypesEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OwnershipChainNodePathsInnerRelationTypesEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OwnershipChainNodePathsInnerRelationTypesEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OwnershipChainNodePathsInnerWeakestEdgeLabelEnumSerializer
    implements
        PrimitiveSerializer<OwnershipChainNodePathsInnerWeakestEdgeLabelEnum> {
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
    OwnershipChainNodePathsInnerWeakestEdgeLabelEnum
  ];
  @override
  final String wireName = 'OwnershipChainNodePathsInnerWeakestEdgeLabelEnum';

  @override
  Object serialize(Serializers serializers,
          OwnershipChainNodePathsInnerWeakestEdgeLabelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OwnershipChainNodePathsInnerWeakestEdgeLabelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OwnershipChainNodePathsInnerWeakestEdgeLabelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OwnershipChainNodePathsInner extends OwnershipChainNodePathsInner {
  @override
  final String from;
  @override
  final BuiltList<String> hops;
  @override
  final BuiltList<OwnershipChainNodePathsInnerRelationTypesEnum>? relationTypes;
  @override
  final OwnershipChainNodePathsInnerWeakestEdgeLabelEnum weakestEdgeLabel;

  factory _$OwnershipChainNodePathsInner(
          [void Function(OwnershipChainNodePathsInnerBuilder)? updates]) =>
      (OwnershipChainNodePathsInnerBuilder()..update(updates))._build();

  _$OwnershipChainNodePathsInner._(
      {required this.from,
      required this.hops,
      this.relationTypes,
      required this.weakestEdgeLabel})
      : super._();
  @override
  OwnershipChainNodePathsInner rebuild(
          void Function(OwnershipChainNodePathsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OwnershipChainNodePathsInnerBuilder toBuilder() =>
      OwnershipChainNodePathsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OwnershipChainNodePathsInner &&
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
    return (newBuiltValueToStringHelper(r'OwnershipChainNodePathsInner')
          ..add('from', from)
          ..add('hops', hops)
          ..add('relationTypes', relationTypes)
          ..add('weakestEdgeLabel', weakestEdgeLabel))
        .toString();
  }
}

class OwnershipChainNodePathsInnerBuilder
    implements
        Builder<OwnershipChainNodePathsInner,
            OwnershipChainNodePathsInnerBuilder> {
  _$OwnershipChainNodePathsInner? _$v;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  ListBuilder<String>? _hops;
  ListBuilder<String> get hops => _$this._hops ??= ListBuilder<String>();
  set hops(ListBuilder<String>? hops) => _$this._hops = hops;

  ListBuilder<OwnershipChainNodePathsInnerRelationTypesEnum>? _relationTypes;
  ListBuilder<OwnershipChainNodePathsInnerRelationTypesEnum>
      get relationTypes => _$this._relationTypes ??=
          ListBuilder<OwnershipChainNodePathsInnerRelationTypesEnum>();
  set relationTypes(
          ListBuilder<OwnershipChainNodePathsInnerRelationTypesEnum>?
              relationTypes) =>
      _$this._relationTypes = relationTypes;

  OwnershipChainNodePathsInnerWeakestEdgeLabelEnum? _weakestEdgeLabel;
  OwnershipChainNodePathsInnerWeakestEdgeLabelEnum? get weakestEdgeLabel =>
      _$this._weakestEdgeLabel;
  set weakestEdgeLabel(
          OwnershipChainNodePathsInnerWeakestEdgeLabelEnum? weakestEdgeLabel) =>
      _$this._weakestEdgeLabel = weakestEdgeLabel;

  OwnershipChainNodePathsInnerBuilder() {
    OwnershipChainNodePathsInner._defaults(this);
  }

  OwnershipChainNodePathsInnerBuilder get _$this {
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
  void replace(OwnershipChainNodePathsInner other) {
    _$v = other as _$OwnershipChainNodePathsInner;
  }

  @override
  void update(void Function(OwnershipChainNodePathsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OwnershipChainNodePathsInner build() => _build();

  _$OwnershipChainNodePathsInner _build() {
    _$OwnershipChainNodePathsInner _$result;
    try {
      _$result = _$v ??
          _$OwnershipChainNodePathsInner._(
            from: BuiltValueNullFieldError.checkNotNull(
                from, r'OwnershipChainNodePathsInner', 'from'),
            hops: hops.build(),
            relationTypes: _relationTypes?.build(),
            weakestEdgeLabel: BuiltValueNullFieldError.checkNotNull(
                weakestEdgeLabel,
                r'OwnershipChainNodePathsInner',
                'weakestEdgeLabel'),
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
            r'OwnershipChainNodePathsInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

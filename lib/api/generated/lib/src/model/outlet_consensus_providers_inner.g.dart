// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlet_consensus_providers_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OutletConsensusProvidersInnerProviderEnum
_$outletConsensusProvidersInnerProviderEnum_wikidata =
    const OutletConsensusProvidersInnerProviderEnum._('wikidata');
const OutletConsensusProvidersInnerProviderEnum
_$outletConsensusProvidersInnerProviderEnum_partisanWeb =
    const OutletConsensusProvidersInnerProviderEnum._('partisanWeb');
const OutletConsensusProvidersInnerProviderEnum
_$outletConsensusProvidersInnerProviderEnum_allsides =
    const OutletConsensusProvidersInnerProviderEnum._('allsides');
const OutletConsensusProvidersInnerProviderEnum
_$outletConsensusProvidersInnerProviderEnum_mbfc =
    const OutletConsensusProvidersInnerProviderEnum._('mbfc');
const OutletConsensusProvidersInnerProviderEnum
_$outletConsensusProvidersInnerProviderEnum_operator_ =
    const OutletConsensusProvidersInnerProviderEnum._('operator_');

OutletConsensusProvidersInnerProviderEnum
_$outletConsensusProvidersInnerProviderEnumValueOf(String name) {
  switch (name) {
    case 'wikidata':
      return _$outletConsensusProvidersInnerProviderEnum_wikidata;
    case 'partisanWeb':
      return _$outletConsensusProvidersInnerProviderEnum_partisanWeb;
    case 'allsides':
      return _$outletConsensusProvidersInnerProviderEnum_allsides;
    case 'mbfc':
      return _$outletConsensusProvidersInnerProviderEnum_mbfc;
    case 'operator_':
      return _$outletConsensusProvidersInnerProviderEnum_operator_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OutletConsensusProvidersInnerProviderEnum>
_$outletConsensusProvidersInnerProviderEnumValues =
    BuiltSet<OutletConsensusProvidersInnerProviderEnum>(
      const <OutletConsensusProvidersInnerProviderEnum>[
        _$outletConsensusProvidersInnerProviderEnum_wikidata,
        _$outletConsensusProvidersInnerProviderEnum_partisanWeb,
        _$outletConsensusProvidersInnerProviderEnum_allsides,
        _$outletConsensusProvidersInnerProviderEnum_mbfc,
        _$outletConsensusProvidersInnerProviderEnum_operator_,
      ],
    );

Serializer<OutletConsensusProvidersInnerProviderEnum>
_$outletConsensusProvidersInnerProviderEnumSerializer =
    _$OutletConsensusProvidersInnerProviderEnumSerializer();

class _$OutletConsensusProvidersInnerProviderEnumSerializer
    implements PrimitiveSerializer<OutletConsensusProvidersInnerProviderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'wikidata': 'wikidata',
    'partisanWeb': 'partisan-web',
    'allsides': 'allsides',
    'mbfc': 'mbfc',
    'operator_': 'operator',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'wikidata': 'wikidata',
    'partisan-web': 'partisanWeb',
    'allsides': 'allsides',
    'mbfc': 'mbfc',
    'operator': 'operator_',
  };

  @override
  final Iterable<Type> types = const <Type>[
    OutletConsensusProvidersInnerProviderEnum,
  ];
  @override
  final String wireName = 'OutletConsensusProvidersInnerProviderEnum';

  @override
  Object serialize(
    Serializers serializers,
    OutletConsensusProvidersInnerProviderEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OutletConsensusProvidersInnerProviderEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OutletConsensusProvidersInnerProviderEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OutletConsensusProvidersInner extends OutletConsensusProvidersInner {
  @override
  final OutletConsensusProvidersInnerProviderEnum provider;
  @override
  final num? valueNorm;
  @override
  final String? label;
  @override
  final DateTime? ratedAt;
  @override
  final String? licence;

  factory _$OutletConsensusProvidersInner([
    void Function(OutletConsensusProvidersInnerBuilder)? updates,
  ]) => (OutletConsensusProvidersInnerBuilder()..update(updates))._build();

  _$OutletConsensusProvidersInner._({
    required this.provider,
    this.valueNorm,
    this.label,
    this.ratedAt,
    this.licence,
  }) : super._();
  @override
  OutletConsensusProvidersInner rebuild(
    void Function(OutletConsensusProvidersInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OutletConsensusProvidersInnerBuilder toBuilder() =>
      OutletConsensusProvidersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OutletConsensusProvidersInner &&
        provider == other.provider &&
        valueNorm == other.valueNorm &&
        label == other.label &&
        ratedAt == other.ratedAt &&
        licence == other.licence;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, valueNorm.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, ratedAt.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OutletConsensusProvidersInner')
          ..add('provider', provider)
          ..add('valueNorm', valueNorm)
          ..add('label', label)
          ..add('ratedAt', ratedAt)
          ..add('licence', licence))
        .toString();
  }
}

class OutletConsensusProvidersInnerBuilder
    implements
        Builder<
          OutletConsensusProvidersInner,
          OutletConsensusProvidersInnerBuilder
        > {
  _$OutletConsensusProvidersInner? _$v;

  OutletConsensusProvidersInnerProviderEnum? _provider;
  OutletConsensusProvidersInnerProviderEnum? get provider => _$this._provider;
  set provider(OutletConsensusProvidersInnerProviderEnum? provider) =>
      _$this._provider = provider;

  num? _valueNorm;
  num? get valueNorm => _$this._valueNorm;
  set valueNorm(num? valueNorm) => _$this._valueNorm = valueNorm;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  DateTime? _ratedAt;
  DateTime? get ratedAt => _$this._ratedAt;
  set ratedAt(DateTime? ratedAt) => _$this._ratedAt = ratedAt;

  String? _licence;
  String? get licence => _$this._licence;
  set licence(String? licence) => _$this._licence = licence;

  OutletConsensusProvidersInnerBuilder() {
    OutletConsensusProvidersInner._defaults(this);
  }

  OutletConsensusProvidersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _provider = $v.provider;
      _valueNorm = $v.valueNorm;
      _label = $v.label;
      _ratedAt = $v.ratedAt;
      _licence = $v.licence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OutletConsensusProvidersInner other) {
    _$v = other as _$OutletConsensusProvidersInner;
  }

  @override
  void update(void Function(OutletConsensusProvidersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OutletConsensusProvidersInner build() => _build();

  _$OutletConsensusProvidersInner _build() {
    final _$result =
        _$v ??
        _$OutletConsensusProvidersInner._(
          provider: BuiltValueNullFieldError.checkNotNull(
            provider,
            r'OutletConsensusProvidersInner',
            'provider',
          ),
          valueNorm: valueNorm,
          label: label,
          ratedAt: ratedAt,
          licence: licence,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

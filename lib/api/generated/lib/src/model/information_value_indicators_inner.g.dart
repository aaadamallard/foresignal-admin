// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'information_value_indicators_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InformationValueIndicatorsInnerStateEnum
    _$informationValueIndicatorsInnerStateEnum_pending =
    const InformationValueIndicatorsInnerStateEnum._('pending');
const InformationValueIndicatorsInnerStateEnum
    _$informationValueIndicatorsInnerStateEnum_emerging =
    const InformationValueIndicatorsInnerStateEnum._('emerging');
const InformationValueIndicatorsInnerStateEnum
    _$informationValueIndicatorsInnerStateEnum_observed =
    const InformationValueIndicatorsInnerStateEnum._('observed');
const InformationValueIndicatorsInnerStateEnum
    _$informationValueIndicatorsInnerStateEnum_absent =
    const InformationValueIndicatorsInnerStateEnum._('absent');
const InformationValueIndicatorsInnerStateEnum
    _$informationValueIndicatorsInnerStateEnum_unknownCoverage =
    const InformationValueIndicatorsInnerStateEnum._('unknownCoverage');
const InformationValueIndicatorsInnerStateEnum
    _$informationValueIndicatorsInnerStateEnum_retired =
    const InformationValueIndicatorsInnerStateEnum._('retired');
const InformationValueIndicatorsInnerStateEnum
    _$informationValueIndicatorsInnerStateEnum_reported =
    const InformationValueIndicatorsInnerStateEnum._('reported');

InformationValueIndicatorsInnerStateEnum
    _$informationValueIndicatorsInnerStateEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$informationValueIndicatorsInnerStateEnum_pending;
    case 'emerging':
      return _$informationValueIndicatorsInnerStateEnum_emerging;
    case 'observed':
      return _$informationValueIndicatorsInnerStateEnum_observed;
    case 'absent':
      return _$informationValueIndicatorsInnerStateEnum_absent;
    case 'unknownCoverage':
      return _$informationValueIndicatorsInnerStateEnum_unknownCoverage;
    case 'retired':
      return _$informationValueIndicatorsInnerStateEnum_retired;
    case 'reported':
      return _$informationValueIndicatorsInnerStateEnum_reported;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InformationValueIndicatorsInnerStateEnum>
    _$informationValueIndicatorsInnerStateEnumValues = BuiltSet<
        InformationValueIndicatorsInnerStateEnum>(const <InformationValueIndicatorsInnerStateEnum>[
  _$informationValueIndicatorsInnerStateEnum_pending,
  _$informationValueIndicatorsInnerStateEnum_emerging,
  _$informationValueIndicatorsInnerStateEnum_observed,
  _$informationValueIndicatorsInnerStateEnum_absent,
  _$informationValueIndicatorsInnerStateEnum_unknownCoverage,
  _$informationValueIndicatorsInnerStateEnum_retired,
  _$informationValueIndicatorsInnerStateEnum_reported,
]);

Serializer<InformationValueIndicatorsInnerStateEnum>
    _$informationValueIndicatorsInnerStateEnumSerializer =
    _$InformationValueIndicatorsInnerStateEnumSerializer();

class _$InformationValueIndicatorsInnerStateEnumSerializer
    implements PrimitiveSerializer<InformationValueIndicatorsInnerStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'emerging': 'emerging',
    'observed': 'observed',
    'absent': 'absent',
    'unknownCoverage': 'unknown-coverage',
    'retired': 'retired',
    'reported': 'reported',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'emerging': 'emerging',
    'observed': 'observed',
    'absent': 'absent',
    'unknown-coverage': 'unknownCoverage',
    'retired': 'retired',
    'reported': 'reported',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InformationValueIndicatorsInnerStateEnum
  ];
  @override
  final String wireName = 'InformationValueIndicatorsInnerStateEnum';

  @override
  Object serialize(Serializers serializers,
          InformationValueIndicatorsInnerStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InformationValueIndicatorsInnerStateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InformationValueIndicatorsInnerStateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InformationValueIndicatorsInner
    extends InformationValueIndicatorsInner {
  @override
  final String indicatorId;
  @override
  final String? description;
  @override
  final String? signalFamily;
  @override
  final InformationValueIndicatorsInnerStateEnum? state;
  @override
  final int rank;
  @override
  final num eig;
  @override
  final num potentialEig;
  @override
  final num? pDetect;
  @override
  final num? pObserved;
  @override
  final bool? collectionGap;

  factory _$InformationValueIndicatorsInner(
          [void Function(InformationValueIndicatorsInnerBuilder)? updates]) =>
      (InformationValueIndicatorsInnerBuilder()..update(updates))._build();

  _$InformationValueIndicatorsInner._(
      {required this.indicatorId,
      this.description,
      this.signalFamily,
      this.state,
      required this.rank,
      required this.eig,
      required this.potentialEig,
      this.pDetect,
      this.pObserved,
      this.collectionGap})
      : super._();
  @override
  InformationValueIndicatorsInner rebuild(
          void Function(InformationValueIndicatorsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InformationValueIndicatorsInnerBuilder toBuilder() =>
      InformationValueIndicatorsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InformationValueIndicatorsInner &&
        indicatorId == other.indicatorId &&
        description == other.description &&
        signalFamily == other.signalFamily &&
        state == other.state &&
        rank == other.rank &&
        eig == other.eig &&
        potentialEig == other.potentialEig &&
        pDetect == other.pDetect &&
        pObserved == other.pObserved &&
        collectionGap == other.collectionGap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indicatorId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, signalFamily.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, rank.hashCode);
    _$hash = $jc(_$hash, eig.hashCode);
    _$hash = $jc(_$hash, potentialEig.hashCode);
    _$hash = $jc(_$hash, pDetect.hashCode);
    _$hash = $jc(_$hash, pObserved.hashCode);
    _$hash = $jc(_$hash, collectionGap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InformationValueIndicatorsInner')
          ..add('indicatorId', indicatorId)
          ..add('description', description)
          ..add('signalFamily', signalFamily)
          ..add('state', state)
          ..add('rank', rank)
          ..add('eig', eig)
          ..add('potentialEig', potentialEig)
          ..add('pDetect', pDetect)
          ..add('pObserved', pObserved)
          ..add('collectionGap', collectionGap))
        .toString();
  }
}

class InformationValueIndicatorsInnerBuilder
    implements
        Builder<InformationValueIndicatorsInner,
            InformationValueIndicatorsInnerBuilder> {
  _$InformationValueIndicatorsInner? _$v;

  String? _indicatorId;
  String? get indicatorId => _$this._indicatorId;
  set indicatorId(String? indicatorId) => _$this._indicatorId = indicatorId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _signalFamily;
  String? get signalFamily => _$this._signalFamily;
  set signalFamily(String? signalFamily) => _$this._signalFamily = signalFamily;

  InformationValueIndicatorsInnerStateEnum? _state;
  InformationValueIndicatorsInnerStateEnum? get state => _$this._state;
  set state(InformationValueIndicatorsInnerStateEnum? state) =>
      _$this._state = state;

  int? _rank;
  int? get rank => _$this._rank;
  set rank(int? rank) => _$this._rank = rank;

  num? _eig;
  num? get eig => _$this._eig;
  set eig(num? eig) => _$this._eig = eig;

  num? _potentialEig;
  num? get potentialEig => _$this._potentialEig;
  set potentialEig(num? potentialEig) => _$this._potentialEig = potentialEig;

  num? _pDetect;
  num? get pDetect => _$this._pDetect;
  set pDetect(num? pDetect) => _$this._pDetect = pDetect;

  num? _pObserved;
  num? get pObserved => _$this._pObserved;
  set pObserved(num? pObserved) => _$this._pObserved = pObserved;

  bool? _collectionGap;
  bool? get collectionGap => _$this._collectionGap;
  set collectionGap(bool? collectionGap) =>
      _$this._collectionGap = collectionGap;

  InformationValueIndicatorsInnerBuilder() {
    InformationValueIndicatorsInner._defaults(this);
  }

  InformationValueIndicatorsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indicatorId = $v.indicatorId;
      _description = $v.description;
      _signalFamily = $v.signalFamily;
      _state = $v.state;
      _rank = $v.rank;
      _eig = $v.eig;
      _potentialEig = $v.potentialEig;
      _pDetect = $v.pDetect;
      _pObserved = $v.pObserved;
      _collectionGap = $v.collectionGap;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InformationValueIndicatorsInner other) {
    _$v = other as _$InformationValueIndicatorsInner;
  }

  @override
  void update(void Function(InformationValueIndicatorsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InformationValueIndicatorsInner build() => _build();

  _$InformationValueIndicatorsInner _build() {
    final _$result = _$v ??
        _$InformationValueIndicatorsInner._(
          indicatorId: BuiltValueNullFieldError.checkNotNull(
              indicatorId, r'InformationValueIndicatorsInner', 'indicatorId'),
          description: description,
          signalFamily: signalFamily,
          state: state,
          rank: BuiltValueNullFieldError.checkNotNull(
              rank, r'InformationValueIndicatorsInner', 'rank'),
          eig: BuiltValueNullFieldError.checkNotNull(
              eig, r'InformationValueIndicatorsInner', 'eig'),
          potentialEig: BuiltValueNullFieldError.checkNotNull(
              potentialEig, r'InformationValueIndicatorsInner', 'potentialEig'),
          pDetect: pDetect,
          pObserved: pObserved,
          collectionGap: collectionGap,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

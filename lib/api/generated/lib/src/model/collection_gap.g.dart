// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_gap.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CollectionGap extends CollectionGap {
  @override
  final String id;
  @override
  final String setId;
  @override
  final String indicatorId;
  @override
  final num potentialEig;
  @override
  final num actualEig;
  @override
  final num? pDetect;
  @override
  final BuiltList<CollectionGapRecommendationsInner> recommendations;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$CollectionGap([void Function(CollectionGapBuilder)? updates]) =>
      (CollectionGapBuilder()..update(updates))._build();

  _$CollectionGap._(
      {required this.id,
      required this.setId,
      required this.indicatorId,
      required this.potentialEig,
      required this.actualEig,
      this.pDetect,
      required this.recommendations,
      this.createdAt,
      this.updatedAt})
      : super._();
  @override
  CollectionGap rebuild(void Function(CollectionGapBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionGapBuilder toBuilder() => CollectionGapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionGap &&
        id == other.id &&
        setId == other.setId &&
        indicatorId == other.indicatorId &&
        potentialEig == other.potentialEig &&
        actualEig == other.actualEig &&
        pDetect == other.pDetect &&
        recommendations == other.recommendations &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, setId.hashCode);
    _$hash = $jc(_$hash, indicatorId.hashCode);
    _$hash = $jc(_$hash, potentialEig.hashCode);
    _$hash = $jc(_$hash, actualEig.hashCode);
    _$hash = $jc(_$hash, pDetect.hashCode);
    _$hash = $jc(_$hash, recommendations.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollectionGap')
          ..add('id', id)
          ..add('setId', setId)
          ..add('indicatorId', indicatorId)
          ..add('potentialEig', potentialEig)
          ..add('actualEig', actualEig)
          ..add('pDetect', pDetect)
          ..add('recommendations', recommendations)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class CollectionGapBuilder
    implements Builder<CollectionGap, CollectionGapBuilder> {
  _$CollectionGap? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _setId;
  String? get setId => _$this._setId;
  set setId(String? setId) => _$this._setId = setId;

  String? _indicatorId;
  String? get indicatorId => _$this._indicatorId;
  set indicatorId(String? indicatorId) => _$this._indicatorId = indicatorId;

  num? _potentialEig;
  num? get potentialEig => _$this._potentialEig;
  set potentialEig(num? potentialEig) => _$this._potentialEig = potentialEig;

  num? _actualEig;
  num? get actualEig => _$this._actualEig;
  set actualEig(num? actualEig) => _$this._actualEig = actualEig;

  num? _pDetect;
  num? get pDetect => _$this._pDetect;
  set pDetect(num? pDetect) => _$this._pDetect = pDetect;

  ListBuilder<CollectionGapRecommendationsInner>? _recommendations;
  ListBuilder<CollectionGapRecommendationsInner> get recommendations =>
      _$this._recommendations ??=
          ListBuilder<CollectionGapRecommendationsInner>();
  set recommendations(
          ListBuilder<CollectionGapRecommendationsInner>? recommendations) =>
      _$this._recommendations = recommendations;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  CollectionGapBuilder() {
    CollectionGap._defaults(this);
  }

  CollectionGapBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _setId = $v.setId;
      _indicatorId = $v.indicatorId;
      _potentialEig = $v.potentialEig;
      _actualEig = $v.actualEig;
      _pDetect = $v.pDetect;
      _recommendations = $v.recommendations.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionGap other) {
    _$v = other as _$CollectionGap;
  }

  @override
  void update(void Function(CollectionGapBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollectionGap build() => _build();

  _$CollectionGap _build() {
    _$CollectionGap _$result;
    try {
      _$result = _$v ??
          _$CollectionGap._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'CollectionGap', 'id'),
            setId: BuiltValueNullFieldError.checkNotNull(
                setId, r'CollectionGap', 'setId'),
            indicatorId: BuiltValueNullFieldError.checkNotNull(
                indicatorId, r'CollectionGap', 'indicatorId'),
            potentialEig: BuiltValueNullFieldError.checkNotNull(
                potentialEig, r'CollectionGap', 'potentialEig'),
            actualEig: BuiltValueNullFieldError.checkNotNull(
                actualEig, r'CollectionGap', 'actualEig'),
            pDetect: pDetect,
            recommendations: recommendations.build(),
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recommendations';
        recommendations.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CollectionGap', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

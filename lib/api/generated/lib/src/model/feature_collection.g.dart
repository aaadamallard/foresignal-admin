// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_collection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FeatureCollectionTypeEnum _$featureCollectionTypeEnum_featureCollection =
    const FeatureCollectionTypeEnum._('featureCollection');

FeatureCollectionTypeEnum _$featureCollectionTypeEnumValueOf(String name) {
  switch (name) {
    case 'featureCollection':
      return _$featureCollectionTypeEnum_featureCollection;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FeatureCollectionTypeEnum> _$featureCollectionTypeEnumValues =
    BuiltSet<FeatureCollectionTypeEnum>(const <FeatureCollectionTypeEnum>[
      _$featureCollectionTypeEnum_featureCollection,
    ]);

Serializer<FeatureCollectionTypeEnum> _$featureCollectionTypeEnumSerializer =
    _$FeatureCollectionTypeEnumSerializer();

class _$FeatureCollectionTypeEnumSerializer
    implements PrimitiveSerializer<FeatureCollectionTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'featureCollection': 'FeatureCollection',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FeatureCollection': 'featureCollection',
  };

  @override
  final Iterable<Type> types = const <Type>[FeatureCollectionTypeEnum];
  @override
  final String wireName = 'FeatureCollectionTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    FeatureCollectionTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  FeatureCollectionTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => FeatureCollectionTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$FeatureCollection extends FeatureCollection {
  @override
  final FeatureCollectionTypeEnum type;
  @override
  final BuiltList<Feature> features;
  @override
  final String? nextCursor;
  @override
  final BuiltList<Attribution>? attributions;
  @override
  final int? watermarkSeq;
  @override
  final int? asOfSeq;
  @override
  final DateTime? asOf;
  @override
  final bool? approximate;
  @override
  final DateTime? horizon;
  @override
  final int? licenceFiltered;

  factory _$FeatureCollection([
    void Function(FeatureCollectionBuilder)? updates,
  ]) => (FeatureCollectionBuilder()..update(updates))._build();

  _$FeatureCollection._({
    required this.type,
    required this.features,
    this.nextCursor,
    this.attributions,
    this.watermarkSeq,
    this.asOfSeq,
    this.asOf,
    this.approximate,
    this.horizon,
    this.licenceFiltered,
  }) : super._();
  @override
  FeatureCollection rebuild(void Function(FeatureCollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeatureCollectionBuilder toBuilder() =>
      FeatureCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeatureCollection &&
        type == other.type &&
        features == other.features &&
        nextCursor == other.nextCursor &&
        attributions == other.attributions &&
        watermarkSeq == other.watermarkSeq &&
        asOfSeq == other.asOfSeq &&
        asOf == other.asOf &&
        approximate == other.approximate &&
        horizon == other.horizon &&
        licenceFiltered == other.licenceFiltered;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, features.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jc(_$hash, attributions.hashCode);
    _$hash = $jc(_$hash, watermarkSeq.hashCode);
    _$hash = $jc(_$hash, asOfSeq.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, approximate.hashCode);
    _$hash = $jc(_$hash, horizon.hashCode);
    _$hash = $jc(_$hash, licenceFiltered.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeatureCollection')
          ..add('type', type)
          ..add('features', features)
          ..add('nextCursor', nextCursor)
          ..add('attributions', attributions)
          ..add('watermarkSeq', watermarkSeq)
          ..add('asOfSeq', asOfSeq)
          ..add('asOf', asOf)
          ..add('approximate', approximate)
          ..add('horizon', horizon)
          ..add('licenceFiltered', licenceFiltered))
        .toString();
  }
}

class FeatureCollectionBuilder
    implements Builder<FeatureCollection, FeatureCollectionBuilder> {
  _$FeatureCollection? _$v;

  FeatureCollectionTypeEnum? _type;
  FeatureCollectionTypeEnum? get type => _$this._type;
  set type(FeatureCollectionTypeEnum? type) => _$this._type = type;

  ListBuilder<Feature>? _features;
  ListBuilder<Feature> get features =>
      _$this._features ??= ListBuilder<Feature>();
  set features(ListBuilder<Feature>? features) => _$this._features = features;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ListBuilder<Attribution>? _attributions;
  ListBuilder<Attribution> get attributions =>
      _$this._attributions ??= ListBuilder<Attribution>();
  set attributions(ListBuilder<Attribution>? attributions) =>
      _$this._attributions = attributions;

  int? _watermarkSeq;
  int? get watermarkSeq => _$this._watermarkSeq;
  set watermarkSeq(int? watermarkSeq) => _$this._watermarkSeq = watermarkSeq;

  int? _asOfSeq;
  int? get asOfSeq => _$this._asOfSeq;
  set asOfSeq(int? asOfSeq) => _$this._asOfSeq = asOfSeq;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  bool? _approximate;
  bool? get approximate => _$this._approximate;
  set approximate(bool? approximate) => _$this._approximate = approximate;

  DateTime? _horizon;
  DateTime? get horizon => _$this._horizon;
  set horizon(DateTime? horizon) => _$this._horizon = horizon;

  int? _licenceFiltered;
  int? get licenceFiltered => _$this._licenceFiltered;
  set licenceFiltered(int? licenceFiltered) =>
      _$this._licenceFiltered = licenceFiltered;

  FeatureCollectionBuilder() {
    FeatureCollection._defaults(this);
  }

  FeatureCollectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _features = $v.features.toBuilder();
      _nextCursor = $v.nextCursor;
      _attributions = $v.attributions?.toBuilder();
      _watermarkSeq = $v.watermarkSeq;
      _asOfSeq = $v.asOfSeq;
      _asOf = $v.asOf;
      _approximate = $v.approximate;
      _horizon = $v.horizon;
      _licenceFiltered = $v.licenceFiltered;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeatureCollection other) {
    _$v = other as _$FeatureCollection;
  }

  @override
  void update(void Function(FeatureCollectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeatureCollection build() => _build();

  _$FeatureCollection _build() {
    _$FeatureCollection _$result;
    try {
      _$result =
          _$v ??
          _$FeatureCollection._(
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'FeatureCollection',
              'type',
            ),
            features: features.build(),
            nextCursor: nextCursor,
            attributions: _attributions?.build(),
            watermarkSeq: watermarkSeq,
            asOfSeq: asOfSeq,
            asOf: asOf,
            approximate: approximate,
            horizon: horizon,
            licenceFiltered: licenceFiltered,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'features';
        features.build();

        _$failedField = 'attributions';
        _attributions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FeatureCollection',
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

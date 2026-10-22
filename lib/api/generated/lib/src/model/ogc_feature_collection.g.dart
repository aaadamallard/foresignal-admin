// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_feature_collection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OgcFeatureCollectionTypeEnum
_$ogcFeatureCollectionTypeEnum_featureCollection =
    const OgcFeatureCollectionTypeEnum._('featureCollection');

OgcFeatureCollectionTypeEnum _$ogcFeatureCollectionTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'featureCollection':
      return _$ogcFeatureCollectionTypeEnum_featureCollection;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OgcFeatureCollectionTypeEnum>
_$ogcFeatureCollectionTypeEnumValues = BuiltSet<OgcFeatureCollectionTypeEnum>(
  const <OgcFeatureCollectionTypeEnum>[
    _$ogcFeatureCollectionTypeEnum_featureCollection,
  ],
);

Serializer<OgcFeatureCollectionTypeEnum>
_$ogcFeatureCollectionTypeEnumSerializer =
    _$OgcFeatureCollectionTypeEnumSerializer();

class _$OgcFeatureCollectionTypeEnumSerializer
    implements PrimitiveSerializer<OgcFeatureCollectionTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'featureCollection': 'FeatureCollection',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FeatureCollection': 'featureCollection',
  };

  @override
  final Iterable<Type> types = const <Type>[OgcFeatureCollectionTypeEnum];
  @override
  final String wireName = 'OgcFeatureCollectionTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    OgcFeatureCollectionTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OgcFeatureCollectionTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OgcFeatureCollectionTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OgcFeatureCollection extends OgcFeatureCollection {
  @override
  final OgcFeatureCollectionTypeEnum type;
  @override
  final BuiltList<OgcFeature> features;
  @override
  final BuiltList<OgcLink> links;
  @override
  final int numberReturned;
  @override
  final int? numberMatched;
  @override
  final DateTime timeStamp;
  @override
  final BuiltList<Attribution>? attributions;
  @override
  final int? licenceFiltered;

  factory _$OgcFeatureCollection([
    void Function(OgcFeatureCollectionBuilder)? updates,
  ]) => (OgcFeatureCollectionBuilder()..update(updates))._build();

  _$OgcFeatureCollection._({
    required this.type,
    required this.features,
    required this.links,
    required this.numberReturned,
    this.numberMatched,
    required this.timeStamp,
    this.attributions,
    this.licenceFiltered,
  }) : super._();
  @override
  OgcFeatureCollection rebuild(
    void Function(OgcFeatureCollectionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OgcFeatureCollectionBuilder toBuilder() =>
      OgcFeatureCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcFeatureCollection &&
        type == other.type &&
        features == other.features &&
        links == other.links &&
        numberReturned == other.numberReturned &&
        numberMatched == other.numberMatched &&
        timeStamp == other.timeStamp &&
        attributions == other.attributions &&
        licenceFiltered == other.licenceFiltered;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, features.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, numberReturned.hashCode);
    _$hash = $jc(_$hash, numberMatched.hashCode);
    _$hash = $jc(_$hash, timeStamp.hashCode);
    _$hash = $jc(_$hash, attributions.hashCode);
    _$hash = $jc(_$hash, licenceFiltered.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcFeatureCollection')
          ..add('type', type)
          ..add('features', features)
          ..add('links', links)
          ..add('numberReturned', numberReturned)
          ..add('numberMatched', numberMatched)
          ..add('timeStamp', timeStamp)
          ..add('attributions', attributions)
          ..add('licenceFiltered', licenceFiltered))
        .toString();
  }
}

class OgcFeatureCollectionBuilder
    implements Builder<OgcFeatureCollection, OgcFeatureCollectionBuilder> {
  _$OgcFeatureCollection? _$v;

  OgcFeatureCollectionTypeEnum? _type;
  OgcFeatureCollectionTypeEnum? get type => _$this._type;
  set type(OgcFeatureCollectionTypeEnum? type) => _$this._type = type;

  ListBuilder<OgcFeature>? _features;
  ListBuilder<OgcFeature> get features =>
      _$this._features ??= ListBuilder<OgcFeature>();
  set features(ListBuilder<OgcFeature>? features) =>
      _$this._features = features;

  ListBuilder<OgcLink>? _links;
  ListBuilder<OgcLink> get links => _$this._links ??= ListBuilder<OgcLink>();
  set links(ListBuilder<OgcLink>? links) => _$this._links = links;

  int? _numberReturned;
  int? get numberReturned => _$this._numberReturned;
  set numberReturned(int? numberReturned) =>
      _$this._numberReturned = numberReturned;

  int? _numberMatched;
  int? get numberMatched => _$this._numberMatched;
  set numberMatched(int? numberMatched) =>
      _$this._numberMatched = numberMatched;

  DateTime? _timeStamp;
  DateTime? get timeStamp => _$this._timeStamp;
  set timeStamp(DateTime? timeStamp) => _$this._timeStamp = timeStamp;

  ListBuilder<Attribution>? _attributions;
  ListBuilder<Attribution> get attributions =>
      _$this._attributions ??= ListBuilder<Attribution>();
  set attributions(ListBuilder<Attribution>? attributions) =>
      _$this._attributions = attributions;

  int? _licenceFiltered;
  int? get licenceFiltered => _$this._licenceFiltered;
  set licenceFiltered(int? licenceFiltered) =>
      _$this._licenceFiltered = licenceFiltered;

  OgcFeatureCollectionBuilder() {
    OgcFeatureCollection._defaults(this);
  }

  OgcFeatureCollectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _features = $v.features.toBuilder();
      _links = $v.links.toBuilder();
      _numberReturned = $v.numberReturned;
      _numberMatched = $v.numberMatched;
      _timeStamp = $v.timeStamp;
      _attributions = $v.attributions?.toBuilder();
      _licenceFiltered = $v.licenceFiltered;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcFeatureCollection other) {
    _$v = other as _$OgcFeatureCollection;
  }

  @override
  void update(void Function(OgcFeatureCollectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcFeatureCollection build() => _build();

  _$OgcFeatureCollection _build() {
    _$OgcFeatureCollection _$result;
    try {
      _$result =
          _$v ??
          _$OgcFeatureCollection._(
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'OgcFeatureCollection',
              'type',
            ),
            features: features.build(),
            links: links.build(),
            numberReturned: BuiltValueNullFieldError.checkNotNull(
              numberReturned,
              r'OgcFeatureCollection',
              'numberReturned',
            ),
            numberMatched: numberMatched,
            timeStamp: BuiltValueNullFieldError.checkNotNull(
              timeStamp,
              r'OgcFeatureCollection',
              'timeStamp',
            ),
            attributions: _attributions?.build(),
            licenceFiltered: licenceFiltered,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'features';
        features.build();
        _$failedField = 'links';
        links.build();

        _$failedField = 'attributions';
        _attributions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OgcFeatureCollection',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legend.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LegendTypeEnum _$legendTypeEnum_continuous = const LegendTypeEnum._(
  'continuous',
);
const LegendTypeEnum _$legendTypeEnum_discrete = const LegendTypeEnum._(
  'discrete',
);
const LegendTypeEnum _$legendTypeEnum_categorical = const LegendTypeEnum._(
  'categorical',
);
const LegendTypeEnum _$legendTypeEnum_unknownDefaultOpenApi =
    const LegendTypeEnum._('unknownDefaultOpenApi');

LegendTypeEnum _$legendTypeEnumValueOf(String name) {
  switch (name) {
    case 'continuous':
      return _$legendTypeEnum_continuous;
    case 'discrete':
      return _$legendTypeEnum_discrete;
    case 'categorical':
      return _$legendTypeEnum_categorical;
    case 'unknownDefaultOpenApi':
      return _$legendTypeEnum_unknownDefaultOpenApi;
    default:
      return _$legendTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<LegendTypeEnum> _$legendTypeEnumValues =
    BuiltSet<LegendTypeEnum>(const <LegendTypeEnum>[
      _$legendTypeEnum_continuous,
      _$legendTypeEnum_discrete,
      _$legendTypeEnum_categorical,
      _$legendTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<LegendTypeEnum> _$legendTypeEnumSerializer =
    _$LegendTypeEnumSerializer();

class _$LegendTypeEnumSerializer
    implements PrimitiveSerializer<LegendTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'continuous': 'continuous',
    'discrete': 'discrete',
    'categorical': 'categorical',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'continuous': 'continuous',
    'discrete': 'discrete',
    'categorical': 'categorical',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[LegendTypeEnum];
  @override
  final String wireName = 'LegendTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    LegendTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LegendTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LegendTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Legend extends Legend {
  @override
  final String? productId;
  @override
  final String styleId;
  @override
  final int styleVersion;
  @override
  final LegendTypeEnum type;
  @override
  final String? units;
  @override
  final String? unitsLabel;
  @override
  final BuiltList<StyleStop>? stops;
  @override
  final BuiltList<LegendTick>? ticks;
  @override
  final BuiltList<StyleCategory>? categories;
  @override
  final BuiltList<StyleSpecial>? specials;
  @override
  final BuiltList<StyleMeaning>? meaning;

  factory _$Legend([void Function(LegendBuilder)? updates]) =>
      (LegendBuilder()..update(updates))._build();

  _$Legend._({
    this.productId,
    required this.styleId,
    required this.styleVersion,
    required this.type,
    this.units,
    this.unitsLabel,
    this.stops,
    this.ticks,
    this.categories,
    this.specials,
    this.meaning,
  }) : super._();
  @override
  Legend rebuild(void Function(LegendBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LegendBuilder toBuilder() => LegendBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Legend &&
        productId == other.productId &&
        styleId == other.styleId &&
        styleVersion == other.styleVersion &&
        type == other.type &&
        units == other.units &&
        unitsLabel == other.unitsLabel &&
        stops == other.stops &&
        ticks == other.ticks &&
        categories == other.categories &&
        specials == other.specials &&
        meaning == other.meaning;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, styleId.hashCode);
    _$hash = $jc(_$hash, styleVersion.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, unitsLabel.hashCode);
    _$hash = $jc(_$hash, stops.hashCode);
    _$hash = $jc(_$hash, ticks.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jc(_$hash, specials.hashCode);
    _$hash = $jc(_$hash, meaning.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Legend')
          ..add('productId', productId)
          ..add('styleId', styleId)
          ..add('styleVersion', styleVersion)
          ..add('type', type)
          ..add('units', units)
          ..add('unitsLabel', unitsLabel)
          ..add('stops', stops)
          ..add('ticks', ticks)
          ..add('categories', categories)
          ..add('specials', specials)
          ..add('meaning', meaning))
        .toString();
  }
}

class LegendBuilder implements Builder<Legend, LegendBuilder> {
  _$Legend? _$v;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _styleId;
  String? get styleId => _$this._styleId;
  set styleId(String? styleId) => _$this._styleId = styleId;

  int? _styleVersion;
  int? get styleVersion => _$this._styleVersion;
  set styleVersion(int? styleVersion) => _$this._styleVersion = styleVersion;

  LegendTypeEnum? _type;
  LegendTypeEnum? get type => _$this._type;
  set type(LegendTypeEnum? type) => _$this._type = type;

  String? _units;
  String? get units => _$this._units;
  set units(String? units) => _$this._units = units;

  String? _unitsLabel;
  String? get unitsLabel => _$this._unitsLabel;
  set unitsLabel(String? unitsLabel) => _$this._unitsLabel = unitsLabel;

  ListBuilder<StyleStop>? _stops;
  ListBuilder<StyleStop> get stops =>
      _$this._stops ??= ListBuilder<StyleStop>();
  set stops(ListBuilder<StyleStop>? stops) => _$this._stops = stops;

  ListBuilder<LegendTick>? _ticks;
  ListBuilder<LegendTick> get ticks =>
      _$this._ticks ??= ListBuilder<LegendTick>();
  set ticks(ListBuilder<LegendTick>? ticks) => _$this._ticks = ticks;

  ListBuilder<StyleCategory>? _categories;
  ListBuilder<StyleCategory> get categories =>
      _$this._categories ??= ListBuilder<StyleCategory>();
  set categories(ListBuilder<StyleCategory>? categories) =>
      _$this._categories = categories;

  ListBuilder<StyleSpecial>? _specials;
  ListBuilder<StyleSpecial> get specials =>
      _$this._specials ??= ListBuilder<StyleSpecial>();
  set specials(ListBuilder<StyleSpecial>? specials) =>
      _$this._specials = specials;

  ListBuilder<StyleMeaning>? _meaning;
  ListBuilder<StyleMeaning> get meaning =>
      _$this._meaning ??= ListBuilder<StyleMeaning>();
  set meaning(ListBuilder<StyleMeaning>? meaning) => _$this._meaning = meaning;

  LegendBuilder() {
    Legend._defaults(this);
  }

  LegendBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _styleId = $v.styleId;
      _styleVersion = $v.styleVersion;
      _type = $v.type;
      _units = $v.units;
      _unitsLabel = $v.unitsLabel;
      _stops = $v.stops?.toBuilder();
      _ticks = $v.ticks?.toBuilder();
      _categories = $v.categories?.toBuilder();
      _specials = $v.specials?.toBuilder();
      _meaning = $v.meaning?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Legend other) {
    _$v = other as _$Legend;
  }

  @override
  void update(void Function(LegendBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Legend build() => _build();

  _$Legend _build() {
    _$Legend _$result;
    try {
      _$result =
          _$v ??
          _$Legend._(
            productId: productId,
            styleId: BuiltValueNullFieldError.checkNotNull(
              styleId,
              r'Legend',
              'styleId',
            ),
            styleVersion: BuiltValueNullFieldError.checkNotNull(
              styleVersion,
              r'Legend',
              'styleVersion',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'Legend',
              'type',
            ),
            units: units,
            unitsLabel: unitsLabel,
            stops: _stops?.build(),
            ticks: _ticks?.build(),
            categories: _categories?.build(),
            specials: _specials?.build(),
            meaning: _meaning?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stops';
        _stops?.build();
        _$failedField = 'ticks';
        _ticks?.build();
        _$failedField = 'categories';
        _categories?.build();
        _$failedField = 'specials';
        _specials?.build();
        _$failedField = 'meaning';
        _meaning?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Legend',
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

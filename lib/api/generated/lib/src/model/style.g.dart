// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StyleTypeEnum _$styleTypeEnum_continuous = const StyleTypeEnum._(
  'continuous',
);
const StyleTypeEnum _$styleTypeEnum_discrete = const StyleTypeEnum._(
  'discrete',
);
const StyleTypeEnum _$styleTypeEnum_categorical = const StyleTypeEnum._(
  'categorical',
);

StyleTypeEnum _$styleTypeEnumValueOf(String name) {
  switch (name) {
    case 'continuous':
      return _$styleTypeEnum_continuous;
    case 'discrete':
      return _$styleTypeEnum_discrete;
    case 'categorical':
      return _$styleTypeEnum_categorical;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StyleTypeEnum> _$styleTypeEnumValues = BuiltSet<StyleTypeEnum>(
  const <StyleTypeEnum>[
    _$styleTypeEnum_continuous,
    _$styleTypeEnum_discrete,
    _$styleTypeEnum_categorical,
  ],
);

const StyleDeriveEnum _$styleDeriveEnum_speed = const StyleDeriveEnum._(
  'speed',
);

StyleDeriveEnum _$styleDeriveEnumValueOf(String name) {
  switch (name) {
    case 'speed':
      return _$styleDeriveEnum_speed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StyleDeriveEnum> _$styleDeriveEnumValues =
    BuiltSet<StyleDeriveEnum>(const <StyleDeriveEnum>[_$styleDeriveEnum_speed]);

Serializer<StyleTypeEnum> _$styleTypeEnumSerializer =
    _$StyleTypeEnumSerializer();
Serializer<StyleDeriveEnum> _$styleDeriveEnumSerializer =
    _$StyleDeriveEnumSerializer();

class _$StyleTypeEnumSerializer implements PrimitiveSerializer<StyleTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'continuous': 'continuous',
    'discrete': 'discrete',
    'categorical': 'categorical',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'continuous': 'continuous',
    'discrete': 'discrete',
    'categorical': 'categorical',
  };

  @override
  final Iterable<Type> types = const <Type>[StyleTypeEnum];
  @override
  final String wireName = 'StyleTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    StyleTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StyleTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StyleTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StyleDeriveEnumSerializer
    implements PrimitiveSerializer<StyleDeriveEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'speed': 'speed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'speed': 'speed',
  };

  @override
  final Iterable<Type> types = const <Type>[StyleDeriveEnum];
  @override
  final String wireName = 'StyleDeriveEnum';

  @override
  Object serialize(
    Serializers serializers,
    StyleDeriveEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StyleDeriveEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StyleDeriveEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Style extends Style {
  @override
  final String id;
  @override
  final int version;
  @override
  final String ref;
  @override
  final bool? current;
  @override
  final StyleTypeEnum type;
  @override
  final String? units;
  @override
  final BuiltList<StyleStop>? stops;
  @override
  final BuiltList<StyleCategory>? categories;
  @override
  final BuiltList<StyleSpecial>? specials;
  @override
  final BuiltList<StyleMeaning>? meaning;
  @override
  final String? notice;
  @override
  final StyleDeriveEnum? derive;

  factory _$Style([void Function(StyleBuilder)? updates]) =>
      (StyleBuilder()..update(updates))._build();

  _$Style._({
    required this.id,
    required this.version,
    required this.ref,
    this.current,
    required this.type,
    this.units,
    this.stops,
    this.categories,
    this.specials,
    this.meaning,
    this.notice,
    this.derive,
  }) : super._();
  @override
  Style rebuild(void Function(StyleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StyleBuilder toBuilder() => StyleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Style &&
        id == other.id &&
        version == other.version &&
        ref == other.ref &&
        current == other.current &&
        type == other.type &&
        units == other.units &&
        stops == other.stops &&
        categories == other.categories &&
        specials == other.specials &&
        meaning == other.meaning &&
        notice == other.notice &&
        derive == other.derive;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, stops.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jc(_$hash, specials.hashCode);
    _$hash = $jc(_$hash, meaning.hashCode);
    _$hash = $jc(_$hash, notice.hashCode);
    _$hash = $jc(_$hash, derive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Style')
          ..add('id', id)
          ..add('version', version)
          ..add('ref', ref)
          ..add('current', current)
          ..add('type', type)
          ..add('units', units)
          ..add('stops', stops)
          ..add('categories', categories)
          ..add('specials', specials)
          ..add('meaning', meaning)
          ..add('notice', notice)
          ..add('derive', derive))
        .toString();
  }
}

class StyleBuilder implements Builder<Style, StyleBuilder> {
  _$Style? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  bool? _current;
  bool? get current => _$this._current;
  set current(bool? current) => _$this._current = current;

  StyleTypeEnum? _type;
  StyleTypeEnum? get type => _$this._type;
  set type(StyleTypeEnum? type) => _$this._type = type;

  String? _units;
  String? get units => _$this._units;
  set units(String? units) => _$this._units = units;

  ListBuilder<StyleStop>? _stops;
  ListBuilder<StyleStop> get stops =>
      _$this._stops ??= ListBuilder<StyleStop>();
  set stops(ListBuilder<StyleStop>? stops) => _$this._stops = stops;

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

  String? _notice;
  String? get notice => _$this._notice;
  set notice(String? notice) => _$this._notice = notice;

  StyleDeriveEnum? _derive;
  StyleDeriveEnum? get derive => _$this._derive;
  set derive(StyleDeriveEnum? derive) => _$this._derive = derive;

  StyleBuilder() {
    Style._defaults(this);
  }

  StyleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _version = $v.version;
      _ref = $v.ref;
      _current = $v.current;
      _type = $v.type;
      _units = $v.units;
      _stops = $v.stops?.toBuilder();
      _categories = $v.categories?.toBuilder();
      _specials = $v.specials?.toBuilder();
      _meaning = $v.meaning?.toBuilder();
      _notice = $v.notice;
      _derive = $v.derive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Style other) {
    _$v = other as _$Style;
  }

  @override
  void update(void Function(StyleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Style build() => _build();

  _$Style _build() {
    _$Style _$result;
    try {
      _$result =
          _$v ??
          _$Style._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Style', 'id'),
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'Style',
              'version',
            ),
            ref: BuiltValueNullFieldError.checkNotNull(ref, r'Style', 'ref'),
            current: current,
            type: BuiltValueNullFieldError.checkNotNull(type, r'Style', 'type'),
            units: units,
            stops: _stops?.build(),
            categories: _categories?.build(),
            specials: _specials?.build(),
            meaning: _meaning?.build(),
            notice: notice,
            derive: derive,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stops';
        _stops?.build();
        _$failedField = 'categories';
        _categories?.build();
        _$failedField = 'specials';
        _specials?.build();
        _$failedField = 'meaning';
        _meaning?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Style', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

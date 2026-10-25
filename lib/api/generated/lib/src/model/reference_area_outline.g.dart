// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_area_outline.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReferenceAreaOutlineKindEnum _$referenceAreaOutlineKindEnum_country =
    const ReferenceAreaOutlineKindEnum._('country');
const ReferenceAreaOutlineKindEnum _$referenceAreaOutlineKindEnum_admin1 =
    const ReferenceAreaOutlineKindEnum._('admin1');

ReferenceAreaOutlineKindEnum _$referenceAreaOutlineKindEnumValueOf(
  String name,
) {
  switch (name) {
    case 'country':
      return _$referenceAreaOutlineKindEnum_country;
    case 'admin1':
      return _$referenceAreaOutlineKindEnum_admin1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReferenceAreaOutlineKindEnum>
_$referenceAreaOutlineKindEnumValues = BuiltSet<ReferenceAreaOutlineKindEnum>(
  const <ReferenceAreaOutlineKindEnum>[
    _$referenceAreaOutlineKindEnum_country,
    _$referenceAreaOutlineKindEnum_admin1,
  ],
);

Serializer<ReferenceAreaOutlineKindEnum>
_$referenceAreaOutlineKindEnumSerializer =
    _$ReferenceAreaOutlineKindEnumSerializer();

class _$ReferenceAreaOutlineKindEnumSerializer
    implements PrimitiveSerializer<ReferenceAreaOutlineKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'country': 'country',
    'admin1': 'admin1',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'country': 'country',
    'admin1': 'admin1',
  };

  @override
  final Iterable<Type> types = const <Type>[ReferenceAreaOutlineKindEnum];
  @override
  final String wireName = 'ReferenceAreaOutlineKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    ReferenceAreaOutlineKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReferenceAreaOutlineKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReferenceAreaOutlineKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ReferenceAreaOutline extends ReferenceAreaOutline {
  @override
  final ReferenceAreaOutlineKindEnum kind;
  @override
  final String code;
  @override
  final String name;
  @override
  final String? countryIso2;
  @override
  final String? countryName;
  @override
  final BuiltList<num> bbox;
  @override
  final Geometry geometry;

  factory _$ReferenceAreaOutline([
    void Function(ReferenceAreaOutlineBuilder)? updates,
  ]) => (ReferenceAreaOutlineBuilder()..update(updates))._build();

  _$ReferenceAreaOutline._({
    required this.kind,
    required this.code,
    required this.name,
    this.countryIso2,
    this.countryName,
    required this.bbox,
    required this.geometry,
  }) : super._();
  @override
  ReferenceAreaOutline rebuild(
    void Function(ReferenceAreaOutlineBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReferenceAreaOutlineBuilder toBuilder() =>
      ReferenceAreaOutlineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReferenceAreaOutline &&
        kind == other.kind &&
        code == other.code &&
        name == other.name &&
        countryIso2 == other.countryIso2 &&
        countryName == other.countryName &&
        bbox == other.bbox &&
        geometry == other.geometry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, countryIso2.hashCode);
    _$hash = $jc(_$hash, countryName.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReferenceAreaOutline')
          ..add('kind', kind)
          ..add('code', code)
          ..add('name', name)
          ..add('countryIso2', countryIso2)
          ..add('countryName', countryName)
          ..add('bbox', bbox)
          ..add('geometry', geometry))
        .toString();
  }
}

class ReferenceAreaOutlineBuilder
    implements Builder<ReferenceAreaOutline, ReferenceAreaOutlineBuilder> {
  _$ReferenceAreaOutline? _$v;

  ReferenceAreaOutlineKindEnum? _kind;
  ReferenceAreaOutlineKindEnum? get kind => _$this._kind;
  set kind(ReferenceAreaOutlineKindEnum? kind) => _$this._kind = kind;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _countryIso2;
  String? get countryIso2 => _$this._countryIso2;
  set countryIso2(String? countryIso2) => _$this._countryIso2 = countryIso2;

  String? _countryName;
  String? get countryName => _$this._countryName;
  set countryName(String? countryName) => _$this._countryName = countryName;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  ReferenceAreaOutlineBuilder() {
    ReferenceAreaOutline._defaults(this);
  }

  ReferenceAreaOutlineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _code = $v.code;
      _name = $v.name;
      _countryIso2 = $v.countryIso2;
      _countryName = $v.countryName;
      _bbox = $v.bbox.toBuilder();
      _geometry = $v.geometry.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReferenceAreaOutline other) {
    _$v = other as _$ReferenceAreaOutline;
  }

  @override
  void update(void Function(ReferenceAreaOutlineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReferenceAreaOutline build() => _build();

  _$ReferenceAreaOutline _build() {
    _$ReferenceAreaOutline _$result;
    try {
      _$result =
          _$v ??
          _$ReferenceAreaOutline._(
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'ReferenceAreaOutline',
              'kind',
            ),
            code: BuiltValueNullFieldError.checkNotNull(
              code,
              r'ReferenceAreaOutline',
              'code',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'ReferenceAreaOutline',
              'name',
            ),
            countryIso2: countryIso2,
            countryName: countryName,
            bbox: bbox.build(),
            geometry: geometry.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bbox';
        bbox.build();
        _$failedField = 'geometry';
        geometry.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReferenceAreaOutline',
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

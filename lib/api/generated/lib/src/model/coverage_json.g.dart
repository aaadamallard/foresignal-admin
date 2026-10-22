// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coverage_json.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CoverageJsonTypeEnum _$coverageJsonTypeEnum_coverage =
    const CoverageJsonTypeEnum._('coverage');
const CoverageJsonTypeEnum _$coverageJsonTypeEnum_coverageCollection =
    const CoverageJsonTypeEnum._('coverageCollection');

CoverageJsonTypeEnum _$coverageJsonTypeEnumValueOf(String name) {
  switch (name) {
    case 'coverage':
      return _$coverageJsonTypeEnum_coverage;
    case 'coverageCollection':
      return _$coverageJsonTypeEnum_coverageCollection;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CoverageJsonTypeEnum> _$coverageJsonTypeEnumValues =
    BuiltSet<CoverageJsonTypeEnum>(const <CoverageJsonTypeEnum>[
      _$coverageJsonTypeEnum_coverage,
      _$coverageJsonTypeEnum_coverageCollection,
    ]);

Serializer<CoverageJsonTypeEnum> _$coverageJsonTypeEnumSerializer =
    _$CoverageJsonTypeEnumSerializer();

class _$CoverageJsonTypeEnumSerializer
    implements PrimitiveSerializer<CoverageJsonTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'coverage': 'Coverage',
    'coverageCollection': 'CoverageCollection',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Coverage': 'coverage',
    'CoverageCollection': 'coverageCollection',
  };

  @override
  final Iterable<Type> types = const <Type>[CoverageJsonTypeEnum];
  @override
  final String wireName = 'CoverageJsonTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    CoverageJsonTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CoverageJsonTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CoverageJsonTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CoverageJson extends CoverageJson {
  @override
  final CoverageJsonTypeEnum type;
  @override
  final BuiltMap<String, JsonObject?>? domain;
  @override
  final BuiltMap<String, BuiltMap<String, JsonObject?>>? parameters;
  @override
  final BuiltMap<String, BuiltMap<String, JsonObject?>>? ranges;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>>? coverages;

  factory _$CoverageJson([void Function(CoverageJsonBuilder)? updates]) =>
      (CoverageJsonBuilder()..update(updates))._build();

  _$CoverageJson._({
    required this.type,
    this.domain,
    this.parameters,
    this.ranges,
    this.coverages,
  }) : super._();
  @override
  CoverageJson rebuild(void Function(CoverageJsonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoverageJsonBuilder toBuilder() => CoverageJsonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoverageJson &&
        type == other.type &&
        domain == other.domain &&
        parameters == other.parameters &&
        ranges == other.ranges &&
        coverages == other.coverages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, ranges.hashCode);
    _$hash = $jc(_$hash, coverages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CoverageJson')
          ..add('type', type)
          ..add('domain', domain)
          ..add('parameters', parameters)
          ..add('ranges', ranges)
          ..add('coverages', coverages))
        .toString();
  }
}

class CoverageJsonBuilder
    implements Builder<CoverageJson, CoverageJsonBuilder> {
  _$CoverageJson? _$v;

  CoverageJsonTypeEnum? _type;
  CoverageJsonTypeEnum? get type => _$this._type;
  set type(CoverageJsonTypeEnum? type) => _$this._type = type;

  MapBuilder<String, JsonObject?>? _domain;
  MapBuilder<String, JsonObject?> get domain =>
      _$this._domain ??= MapBuilder<String, JsonObject?>();
  set domain(MapBuilder<String, JsonObject?>? domain) =>
      _$this._domain = domain;

  MapBuilder<String, BuiltMap<String, JsonObject?>>? _parameters;
  MapBuilder<String, BuiltMap<String, JsonObject?>> get parameters =>
      _$this._parameters ??=
          MapBuilder<String, BuiltMap<String, JsonObject?>>();
  set parameters(
    MapBuilder<String, BuiltMap<String, JsonObject?>>? parameters,
  ) => _$this._parameters = parameters;

  MapBuilder<String, BuiltMap<String, JsonObject?>>? _ranges;
  MapBuilder<String, BuiltMap<String, JsonObject?>> get ranges =>
      _$this._ranges ??= MapBuilder<String, BuiltMap<String, JsonObject?>>();
  set ranges(MapBuilder<String, BuiltMap<String, JsonObject?>>? ranges) =>
      _$this._ranges = ranges;

  ListBuilder<BuiltMap<String, JsonObject?>>? _coverages;
  ListBuilder<BuiltMap<String, JsonObject?>> get coverages =>
      _$this._coverages ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set coverages(ListBuilder<BuiltMap<String, JsonObject?>>? coverages) =>
      _$this._coverages = coverages;

  CoverageJsonBuilder() {
    CoverageJson._defaults(this);
  }

  CoverageJsonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _domain = $v.domain?.toBuilder();
      _parameters = $v.parameters?.toBuilder();
      _ranges = $v.ranges?.toBuilder();
      _coverages = $v.coverages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoverageJson other) {
    _$v = other as _$CoverageJson;
  }

  @override
  void update(void Function(CoverageJsonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoverageJson build() => _build();

  _$CoverageJson _build() {
    _$CoverageJson _$result;
    try {
      _$result =
          _$v ??
          _$CoverageJson._(
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'CoverageJson',
              'type',
            ),
            domain: _domain?.build(),
            parameters: _parameters?.build(),
            ranges: _ranges?.build(),
            coverages: _coverages?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'domain';
        _domain?.build();
        _$failedField = 'parameters';
        _parameters?.build();
        _$failedField = 'ranges';
        _ranges?.build();
        _$failedField = 'coverages';
        _coverages?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CoverageJson',
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

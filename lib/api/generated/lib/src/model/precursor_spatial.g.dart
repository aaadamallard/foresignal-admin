// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_spatial.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrecursorSpatialRuleEnum _$precursorSpatialRuleEnum_sameEntity =
    const PrecursorSpatialRuleEnum._('sameEntity');
const PrecursorSpatialRuleEnum _$precursorSpatialRuleEnum_withinKm =
    const PrecursorSpatialRuleEnum._('withinKm');
const PrecursorSpatialRuleEnum _$precursorSpatialRuleEnum_sameRegion =
    const PrecursorSpatialRuleEnum._('sameRegion');
const PrecursorSpatialRuleEnum _$precursorSpatialRuleEnum_none =
    const PrecursorSpatialRuleEnum._('none');
const PrecursorSpatialRuleEnum
_$precursorSpatialRuleEnum_unknownDefaultOpenApi =
    const PrecursorSpatialRuleEnum._('unknownDefaultOpenApi');

PrecursorSpatialRuleEnum _$precursorSpatialRuleEnumValueOf(String name) {
  switch (name) {
    case 'sameEntity':
      return _$precursorSpatialRuleEnum_sameEntity;
    case 'withinKm':
      return _$precursorSpatialRuleEnum_withinKm;
    case 'sameRegion':
      return _$precursorSpatialRuleEnum_sameRegion;
    case 'none':
      return _$precursorSpatialRuleEnum_none;
    case 'unknownDefaultOpenApi':
      return _$precursorSpatialRuleEnum_unknownDefaultOpenApi;
    default:
      return _$precursorSpatialRuleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PrecursorSpatialRuleEnum> _$precursorSpatialRuleEnumValues =
    BuiltSet<PrecursorSpatialRuleEnum>(const <PrecursorSpatialRuleEnum>[
      _$precursorSpatialRuleEnum_sameEntity,
      _$precursorSpatialRuleEnum_withinKm,
      _$precursorSpatialRuleEnum_sameRegion,
      _$precursorSpatialRuleEnum_none,
      _$precursorSpatialRuleEnum_unknownDefaultOpenApi,
    ]);

const PrecursorSpatialRegionLevelEnum
_$precursorSpatialRegionLevelEnum_country =
    const PrecursorSpatialRegionLevelEnum._('country');
const PrecursorSpatialRegionLevelEnum _$precursorSpatialRegionLevelEnum_admin1 =
    const PrecursorSpatialRegionLevelEnum._('admin1');
const PrecursorSpatialRegionLevelEnum
_$precursorSpatialRegionLevelEnum_unknownDefaultOpenApi =
    const PrecursorSpatialRegionLevelEnum._('unknownDefaultOpenApi');

PrecursorSpatialRegionLevelEnum _$precursorSpatialRegionLevelEnumValueOf(
  String name,
) {
  switch (name) {
    case 'country':
      return _$precursorSpatialRegionLevelEnum_country;
    case 'admin1':
      return _$precursorSpatialRegionLevelEnum_admin1;
    case 'unknownDefaultOpenApi':
      return _$precursorSpatialRegionLevelEnum_unknownDefaultOpenApi;
    default:
      return _$precursorSpatialRegionLevelEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PrecursorSpatialRegionLevelEnum>
_$precursorSpatialRegionLevelEnumValues =
    BuiltSet<PrecursorSpatialRegionLevelEnum>(
      const <PrecursorSpatialRegionLevelEnum>[
        _$precursorSpatialRegionLevelEnum_country,
        _$precursorSpatialRegionLevelEnum_admin1,
        _$precursorSpatialRegionLevelEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<PrecursorSpatialRuleEnum> _$precursorSpatialRuleEnumSerializer =
    _$PrecursorSpatialRuleEnumSerializer();
Serializer<PrecursorSpatialRegionLevelEnum>
_$precursorSpatialRegionLevelEnumSerializer =
    _$PrecursorSpatialRegionLevelEnumSerializer();

class _$PrecursorSpatialRuleEnumSerializer
    implements PrimitiveSerializer<PrecursorSpatialRuleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'sameEntity': 'sameEntity',
    'withinKm': 'withinKm',
    'sameRegion': 'sameRegion',
    'none': 'none',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'sameEntity': 'sameEntity',
    'withinKm': 'withinKm',
    'sameRegion': 'sameRegion',
    'none': 'none',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PrecursorSpatialRuleEnum];
  @override
  final String wireName = 'PrecursorSpatialRuleEnum';

  @override
  Object serialize(
    Serializers serializers,
    PrecursorSpatialRuleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrecursorSpatialRuleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrecursorSpatialRuleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PrecursorSpatialRegionLevelEnumSerializer
    implements PrimitiveSerializer<PrecursorSpatialRegionLevelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'country': 'country',
    'admin1': 'admin1',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'country': 'country',
    'admin1': 'admin1',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PrecursorSpatialRegionLevelEnum];
  @override
  final String wireName = 'PrecursorSpatialRegionLevelEnum';

  @override
  Object serialize(
    Serializers serializers,
    PrecursorSpatialRegionLevelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrecursorSpatialRegionLevelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrecursorSpatialRegionLevelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PrecursorSpatial extends PrecursorSpatial {
  @override
  final PrecursorSpatialRuleEnum rule;
  @override
  final num? withinKm;
  @override
  final PrecursorSpatialRegionLevelEnum? regionLevel;

  factory _$PrecursorSpatial([
    void Function(PrecursorSpatialBuilder)? updates,
  ]) => (PrecursorSpatialBuilder()..update(updates))._build();

  _$PrecursorSpatial._({required this.rule, this.withinKm, this.regionLevel})
    : super._();
  @override
  PrecursorSpatial rebuild(void Function(PrecursorSpatialBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecursorSpatialBuilder toBuilder() =>
      PrecursorSpatialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorSpatial &&
        rule == other.rule &&
        withinKm == other.withinKm &&
        regionLevel == other.regionLevel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rule.hashCode);
    _$hash = $jc(_$hash, withinKm.hashCode);
    _$hash = $jc(_$hash, regionLevel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorSpatial')
          ..add('rule', rule)
          ..add('withinKm', withinKm)
          ..add('regionLevel', regionLevel))
        .toString();
  }
}

class PrecursorSpatialBuilder
    implements Builder<PrecursorSpatial, PrecursorSpatialBuilder> {
  _$PrecursorSpatial? _$v;

  PrecursorSpatialRuleEnum? _rule;
  PrecursorSpatialRuleEnum? get rule => _$this._rule;
  set rule(PrecursorSpatialRuleEnum? rule) => _$this._rule = rule;

  num? _withinKm;
  num? get withinKm => _$this._withinKm;
  set withinKm(num? withinKm) => _$this._withinKm = withinKm;

  PrecursorSpatialRegionLevelEnum? _regionLevel;
  PrecursorSpatialRegionLevelEnum? get regionLevel => _$this._regionLevel;
  set regionLevel(PrecursorSpatialRegionLevelEnum? regionLevel) =>
      _$this._regionLevel = regionLevel;

  PrecursorSpatialBuilder() {
    PrecursorSpatial._defaults(this);
  }

  PrecursorSpatialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rule = $v.rule;
      _withinKm = $v.withinKm;
      _regionLevel = $v.regionLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorSpatial other) {
    _$v = other as _$PrecursorSpatial;
  }

  @override
  void update(void Function(PrecursorSpatialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorSpatial build() => _build();

  _$PrecursorSpatial _build() {
    final _$result =
        _$v ??
        _$PrecursorSpatial._(
          rule: BuiltValueNullFieldError.checkNotNull(
            rule,
            r'PrecursorSpatial',
            'rule',
          ),
          withinKm: withinKm,
          regionLevel: regionLevel,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

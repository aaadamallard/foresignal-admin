// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correlation_recipe_definition_joins_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CorrelationRecipeDefinitionJoinsInnerSameRegionEnum
_$correlationRecipeDefinitionJoinsInnerSameRegionEnum_country =
    const CorrelationRecipeDefinitionJoinsInnerSameRegionEnum._('country');
const CorrelationRecipeDefinitionJoinsInnerSameRegionEnum
_$correlationRecipeDefinitionJoinsInnerSameRegionEnum_admin1 =
    const CorrelationRecipeDefinitionJoinsInnerSameRegionEnum._('admin1');
const CorrelationRecipeDefinitionJoinsInnerSameRegionEnum
_$correlationRecipeDefinitionJoinsInnerSameRegionEnum_unknownDefaultOpenApi =
    const CorrelationRecipeDefinitionJoinsInnerSameRegionEnum._(
      'unknownDefaultOpenApi',
    );

CorrelationRecipeDefinitionJoinsInnerSameRegionEnum
_$correlationRecipeDefinitionJoinsInnerSameRegionEnumValueOf(String name) {
  switch (name) {
    case 'country':
      return _$correlationRecipeDefinitionJoinsInnerSameRegionEnum_country;
    case 'admin1':
      return _$correlationRecipeDefinitionJoinsInnerSameRegionEnum_admin1;
    case 'unknownDefaultOpenApi':
      return _$correlationRecipeDefinitionJoinsInnerSameRegionEnum_unknownDefaultOpenApi;
    default:
      return _$correlationRecipeDefinitionJoinsInnerSameRegionEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CorrelationRecipeDefinitionJoinsInnerSameRegionEnum>
_$correlationRecipeDefinitionJoinsInnerSameRegionEnumValues =
    BuiltSet<CorrelationRecipeDefinitionJoinsInnerSameRegionEnum>(const <
      CorrelationRecipeDefinitionJoinsInnerSameRegionEnum
    >[
      _$correlationRecipeDefinitionJoinsInnerSameRegionEnum_country,
      _$correlationRecipeDefinitionJoinsInnerSameRegionEnum_admin1,
      _$correlationRecipeDefinitionJoinsInnerSameRegionEnum_unknownDefaultOpenApi,
    ]);

const CorrelationRecipeDefinitionJoinsInnerRoleEnum
_$correlationRecipeDefinitionJoinsInnerRoleEnum_supporting =
    const CorrelationRecipeDefinitionJoinsInnerRoleEnum._('supporting');
const CorrelationRecipeDefinitionJoinsInnerRoleEnum
_$correlationRecipeDefinitionJoinsInnerRoleEnum_contradicting =
    const CorrelationRecipeDefinitionJoinsInnerRoleEnum._('contradicting');
const CorrelationRecipeDefinitionJoinsInnerRoleEnum
_$correlationRecipeDefinitionJoinsInnerRoleEnum_context =
    const CorrelationRecipeDefinitionJoinsInnerRoleEnum._('context');
const CorrelationRecipeDefinitionJoinsInnerRoleEnum
_$correlationRecipeDefinitionJoinsInnerRoleEnum_unknownDefaultOpenApi =
    const CorrelationRecipeDefinitionJoinsInnerRoleEnum._(
      'unknownDefaultOpenApi',
    );

CorrelationRecipeDefinitionJoinsInnerRoleEnum
_$correlationRecipeDefinitionJoinsInnerRoleEnumValueOf(String name) {
  switch (name) {
    case 'supporting':
      return _$correlationRecipeDefinitionJoinsInnerRoleEnum_supporting;
    case 'contradicting':
      return _$correlationRecipeDefinitionJoinsInnerRoleEnum_contradicting;
    case 'context':
      return _$correlationRecipeDefinitionJoinsInnerRoleEnum_context;
    case 'unknownDefaultOpenApi':
      return _$correlationRecipeDefinitionJoinsInnerRoleEnum_unknownDefaultOpenApi;
    default:
      return _$correlationRecipeDefinitionJoinsInnerRoleEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CorrelationRecipeDefinitionJoinsInnerRoleEnum>
_$correlationRecipeDefinitionJoinsInnerRoleEnumValues =
    BuiltSet<CorrelationRecipeDefinitionJoinsInnerRoleEnum>(
      const <CorrelationRecipeDefinitionJoinsInnerRoleEnum>[
        _$correlationRecipeDefinitionJoinsInnerRoleEnum_supporting,
        _$correlationRecipeDefinitionJoinsInnerRoleEnum_contradicting,
        _$correlationRecipeDefinitionJoinsInnerRoleEnum_context,
        _$correlationRecipeDefinitionJoinsInnerRoleEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<CorrelationRecipeDefinitionJoinsInnerSameRegionEnum>
_$correlationRecipeDefinitionJoinsInnerSameRegionEnumSerializer =
    _$CorrelationRecipeDefinitionJoinsInnerSameRegionEnumSerializer();
Serializer<CorrelationRecipeDefinitionJoinsInnerRoleEnum>
_$correlationRecipeDefinitionJoinsInnerRoleEnumSerializer =
    _$CorrelationRecipeDefinitionJoinsInnerRoleEnumSerializer();

class _$CorrelationRecipeDefinitionJoinsInnerSameRegionEnumSerializer
    implements
        PrimitiveSerializer<
          CorrelationRecipeDefinitionJoinsInnerSameRegionEnum
        > {
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
  final Iterable<Type> types = const <Type>[
    CorrelationRecipeDefinitionJoinsInnerSameRegionEnum,
  ];
  @override
  final String wireName = 'CorrelationRecipeDefinitionJoinsInnerSameRegionEnum';

  @override
  Object serialize(
    Serializers serializers,
    CorrelationRecipeDefinitionJoinsInnerSameRegionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CorrelationRecipeDefinitionJoinsInnerSameRegionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CorrelationRecipeDefinitionJoinsInnerSameRegionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CorrelationRecipeDefinitionJoinsInnerRoleEnumSerializer
    implements
        PrimitiveSerializer<CorrelationRecipeDefinitionJoinsInnerRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'supporting': 'supporting',
    'contradicting': 'contradicting',
    'context': 'context',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'supporting': 'supporting',
    'contradicting': 'contradicting',
    'context': 'context',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CorrelationRecipeDefinitionJoinsInnerRoleEnum,
  ];
  @override
  final String wireName = 'CorrelationRecipeDefinitionJoinsInnerRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    CorrelationRecipeDefinitionJoinsInnerRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CorrelationRecipeDefinitionJoinsInnerRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CorrelationRecipeDefinitionJoinsInnerRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CorrelationRecipeDefinitionJoinsInner
    extends CorrelationRecipeDefinitionJoinsInner {
  @override
  final BuiltList<String>? kinds;
  @override
  final BuiltList<Condition>? conditions;
  @override
  final num? withinKm;
  @override
  final CorrelationRecipeDefinitionJoinsInnerSameRegionEnum? sameRegion;
  @override
  final bool? sameEntity;
  @override
  final String? sharedAttribute;
  @override
  final CorrelationRecipeDefinitionJoinsInnerWindow? window;
  @override
  final CorrelationRecipeDefinitionJoinsInnerRoleEnum? role;
  @override
  final String? signalFamily;
  @override
  final num? weight;

  factory _$CorrelationRecipeDefinitionJoinsInner([
    void Function(CorrelationRecipeDefinitionJoinsInnerBuilder)? updates,
  ]) => (CorrelationRecipeDefinitionJoinsInnerBuilder()..update(updates))
      ._build();

  _$CorrelationRecipeDefinitionJoinsInner._({
    this.kinds,
    this.conditions,
    this.withinKm,
    this.sameRegion,
    this.sameEntity,
    this.sharedAttribute,
    this.window,
    this.role,
    this.signalFamily,
    this.weight,
  }) : super._();
  @override
  CorrelationRecipeDefinitionJoinsInner rebuild(
    void Function(CorrelationRecipeDefinitionJoinsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CorrelationRecipeDefinitionJoinsInnerBuilder toBuilder() =>
      CorrelationRecipeDefinitionJoinsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorrelationRecipeDefinitionJoinsInner &&
        kinds == other.kinds &&
        conditions == other.conditions &&
        withinKm == other.withinKm &&
        sameRegion == other.sameRegion &&
        sameEntity == other.sameEntity &&
        sharedAttribute == other.sharedAttribute &&
        window == other.window &&
        role == other.role &&
        signalFamily == other.signalFamily &&
        weight == other.weight;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, conditions.hashCode);
    _$hash = $jc(_$hash, withinKm.hashCode);
    _$hash = $jc(_$hash, sameRegion.hashCode);
    _$hash = $jc(_$hash, sameEntity.hashCode);
    _$hash = $jc(_$hash, sharedAttribute.hashCode);
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, signalFamily.hashCode);
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'CorrelationRecipeDefinitionJoinsInner',
          )
          ..add('kinds', kinds)
          ..add('conditions', conditions)
          ..add('withinKm', withinKm)
          ..add('sameRegion', sameRegion)
          ..add('sameEntity', sameEntity)
          ..add('sharedAttribute', sharedAttribute)
          ..add('window', window)
          ..add('role', role)
          ..add('signalFamily', signalFamily)
          ..add('weight', weight))
        .toString();
  }
}

class CorrelationRecipeDefinitionJoinsInnerBuilder
    implements
        Builder<
          CorrelationRecipeDefinitionJoinsInner,
          CorrelationRecipeDefinitionJoinsInnerBuilder
        > {
  _$CorrelationRecipeDefinitionJoinsInner? _$v;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  ListBuilder<Condition>? _conditions;
  ListBuilder<Condition> get conditions =>
      _$this._conditions ??= ListBuilder<Condition>();
  set conditions(ListBuilder<Condition>? conditions) =>
      _$this._conditions = conditions;

  num? _withinKm;
  num? get withinKm => _$this._withinKm;
  set withinKm(num? withinKm) => _$this._withinKm = withinKm;

  CorrelationRecipeDefinitionJoinsInnerSameRegionEnum? _sameRegion;
  CorrelationRecipeDefinitionJoinsInnerSameRegionEnum? get sameRegion =>
      _$this._sameRegion;
  set sameRegion(
    CorrelationRecipeDefinitionJoinsInnerSameRegionEnum? sameRegion,
  ) => _$this._sameRegion = sameRegion;

  bool? _sameEntity;
  bool? get sameEntity => _$this._sameEntity;
  set sameEntity(bool? sameEntity) => _$this._sameEntity = sameEntity;

  String? _sharedAttribute;
  String? get sharedAttribute => _$this._sharedAttribute;
  set sharedAttribute(String? sharedAttribute) =>
      _$this._sharedAttribute = sharedAttribute;

  CorrelationRecipeDefinitionJoinsInnerWindowBuilder? _window;
  CorrelationRecipeDefinitionJoinsInnerWindowBuilder get window =>
      _$this._window ??= CorrelationRecipeDefinitionJoinsInnerWindowBuilder();
  set window(CorrelationRecipeDefinitionJoinsInnerWindowBuilder? window) =>
      _$this._window = window;

  CorrelationRecipeDefinitionJoinsInnerRoleEnum? _role;
  CorrelationRecipeDefinitionJoinsInnerRoleEnum? get role => _$this._role;
  set role(CorrelationRecipeDefinitionJoinsInnerRoleEnum? role) =>
      _$this._role = role;

  String? _signalFamily;
  String? get signalFamily => _$this._signalFamily;
  set signalFamily(String? signalFamily) => _$this._signalFamily = signalFamily;

  num? _weight;
  num? get weight => _$this._weight;
  set weight(num? weight) => _$this._weight = weight;

  CorrelationRecipeDefinitionJoinsInnerBuilder() {
    CorrelationRecipeDefinitionJoinsInner._defaults(this);
  }

  CorrelationRecipeDefinitionJoinsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kinds = $v.kinds?.toBuilder();
      _conditions = $v.conditions?.toBuilder();
      _withinKm = $v.withinKm;
      _sameRegion = $v.sameRegion;
      _sameEntity = $v.sameEntity;
      _sharedAttribute = $v.sharedAttribute;
      _window = $v.window?.toBuilder();
      _role = $v.role;
      _signalFamily = $v.signalFamily;
      _weight = $v.weight;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorrelationRecipeDefinitionJoinsInner other) {
    _$v = other as _$CorrelationRecipeDefinitionJoinsInner;
  }

  @override
  void update(
    void Function(CorrelationRecipeDefinitionJoinsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CorrelationRecipeDefinitionJoinsInner build() => _build();

  _$CorrelationRecipeDefinitionJoinsInner _build() {
    _$CorrelationRecipeDefinitionJoinsInner _$result;
    try {
      _$result =
          _$v ??
          _$CorrelationRecipeDefinitionJoinsInner._(
            kinds: _kinds?.build(),
            conditions: _conditions?.build(),
            withinKm: withinKm,
            sameRegion: sameRegion,
            sameEntity: sameEntity,
            sharedAttribute: sharedAttribute,
            window: _window?.build(),
            role: role,
            signalFamily: signalFamily,
            weight: weight,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'kinds';
        _kinds?.build();
        _$failedField = 'conditions';
        _conditions?.build();

        _$failedField = 'window';
        _window?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CorrelationRecipeDefinitionJoinsInner',
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

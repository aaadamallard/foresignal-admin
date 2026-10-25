// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_rate_definition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BaseRateDefinitionWindowEnum _$baseRateDefinitionWindowEnum_P7D =
    const BaseRateDefinitionWindowEnum._('P7D');
const BaseRateDefinitionWindowEnum _$baseRateDefinitionWindowEnum_P28D =
    const BaseRateDefinitionWindowEnum._('P28D');
const BaseRateDefinitionWindowEnum _$baseRateDefinitionWindowEnum_P90D =
    const BaseRateDefinitionWindowEnum._('P90D');
const BaseRateDefinitionWindowEnum
_$baseRateDefinitionWindowEnum_unknownDefaultOpenApi =
    const BaseRateDefinitionWindowEnum._('unknownDefaultOpenApi');

BaseRateDefinitionWindowEnum _$baseRateDefinitionWindowEnumValueOf(
  String name,
) {
  switch (name) {
    case 'P7D':
      return _$baseRateDefinitionWindowEnum_P7D;
    case 'P28D':
      return _$baseRateDefinitionWindowEnum_P28D;
    case 'P90D':
      return _$baseRateDefinitionWindowEnum_P90D;
    case 'unknownDefaultOpenApi':
      return _$baseRateDefinitionWindowEnum_unknownDefaultOpenApi;
    default:
      return _$baseRateDefinitionWindowEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BaseRateDefinitionWindowEnum>
_$baseRateDefinitionWindowEnumValues =
    BuiltSet<BaseRateDefinitionWindowEnum>(const <BaseRateDefinitionWindowEnum>[
      _$baseRateDefinitionWindowEnum_P7D,
      _$baseRateDefinitionWindowEnum_P28D,
      _$baseRateDefinitionWindowEnum_P90D,
      _$baseRateDefinitionWindowEnum_unknownDefaultOpenApi,
    ]);

Serializer<BaseRateDefinitionWindowEnum>
_$baseRateDefinitionWindowEnumSerializer =
    _$BaseRateDefinitionWindowEnumSerializer();

class _$BaseRateDefinitionWindowEnumSerializer
    implements PrimitiveSerializer<BaseRateDefinitionWindowEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'P7D': 'P7D',
    'P28D': 'P28D',
    'P90D': 'P90D',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'P7D': 'P7D',
    'P28D': 'P28D',
    'P90D': 'P90D',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BaseRateDefinitionWindowEnum];
  @override
  final String wireName = 'BaseRateDefinitionWindowEnum';

  @override
  Object serialize(
    Serializers serializers,
    BaseRateDefinitionWindowEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BaseRateDefinitionWindowEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BaseRateDefinitionWindowEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BaseRateDefinition extends BaseRateDefinition {
  @override
  final String family;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final String? regionClass;
  @override
  final BaseRateDefinitionWindowEnum window;
  @override
  final BaseRateDefinitionCondition? condition;

  factory _$BaseRateDefinition([
    void Function(BaseRateDefinitionBuilder)? updates,
  ]) => (BaseRateDefinitionBuilder()..update(updates))._build();

  _$BaseRateDefinition._({
    required this.family,
    this.regionCodes,
    this.regionClass,
    required this.window,
    this.condition,
  }) : super._();
  @override
  BaseRateDefinition rebuild(
    void Function(BaseRateDefinitionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BaseRateDefinitionBuilder toBuilder() =>
      BaseRateDefinitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseRateDefinition &&
        family == other.family &&
        regionCodes == other.regionCodes &&
        regionClass == other.regionClass &&
        window == other.window &&
        condition == other.condition;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, regionClass.hashCode);
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, condition.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BaseRateDefinition')
          ..add('family', family)
          ..add('regionCodes', regionCodes)
          ..add('regionClass', regionClass)
          ..add('window', window)
          ..add('condition', condition))
        .toString();
  }
}

class BaseRateDefinitionBuilder
    implements Builder<BaseRateDefinition, BaseRateDefinitionBuilder> {
  _$BaseRateDefinition? _$v;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  String? _regionClass;
  String? get regionClass => _$this._regionClass;
  set regionClass(String? regionClass) => _$this._regionClass = regionClass;

  BaseRateDefinitionWindowEnum? _window;
  BaseRateDefinitionWindowEnum? get window => _$this._window;
  set window(BaseRateDefinitionWindowEnum? window) => _$this._window = window;

  BaseRateDefinitionConditionBuilder? _condition;
  BaseRateDefinitionConditionBuilder get condition =>
      _$this._condition ??= BaseRateDefinitionConditionBuilder();
  set condition(BaseRateDefinitionConditionBuilder? condition) =>
      _$this._condition = condition;

  BaseRateDefinitionBuilder() {
    BaseRateDefinition._defaults(this);
  }

  BaseRateDefinitionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _family = $v.family;
      _regionCodes = $v.regionCodes?.toBuilder();
      _regionClass = $v.regionClass;
      _window = $v.window;
      _condition = $v.condition?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseRateDefinition other) {
    _$v = other as _$BaseRateDefinition;
  }

  @override
  void update(void Function(BaseRateDefinitionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BaseRateDefinition build() => _build();

  _$BaseRateDefinition _build() {
    _$BaseRateDefinition _$result;
    try {
      _$result =
          _$v ??
          _$BaseRateDefinition._(
            family: BuiltValueNullFieldError.checkNotNull(
              family,
              r'BaseRateDefinition',
              'family',
            ),
            regionCodes: _regionCodes?.build(),
            regionClass: regionClass,
            window: BuiltValueNullFieldError.checkNotNull(
              window,
              r'BaseRateDefinition',
              'window',
            ),
            condition: _condition?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regionCodes';
        _regionCodes?.build();

        _$failedField = 'condition';
        _condition?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BaseRateDefinition',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correlation_recipe.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CorrelationRecipeOriginEnum _$correlationRecipeOriginEnum_bundled =
    const CorrelationRecipeOriginEnum._('bundled');
const CorrelationRecipeOriginEnum _$correlationRecipeOriginEnum_operator_ =
    const CorrelationRecipeOriginEnum._('operator_');

CorrelationRecipeOriginEnum _$correlationRecipeOriginEnumValueOf(String name) {
  switch (name) {
    case 'bundled':
      return _$correlationRecipeOriginEnum_bundled;
    case 'operator_':
      return _$correlationRecipeOriginEnum_operator_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CorrelationRecipeOriginEnum>
    _$correlationRecipeOriginEnumValues =
    BuiltSet<CorrelationRecipeOriginEnum>(const <CorrelationRecipeOriginEnum>[
  _$correlationRecipeOriginEnum_bundled,
  _$correlationRecipeOriginEnum_operator_,
]);

Serializer<CorrelationRecipeOriginEnum>
    _$correlationRecipeOriginEnumSerializer =
    _$CorrelationRecipeOriginEnumSerializer();

class _$CorrelationRecipeOriginEnumSerializer
    implements PrimitiveSerializer<CorrelationRecipeOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'bundled': 'bundled',
    'operator_': 'operator',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'bundled': 'bundled',
    'operator': 'operator_',
  };

  @override
  final Iterable<Type> types = const <Type>[CorrelationRecipeOriginEnum];
  @override
  final String wireName = 'CorrelationRecipeOriginEnum';

  @override
  Object serialize(Serializers serializers, CorrelationRecipeOriginEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CorrelationRecipeOriginEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CorrelationRecipeOriginEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CorrelationRecipe extends CorrelationRecipe {
  @override
  final String id;
  @override
  final int version;
  @override
  final bool? builtIn;
  @override
  final CorrelationRecipeOriginEnum? origin;
  @override
  final bool enabled;
  @override
  final CorrelationRecipeDefinition definition;
  @override
  final BuiltMap<String, JsonObject?>? params;
  @override
  final String? disabledReason;
  @override
  final DateTime? lastRunAt;
  @override
  final String? lastError;

  factory _$CorrelationRecipe(
          [void Function(CorrelationRecipeBuilder)? updates]) =>
      (CorrelationRecipeBuilder()..update(updates))._build();

  _$CorrelationRecipe._(
      {required this.id,
      required this.version,
      this.builtIn,
      this.origin,
      required this.enabled,
      required this.definition,
      this.params,
      this.disabledReason,
      this.lastRunAt,
      this.lastError})
      : super._();
  @override
  CorrelationRecipe rebuild(void Function(CorrelationRecipeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorrelationRecipeBuilder toBuilder() =>
      CorrelationRecipeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorrelationRecipe &&
        id == other.id &&
        version == other.version &&
        builtIn == other.builtIn &&
        origin == other.origin &&
        enabled == other.enabled &&
        definition == other.definition &&
        params == other.params &&
        disabledReason == other.disabledReason &&
        lastRunAt == other.lastRunAt &&
        lastError == other.lastError;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, builtIn.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, definition.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, disabledReason.hashCode);
    _$hash = $jc(_$hash, lastRunAt.hashCode);
    _$hash = $jc(_$hash, lastError.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorrelationRecipe')
          ..add('id', id)
          ..add('version', version)
          ..add('builtIn', builtIn)
          ..add('origin', origin)
          ..add('enabled', enabled)
          ..add('definition', definition)
          ..add('params', params)
          ..add('disabledReason', disabledReason)
          ..add('lastRunAt', lastRunAt)
          ..add('lastError', lastError))
        .toString();
  }
}

class CorrelationRecipeBuilder
    implements Builder<CorrelationRecipe, CorrelationRecipeBuilder> {
  _$CorrelationRecipe? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  bool? _builtIn;
  bool? get builtIn => _$this._builtIn;
  set builtIn(bool? builtIn) => _$this._builtIn = builtIn;

  CorrelationRecipeOriginEnum? _origin;
  CorrelationRecipeOriginEnum? get origin => _$this._origin;
  set origin(CorrelationRecipeOriginEnum? origin) => _$this._origin = origin;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  CorrelationRecipeDefinitionBuilder? _definition;
  CorrelationRecipeDefinitionBuilder get definition =>
      _$this._definition ??= CorrelationRecipeDefinitionBuilder();
  set definition(CorrelationRecipeDefinitionBuilder? definition) =>
      _$this._definition = definition;

  MapBuilder<String, JsonObject?>? _params;
  MapBuilder<String, JsonObject?> get params =>
      _$this._params ??= MapBuilder<String, JsonObject?>();
  set params(MapBuilder<String, JsonObject?>? params) =>
      _$this._params = params;

  String? _disabledReason;
  String? get disabledReason => _$this._disabledReason;
  set disabledReason(String? disabledReason) =>
      _$this._disabledReason = disabledReason;

  DateTime? _lastRunAt;
  DateTime? get lastRunAt => _$this._lastRunAt;
  set lastRunAt(DateTime? lastRunAt) => _$this._lastRunAt = lastRunAt;

  String? _lastError;
  String? get lastError => _$this._lastError;
  set lastError(String? lastError) => _$this._lastError = lastError;

  CorrelationRecipeBuilder() {
    CorrelationRecipe._defaults(this);
  }

  CorrelationRecipeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _version = $v.version;
      _builtIn = $v.builtIn;
      _origin = $v.origin;
      _enabled = $v.enabled;
      _definition = $v.definition.toBuilder();
      _params = $v.params?.toBuilder();
      _disabledReason = $v.disabledReason;
      _lastRunAt = $v.lastRunAt;
      _lastError = $v.lastError;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorrelationRecipe other) {
    _$v = other as _$CorrelationRecipe;
  }

  @override
  void update(void Function(CorrelationRecipeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorrelationRecipe build() => _build();

  _$CorrelationRecipe _build() {
    _$CorrelationRecipe _$result;
    try {
      _$result = _$v ??
          _$CorrelationRecipe._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'CorrelationRecipe', 'id'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'CorrelationRecipe', 'version'),
            builtIn: builtIn,
            origin: origin,
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'CorrelationRecipe', 'enabled'),
            definition: definition.build(),
            params: _params?.build(),
            disabledReason: disabledReason,
            lastRunAt: lastRunAt,
            lastError: lastError,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'definition';
        definition.build();
        _$failedField = 'params';
        _params?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CorrelationRecipe', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

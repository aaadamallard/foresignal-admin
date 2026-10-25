// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_binding_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExternalBindingInputTargetEnum _$externalBindingInputTargetEnum_series =
    const ExternalBindingInputTargetEnum._('series');
const ExternalBindingInputTargetEnum
_$externalBindingInputTargetEnum_canonicalFamily =
    const ExternalBindingInputTargetEnum._('canonicalFamily');
const ExternalBindingInputTargetEnum _$externalBindingInputTargetEnum_social =
    const ExternalBindingInputTargetEnum._('social');
const ExternalBindingInputTargetEnum _$externalBindingInputTargetEnum_news =
    const ExternalBindingInputTargetEnum._('news');
const ExternalBindingInputTargetEnum _$externalBindingInputTargetEnum_evidence =
    const ExternalBindingInputTargetEnum._('evidence');
const ExternalBindingInputTargetEnum
_$externalBindingInputTargetEnum_indicator =
    const ExternalBindingInputTargetEnum._('indicator');
const ExternalBindingInputTargetEnum _$externalBindingInputTargetEnum_forecast =
    const ExternalBindingInputTargetEnum._('forecast');
const ExternalBindingInputTargetEnum _$externalBindingInputTargetEnum_place =
    const ExternalBindingInputTargetEnum._('place');
const ExternalBindingInputTargetEnum
_$externalBindingInputTargetEnum_situation =
    const ExternalBindingInputTargetEnum._('situation');
const ExternalBindingInputTargetEnum
_$externalBindingInputTargetEnum_chronicle =
    const ExternalBindingInputTargetEnum._('chronicle');
const ExternalBindingInputTargetEnum
_$externalBindingInputTargetEnum_unknownDefaultOpenApi =
    const ExternalBindingInputTargetEnum._('unknownDefaultOpenApi');

ExternalBindingInputTargetEnum _$externalBindingInputTargetEnumValueOf(
  String name,
) {
  switch (name) {
    case 'series':
      return _$externalBindingInputTargetEnum_series;
    case 'canonicalFamily':
      return _$externalBindingInputTargetEnum_canonicalFamily;
    case 'social':
      return _$externalBindingInputTargetEnum_social;
    case 'news':
      return _$externalBindingInputTargetEnum_news;
    case 'evidence':
      return _$externalBindingInputTargetEnum_evidence;
    case 'indicator':
      return _$externalBindingInputTargetEnum_indicator;
    case 'forecast':
      return _$externalBindingInputTargetEnum_forecast;
    case 'place':
      return _$externalBindingInputTargetEnum_place;
    case 'situation':
      return _$externalBindingInputTargetEnum_situation;
    case 'chronicle':
      return _$externalBindingInputTargetEnum_chronicle;
    case 'unknownDefaultOpenApi':
      return _$externalBindingInputTargetEnum_unknownDefaultOpenApi;
    default:
      return _$externalBindingInputTargetEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ExternalBindingInputTargetEnum>
_$externalBindingInputTargetEnumValues =
    BuiltSet<ExternalBindingInputTargetEnum>(
      const <ExternalBindingInputTargetEnum>[
        _$externalBindingInputTargetEnum_series,
        _$externalBindingInputTargetEnum_canonicalFamily,
        _$externalBindingInputTargetEnum_social,
        _$externalBindingInputTargetEnum_news,
        _$externalBindingInputTargetEnum_evidence,
        _$externalBindingInputTargetEnum_indicator,
        _$externalBindingInputTargetEnum_forecast,
        _$externalBindingInputTargetEnum_place,
        _$externalBindingInputTargetEnum_situation,
        _$externalBindingInputTargetEnum_chronicle,
        _$externalBindingInputTargetEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ExternalBindingInputTargetEnum>
_$externalBindingInputTargetEnumSerializer =
    _$ExternalBindingInputTargetEnumSerializer();

class _$ExternalBindingInputTargetEnumSerializer
    implements PrimitiveSerializer<ExternalBindingInputTargetEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'series': 'series',
    'canonicalFamily': 'canonical-family',
    'social': 'social',
    'news': 'news',
    'evidence': 'evidence',
    'indicator': 'indicator',
    'forecast': 'forecast',
    'place': 'place',
    'situation': 'situation',
    'chronicle': 'chronicle',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'series': 'series',
    'canonical-family': 'canonicalFamily',
    'social': 'social',
    'news': 'news',
    'evidence': 'evidence',
    'indicator': 'indicator',
    'forecast': 'forecast',
    'place': 'place',
    'situation': 'situation',
    'chronicle': 'chronicle',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ExternalBindingInputTargetEnum];
  @override
  final String wireName = 'ExternalBindingInputTargetEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExternalBindingInputTargetEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExternalBindingInputTargetEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExternalBindingInputTargetEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExternalBindingInput extends ExternalBindingInput {
  @override
  final String streamId;
  @override
  final ExternalBindingInputTargetEnum target;
  @override
  final BuiltMap<String, JsonObject?>? config;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>>? filter;
  @override
  final bool? enabled;
  @override
  final bool? backfill;

  factory _$ExternalBindingInput([
    void Function(ExternalBindingInputBuilder)? updates,
  ]) => (ExternalBindingInputBuilder()..update(updates))._build();

  _$ExternalBindingInput._({
    required this.streamId,
    required this.target,
    this.config,
    this.filter,
    this.enabled,
    this.backfill,
  }) : super._();
  @override
  ExternalBindingInput rebuild(
    void Function(ExternalBindingInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExternalBindingInputBuilder toBuilder() =>
      ExternalBindingInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalBindingInput &&
        streamId == other.streamId &&
        target == other.target &&
        config == other.config &&
        filter == other.filter &&
        enabled == other.enabled &&
        backfill == other.backfill;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, streamId.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, backfill.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalBindingInput')
          ..add('streamId', streamId)
          ..add('target', target)
          ..add('config', config)
          ..add('filter', filter)
          ..add('enabled', enabled)
          ..add('backfill', backfill))
        .toString();
  }
}

class ExternalBindingInputBuilder
    implements Builder<ExternalBindingInput, ExternalBindingInputBuilder> {
  _$ExternalBindingInput? _$v;

  String? _streamId;
  String? get streamId => _$this._streamId;
  set streamId(String? streamId) => _$this._streamId = streamId;

  ExternalBindingInputTargetEnum? _target;
  ExternalBindingInputTargetEnum? get target => _$this._target;
  set target(ExternalBindingInputTargetEnum? target) => _$this._target = target;

  MapBuilder<String, JsonObject?>? _config;
  MapBuilder<String, JsonObject?> get config =>
      _$this._config ??= MapBuilder<String, JsonObject?>();
  set config(MapBuilder<String, JsonObject?>? config) =>
      _$this._config = config;

  ListBuilder<BuiltMap<String, JsonObject?>>? _filter;
  ListBuilder<BuiltMap<String, JsonObject?>> get filter =>
      _$this._filter ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set filter(ListBuilder<BuiltMap<String, JsonObject?>>? filter) =>
      _$this._filter = filter;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _backfill;
  bool? get backfill => _$this._backfill;
  set backfill(bool? backfill) => _$this._backfill = backfill;

  ExternalBindingInputBuilder() {
    ExternalBindingInput._defaults(this);
  }

  ExternalBindingInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streamId = $v.streamId;
      _target = $v.target;
      _config = $v.config?.toBuilder();
      _filter = $v.filter?.toBuilder();
      _enabled = $v.enabled;
      _backfill = $v.backfill;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalBindingInput other) {
    _$v = other as _$ExternalBindingInput;
  }

  @override
  void update(void Function(ExternalBindingInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalBindingInput build() => _build();

  _$ExternalBindingInput _build() {
    _$ExternalBindingInput _$result;
    try {
      _$result =
          _$v ??
          _$ExternalBindingInput._(
            streamId: BuiltValueNullFieldError.checkNotNull(
              streamId,
              r'ExternalBindingInput',
              'streamId',
            ),
            target: BuiltValueNullFieldError.checkNotNull(
              target,
              r'ExternalBindingInput',
              'target',
            ),
            config: _config?.build(),
            filter: _filter?.build(),
            enabled: enabled,
            backfill: backfill,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
        _$failedField = 'filter';
        _filter?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExternalBindingInput',
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

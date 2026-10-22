// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_provider_input_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LlmProviderInputOptionsEffortEnum
_$llmProviderInputOptionsEffortEnum_low =
    const LlmProviderInputOptionsEffortEnum._('low');
const LlmProviderInputOptionsEffortEnum
_$llmProviderInputOptionsEffortEnum_medium =
    const LlmProviderInputOptionsEffortEnum._('medium');
const LlmProviderInputOptionsEffortEnum
_$llmProviderInputOptionsEffortEnum_high =
    const LlmProviderInputOptionsEffortEnum._('high');
const LlmProviderInputOptionsEffortEnum
_$llmProviderInputOptionsEffortEnum_xhigh =
    const LlmProviderInputOptionsEffortEnum._('xhigh');
const LlmProviderInputOptionsEffortEnum
_$llmProviderInputOptionsEffortEnum_max =
    const LlmProviderInputOptionsEffortEnum._('max');

LlmProviderInputOptionsEffortEnum _$llmProviderInputOptionsEffortEnumValueOf(
  String name,
) {
  switch (name) {
    case 'low':
      return _$llmProviderInputOptionsEffortEnum_low;
    case 'medium':
      return _$llmProviderInputOptionsEffortEnum_medium;
    case 'high':
      return _$llmProviderInputOptionsEffortEnum_high;
    case 'xhigh':
      return _$llmProviderInputOptionsEffortEnum_xhigh;
    case 'max':
      return _$llmProviderInputOptionsEffortEnum_max;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LlmProviderInputOptionsEffortEnum>
_$llmProviderInputOptionsEffortEnumValues =
    BuiltSet<LlmProviderInputOptionsEffortEnum>(
      const <LlmProviderInputOptionsEffortEnum>[
        _$llmProviderInputOptionsEffortEnum_low,
        _$llmProviderInputOptionsEffortEnum_medium,
        _$llmProviderInputOptionsEffortEnum_high,
        _$llmProviderInputOptionsEffortEnum_xhigh,
        _$llmProviderInputOptionsEffortEnum_max,
      ],
    );

Serializer<LlmProviderInputOptionsEffortEnum>
_$llmProviderInputOptionsEffortEnumSerializer =
    _$LlmProviderInputOptionsEffortEnumSerializer();

class _$LlmProviderInputOptionsEffortEnumSerializer
    implements PrimitiveSerializer<LlmProviderInputOptionsEffortEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
    'xhigh': 'xhigh',
    'max': 'max',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
    'xhigh': 'xhigh',
    'max': 'max',
  };

  @override
  final Iterable<Type> types = const <Type>[LlmProviderInputOptionsEffortEnum];
  @override
  final String wireName = 'LlmProviderInputOptionsEffortEnum';

  @override
  Object serialize(
    Serializers serializers,
    LlmProviderInputOptionsEffortEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LlmProviderInputOptionsEffortEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LlmProviderInputOptionsEffortEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$LlmProviderInputOptions extends LlmProviderInputOptions {
  @override
  final LlmProviderInputOptionsEffortEnum? effort;
  @override
  final int? maxTokens;
  @override
  final num? temperature;
  @override
  final BuiltMap<String, String>? extraHeaders;
  @override
  final bool? local;
  @override
  final String? ttsModel;
  @override
  final int? ttsCharactersPerDay;

  factory _$LlmProviderInputOptions([
    void Function(LlmProviderInputOptionsBuilder)? updates,
  ]) => (LlmProviderInputOptionsBuilder()..update(updates))._build();

  _$LlmProviderInputOptions._({
    this.effort,
    this.maxTokens,
    this.temperature,
    this.extraHeaders,
    this.local,
    this.ttsModel,
    this.ttsCharactersPerDay,
  }) : super._();
  @override
  LlmProviderInputOptions rebuild(
    void Function(LlmProviderInputOptionsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LlmProviderInputOptionsBuilder toBuilder() =>
      LlmProviderInputOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmProviderInputOptions &&
        effort == other.effort &&
        maxTokens == other.maxTokens &&
        temperature == other.temperature &&
        extraHeaders == other.extraHeaders &&
        local == other.local &&
        ttsModel == other.ttsModel &&
        ttsCharactersPerDay == other.ttsCharactersPerDay;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, effort.hashCode);
    _$hash = $jc(_$hash, maxTokens.hashCode);
    _$hash = $jc(_$hash, temperature.hashCode);
    _$hash = $jc(_$hash, extraHeaders.hashCode);
    _$hash = $jc(_$hash, local.hashCode);
    _$hash = $jc(_$hash, ttsModel.hashCode);
    _$hash = $jc(_$hash, ttsCharactersPerDay.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmProviderInputOptions')
          ..add('effort', effort)
          ..add('maxTokens', maxTokens)
          ..add('temperature', temperature)
          ..add('extraHeaders', extraHeaders)
          ..add('local', local)
          ..add('ttsModel', ttsModel)
          ..add('ttsCharactersPerDay', ttsCharactersPerDay))
        .toString();
  }
}

class LlmProviderInputOptionsBuilder
    implements
        Builder<LlmProviderInputOptions, LlmProviderInputOptionsBuilder> {
  _$LlmProviderInputOptions? _$v;

  LlmProviderInputOptionsEffortEnum? _effort;
  LlmProviderInputOptionsEffortEnum? get effort => _$this._effort;
  set effort(LlmProviderInputOptionsEffortEnum? effort) =>
      _$this._effort = effort;

  int? _maxTokens;
  int? get maxTokens => _$this._maxTokens;
  set maxTokens(int? maxTokens) => _$this._maxTokens = maxTokens;

  num? _temperature;
  num? get temperature => _$this._temperature;
  set temperature(num? temperature) => _$this._temperature = temperature;

  MapBuilder<String, String>? _extraHeaders;
  MapBuilder<String, String> get extraHeaders =>
      _$this._extraHeaders ??= MapBuilder<String, String>();
  set extraHeaders(MapBuilder<String, String>? extraHeaders) =>
      _$this._extraHeaders = extraHeaders;

  bool? _local;
  bool? get local => _$this._local;
  set local(bool? local) => _$this._local = local;

  String? _ttsModel;
  String? get ttsModel => _$this._ttsModel;
  set ttsModel(String? ttsModel) => _$this._ttsModel = ttsModel;

  int? _ttsCharactersPerDay;
  int? get ttsCharactersPerDay => _$this._ttsCharactersPerDay;
  set ttsCharactersPerDay(int? ttsCharactersPerDay) =>
      _$this._ttsCharactersPerDay = ttsCharactersPerDay;

  LlmProviderInputOptionsBuilder() {
    LlmProviderInputOptions._defaults(this);
  }

  LlmProviderInputOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _effort = $v.effort;
      _maxTokens = $v.maxTokens;
      _temperature = $v.temperature;
      _extraHeaders = $v.extraHeaders?.toBuilder();
      _local = $v.local;
      _ttsModel = $v.ttsModel;
      _ttsCharactersPerDay = $v.ttsCharactersPerDay;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmProviderInputOptions other) {
    _$v = other as _$LlmProviderInputOptions;
  }

  @override
  void update(void Function(LlmProviderInputOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmProviderInputOptions build() => _build();

  _$LlmProviderInputOptions _build() {
    _$LlmProviderInputOptions _$result;
    try {
      _$result =
          _$v ??
          _$LlmProviderInputOptions._(
            effort: effort,
            maxTokens: maxTokens,
            temperature: temperature,
            extraHeaders: _extraHeaders?.build(),
            local: local,
            ttsModel: ttsModel,
            ttsCharactersPerDay: ttsCharactersPerDay,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extraHeaders';
        _extraHeaders?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LlmProviderInputOptions',
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

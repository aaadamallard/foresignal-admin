// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_set_draft.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HypothesisSetDraftEffortEnum _$hypothesisSetDraftEffortEnum_low =
    const HypothesisSetDraftEffortEnum._('low');
const HypothesisSetDraftEffortEnum _$hypothesisSetDraftEffortEnum_medium =
    const HypothesisSetDraftEffortEnum._('medium');
const HypothesisSetDraftEffortEnum _$hypothesisSetDraftEffortEnum_high =
    const HypothesisSetDraftEffortEnum._('high');
const HypothesisSetDraftEffortEnum
_$hypothesisSetDraftEffortEnum_unknownDefaultOpenApi =
    const HypothesisSetDraftEffortEnum._('unknownDefaultOpenApi');

HypothesisSetDraftEffortEnum _$hypothesisSetDraftEffortEnumValueOf(
  String name,
) {
  switch (name) {
    case 'low':
      return _$hypothesisSetDraftEffortEnum_low;
    case 'medium':
      return _$hypothesisSetDraftEffortEnum_medium;
    case 'high':
      return _$hypothesisSetDraftEffortEnum_high;
    case 'unknownDefaultOpenApi':
      return _$hypothesisSetDraftEffortEnum_unknownDefaultOpenApi;
    default:
      return _$hypothesisSetDraftEffortEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<HypothesisSetDraftEffortEnum>
_$hypothesisSetDraftEffortEnumValues =
    BuiltSet<HypothesisSetDraftEffortEnum>(const <HypothesisSetDraftEffortEnum>[
      _$hypothesisSetDraftEffortEnum_low,
      _$hypothesisSetDraftEffortEnum_medium,
      _$hypothesisSetDraftEffortEnum_high,
      _$hypothesisSetDraftEffortEnum_unknownDefaultOpenApi,
    ]);

const HypothesisSetDraftTextOriginEnum _$hypothesisSetDraftTextOriginEnum_llm =
    const HypothesisSetDraftTextOriginEnum._('llm');
const HypothesisSetDraftTextOriginEnum
_$hypothesisSetDraftTextOriginEnum_unknownDefaultOpenApi =
    const HypothesisSetDraftTextOriginEnum._('unknownDefaultOpenApi');

HypothesisSetDraftTextOriginEnum _$hypothesisSetDraftTextOriginEnumValueOf(
  String name,
) {
  switch (name) {
    case 'llm':
      return _$hypothesisSetDraftTextOriginEnum_llm;
    case 'unknownDefaultOpenApi':
      return _$hypothesisSetDraftTextOriginEnum_unknownDefaultOpenApi;
    default:
      return _$hypothesisSetDraftTextOriginEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<HypothesisSetDraftTextOriginEnum>
_$hypothesisSetDraftTextOriginEnumValues =
    BuiltSet<HypothesisSetDraftTextOriginEnum>(
      const <HypothesisSetDraftTextOriginEnum>[
        _$hypothesisSetDraftTextOriginEnum_llm,
        _$hypothesisSetDraftTextOriginEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<HypothesisSetDraftEffortEnum>
_$hypothesisSetDraftEffortEnumSerializer =
    _$HypothesisSetDraftEffortEnumSerializer();
Serializer<HypothesisSetDraftTextOriginEnum>
_$hypothesisSetDraftTextOriginEnumSerializer =
    _$HypothesisSetDraftTextOriginEnumSerializer();

class _$HypothesisSetDraftEffortEnumSerializer
    implements PrimitiveSerializer<HypothesisSetDraftEffortEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[HypothesisSetDraftEffortEnum];
  @override
  final String wireName = 'HypothesisSetDraftEffortEnum';

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetDraftEffortEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HypothesisSetDraftEffortEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HypothesisSetDraftEffortEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HypothesisSetDraftTextOriginEnumSerializer
    implements PrimitiveSerializer<HypothesisSetDraftTextOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'llm': 'llm',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'llm': 'llm',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[HypothesisSetDraftTextOriginEnum];
  @override
  final String wireName = 'HypothesisSetDraftTextOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetDraftTextOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HypothesisSetDraftTextOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HypothesisSetDraftTextOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HypothesisSetDraft extends HypothesisSetDraft {
  @override
  final HypothesisSetInput set_;
  @override
  final bool valid;
  @override
  final BuiltList<HypothesisSetDraftWarningsInner> warnings;
  @override
  final BuiltList<String>? toolCalls;
  @override
  final String? model;
  @override
  final HypothesisSetDraftEffortEnum? effort;
  @override
  final HypothesisSetDraftUsage? usage;
  @override
  final String? manifestId;
  @override
  final HypothesisSetDraftTextOriginEnum? textOrigin;

  factory _$HypothesisSetDraft([
    void Function(HypothesisSetDraftBuilder)? updates,
  ]) => (HypothesisSetDraftBuilder()..update(updates))._build();

  _$HypothesisSetDraft._({
    required this.set_,
    required this.valid,
    required this.warnings,
    this.toolCalls,
    this.model,
    this.effort,
    this.usage,
    this.manifestId,
    this.textOrigin,
  }) : super._();
  @override
  HypothesisSetDraft rebuild(
    void Function(HypothesisSetDraftBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HypothesisSetDraftBuilder toBuilder() =>
      HypothesisSetDraftBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisSetDraft &&
        set_ == other.set_ &&
        valid == other.valid &&
        warnings == other.warnings &&
        toolCalls == other.toolCalls &&
        model == other.model &&
        effort == other.effort &&
        usage == other.usage &&
        manifestId == other.manifestId &&
        textOrigin == other.textOrigin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, set_.hashCode);
    _$hash = $jc(_$hash, valid.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, toolCalls.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, effort.hashCode);
    _$hash = $jc(_$hash, usage.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, textOrigin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisSetDraft')
          ..add('set_', set_)
          ..add('valid', valid)
          ..add('warnings', warnings)
          ..add('toolCalls', toolCalls)
          ..add('model', model)
          ..add('effort', effort)
          ..add('usage', usage)
          ..add('manifestId', manifestId)
          ..add('textOrigin', textOrigin))
        .toString();
  }
}

class HypothesisSetDraftBuilder
    implements Builder<HypothesisSetDraft, HypothesisSetDraftBuilder> {
  _$HypothesisSetDraft? _$v;

  HypothesisSetInputBuilder? _set_;
  HypothesisSetInputBuilder get set_ =>
      _$this._set_ ??= HypothesisSetInputBuilder();
  set set_(HypothesisSetInputBuilder? set_) => _$this._set_ = set_;

  bool? _valid;
  bool? get valid => _$this._valid;
  set valid(bool? valid) => _$this._valid = valid;

  ListBuilder<HypothesisSetDraftWarningsInner>? _warnings;
  ListBuilder<HypothesisSetDraftWarningsInner> get warnings =>
      _$this._warnings ??= ListBuilder<HypothesisSetDraftWarningsInner>();
  set warnings(ListBuilder<HypothesisSetDraftWarningsInner>? warnings) =>
      _$this._warnings = warnings;

  ListBuilder<String>? _toolCalls;
  ListBuilder<String> get toolCalls =>
      _$this._toolCalls ??= ListBuilder<String>();
  set toolCalls(ListBuilder<String>? toolCalls) =>
      _$this._toolCalls = toolCalls;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  HypothesisSetDraftEffortEnum? _effort;
  HypothesisSetDraftEffortEnum? get effort => _$this._effort;
  set effort(HypothesisSetDraftEffortEnum? effort) => _$this._effort = effort;

  HypothesisSetDraftUsageBuilder? _usage;
  HypothesisSetDraftUsageBuilder get usage =>
      _$this._usage ??= HypothesisSetDraftUsageBuilder();
  set usage(HypothesisSetDraftUsageBuilder? usage) => _$this._usage = usage;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  HypothesisSetDraftTextOriginEnum? _textOrigin;
  HypothesisSetDraftTextOriginEnum? get textOrigin => _$this._textOrigin;
  set textOrigin(HypothesisSetDraftTextOriginEnum? textOrigin) =>
      _$this._textOrigin = textOrigin;

  HypothesisSetDraftBuilder() {
    HypothesisSetDraft._defaults(this);
  }

  HypothesisSetDraftBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _set_ = $v.set_.toBuilder();
      _valid = $v.valid;
      _warnings = $v.warnings.toBuilder();
      _toolCalls = $v.toolCalls?.toBuilder();
      _model = $v.model;
      _effort = $v.effort;
      _usage = $v.usage?.toBuilder();
      _manifestId = $v.manifestId;
      _textOrigin = $v.textOrigin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisSetDraft other) {
    _$v = other as _$HypothesisSetDraft;
  }

  @override
  void update(void Function(HypothesisSetDraftBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisSetDraft build() => _build();

  _$HypothesisSetDraft _build() {
    _$HypothesisSetDraft _$result;
    try {
      _$result =
          _$v ??
          _$HypothesisSetDraft._(
            set_: set_.build(),
            valid: BuiltValueNullFieldError.checkNotNull(
              valid,
              r'HypothesisSetDraft',
              'valid',
            ),
            warnings: warnings.build(),
            toolCalls: _toolCalls?.build(),
            model: model,
            effort: effort,
            usage: _usage?.build(),
            manifestId: manifestId,
            textOrigin: textOrigin,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'set_';
        set_.build();

        _$failedField = 'warnings';
        warnings.build();
        _$failedField = 'toolCalls';
        _toolCalls?.build();

        _$failedField = 'usage';
        _usage?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HypothesisSetDraft',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_report_llm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DoctorReportLlmStatusEnum _$doctorReportLlmStatusEnum_ok =
    const DoctorReportLlmStatusEnum._('ok');
const DoctorReportLlmStatusEnum _$doctorReportLlmStatusEnum_off =
    const DoctorReportLlmStatusEnum._('off');
const DoctorReportLlmStatusEnum _$doctorReportLlmStatusEnum_noProvider =
    const DoctorReportLlmStatusEnum._('noProvider');
const DoctorReportLlmStatusEnum _$doctorReportLlmStatusEnum_budgetRefused =
    const DoctorReportLlmStatusEnum._('budgetRefused');
const DoctorReportLlmStatusEnum _$doctorReportLlmStatusEnum_timeout =
    const DoctorReportLlmStatusEnum._('timeout');
const DoctorReportLlmStatusEnum _$doctorReportLlmStatusEnum_failed =
    const DoctorReportLlmStatusEnum._('failed');

DoctorReportLlmStatusEnum _$doctorReportLlmStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$doctorReportLlmStatusEnum_ok;
    case 'off':
      return _$doctorReportLlmStatusEnum_off;
    case 'noProvider':
      return _$doctorReportLlmStatusEnum_noProvider;
    case 'budgetRefused':
      return _$doctorReportLlmStatusEnum_budgetRefused;
    case 'timeout':
      return _$doctorReportLlmStatusEnum_timeout;
    case 'failed':
      return _$doctorReportLlmStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DoctorReportLlmStatusEnum> _$doctorReportLlmStatusEnumValues =
    BuiltSet<DoctorReportLlmStatusEnum>(const <DoctorReportLlmStatusEnum>[
      _$doctorReportLlmStatusEnum_ok,
      _$doctorReportLlmStatusEnum_off,
      _$doctorReportLlmStatusEnum_noProvider,
      _$doctorReportLlmStatusEnum_budgetRefused,
      _$doctorReportLlmStatusEnum_timeout,
      _$doctorReportLlmStatusEnum_failed,
    ]);

const DoctorReportLlmDetailEnum _$doctorReportLlmDetailEnum_compact =
    const DoctorReportLlmDetailEnum._('compact');
const DoctorReportLlmDetailEnum _$doctorReportLlmDetailEnum_full =
    const DoctorReportLlmDetailEnum._('full');

DoctorReportLlmDetailEnum _$doctorReportLlmDetailEnumValueOf(String name) {
  switch (name) {
    case 'compact':
      return _$doctorReportLlmDetailEnum_compact;
    case 'full':
      return _$doctorReportLlmDetailEnum_full;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DoctorReportLlmDetailEnum> _$doctorReportLlmDetailEnumValues =
    BuiltSet<DoctorReportLlmDetailEnum>(const <DoctorReportLlmDetailEnum>[
      _$doctorReportLlmDetailEnum_compact,
      _$doctorReportLlmDetailEnum_full,
    ]);

Serializer<DoctorReportLlmStatusEnum> _$doctorReportLlmStatusEnumSerializer =
    _$DoctorReportLlmStatusEnumSerializer();
Serializer<DoctorReportLlmDetailEnum> _$doctorReportLlmDetailEnumSerializer =
    _$DoctorReportLlmDetailEnumSerializer();

class _$DoctorReportLlmStatusEnumSerializer
    implements PrimitiveSerializer<DoctorReportLlmStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'off': 'off',
    'noProvider': 'no-provider',
    'budgetRefused': 'budget-refused',
    'timeout': 'timeout',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'off': 'off',
    'no-provider': 'noProvider',
    'budget-refused': 'budgetRefused',
    'timeout': 'timeout',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[DoctorReportLlmStatusEnum];
  @override
  final String wireName = 'DoctorReportLlmStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    DoctorReportLlmStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DoctorReportLlmStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DoctorReportLlmStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DoctorReportLlmDetailEnumSerializer
    implements PrimitiveSerializer<DoctorReportLlmDetailEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'compact': 'compact',
    'full': 'full',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'compact': 'compact',
    'full': 'full',
  };

  @override
  final Iterable<Type> types = const <Type>[DoctorReportLlmDetailEnum];
  @override
  final String wireName = 'DoctorReportLlmDetailEnum';

  @override
  Object serialize(
    Serializers serializers,
    DoctorReportLlmDetailEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DoctorReportLlmDetailEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DoctorReportLlmDetailEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DoctorReportLlm extends DoctorReportLlm {
  @override
  final DoctorReportLlmStatusEnum status;
  @override
  final String? provider;
  @override
  final String? model;
  @override
  final DoctorReportLlmTokens? tokens;
  @override
  final String? summary;
  @override
  final String? likelyCause;
  @override
  final num? confidence;
  @override
  final BuiltList<String>? evidence;
  @override
  final BuiltList<String>? suggestedActions;
  @override
  final ProposedPatch? patch_;
  @override
  final int? contextTokens;
  @override
  final DoctorReportLlmDetailEnum? detail;
  @override
  final String? error;

  factory _$DoctorReportLlm([void Function(DoctorReportLlmBuilder)? updates]) =>
      (DoctorReportLlmBuilder()..update(updates))._build();

  _$DoctorReportLlm._({
    required this.status,
    this.provider,
    this.model,
    this.tokens,
    this.summary,
    this.likelyCause,
    this.confidence,
    this.evidence,
    this.suggestedActions,
    this.patch_,
    this.contextTokens,
    this.detail,
    this.error,
  }) : super._();
  @override
  DoctorReportLlm rebuild(void Function(DoctorReportLlmBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoctorReportLlmBuilder toBuilder() => DoctorReportLlmBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoctorReportLlm &&
        status == other.status &&
        provider == other.provider &&
        model == other.model &&
        tokens == other.tokens &&
        summary == other.summary &&
        likelyCause == other.likelyCause &&
        confidence == other.confidence &&
        evidence == other.evidence &&
        suggestedActions == other.suggestedActions &&
        patch_ == other.patch_ &&
        contextTokens == other.contextTokens &&
        detail == other.detail &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, tokens.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, likelyCause.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, evidence.hashCode);
    _$hash = $jc(_$hash, suggestedActions.hashCode);
    _$hash = $jc(_$hash, patch_.hashCode);
    _$hash = $jc(_$hash, contextTokens.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DoctorReportLlm')
          ..add('status', status)
          ..add('provider', provider)
          ..add('model', model)
          ..add('tokens', tokens)
          ..add('summary', summary)
          ..add('likelyCause', likelyCause)
          ..add('confidence', confidence)
          ..add('evidence', evidence)
          ..add('suggestedActions', suggestedActions)
          ..add('patch_', patch_)
          ..add('contextTokens', contextTokens)
          ..add('detail', detail)
          ..add('error', error))
        .toString();
  }
}

class DoctorReportLlmBuilder
    implements Builder<DoctorReportLlm, DoctorReportLlmBuilder> {
  _$DoctorReportLlm? _$v;

  DoctorReportLlmStatusEnum? _status;
  DoctorReportLlmStatusEnum? get status => _$this._status;
  set status(DoctorReportLlmStatusEnum? status) => _$this._status = status;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  DoctorReportLlmTokensBuilder? _tokens;
  DoctorReportLlmTokensBuilder get tokens =>
      _$this._tokens ??= DoctorReportLlmTokensBuilder();
  set tokens(DoctorReportLlmTokensBuilder? tokens) => _$this._tokens = tokens;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  String? _likelyCause;
  String? get likelyCause => _$this._likelyCause;
  set likelyCause(String? likelyCause) => _$this._likelyCause = likelyCause;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  ListBuilder<String>? _evidence;
  ListBuilder<String> get evidence =>
      _$this._evidence ??= ListBuilder<String>();
  set evidence(ListBuilder<String>? evidence) => _$this._evidence = evidence;

  ListBuilder<String>? _suggestedActions;
  ListBuilder<String> get suggestedActions =>
      _$this._suggestedActions ??= ListBuilder<String>();
  set suggestedActions(ListBuilder<String>? suggestedActions) =>
      _$this._suggestedActions = suggestedActions;

  ProposedPatchBuilder? _patch_;
  ProposedPatchBuilder get patch_ => _$this._patch_ ??= ProposedPatchBuilder();
  set patch_(ProposedPatchBuilder? patch_) => _$this._patch_ = patch_;

  int? _contextTokens;
  int? get contextTokens => _$this._contextTokens;
  set contextTokens(int? contextTokens) =>
      _$this._contextTokens = contextTokens;

  DoctorReportLlmDetailEnum? _detail;
  DoctorReportLlmDetailEnum? get detail => _$this._detail;
  set detail(DoctorReportLlmDetailEnum? detail) => _$this._detail = detail;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  DoctorReportLlmBuilder() {
    DoctorReportLlm._defaults(this);
  }

  DoctorReportLlmBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _provider = $v.provider;
      _model = $v.model;
      _tokens = $v.tokens?.toBuilder();
      _summary = $v.summary;
      _likelyCause = $v.likelyCause;
      _confidence = $v.confidence;
      _evidence = $v.evidence?.toBuilder();
      _suggestedActions = $v.suggestedActions?.toBuilder();
      _patch_ = $v.patch_?.toBuilder();
      _contextTokens = $v.contextTokens;
      _detail = $v.detail;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoctorReportLlm other) {
    _$v = other as _$DoctorReportLlm;
  }

  @override
  void update(void Function(DoctorReportLlmBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DoctorReportLlm build() => _build();

  _$DoctorReportLlm _build() {
    _$DoctorReportLlm _$result;
    try {
      _$result =
          _$v ??
          _$DoctorReportLlm._(
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'DoctorReportLlm',
              'status',
            ),
            provider: provider,
            model: model,
            tokens: _tokens?.build(),
            summary: summary,
            likelyCause: likelyCause,
            confidence: confidence,
            evidence: _evidence?.build(),
            suggestedActions: _suggestedActions?.build(),
            patch_: _patch_?.build(),
            contextTokens: contextTokens,
            detail: detail,
            error: error,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tokens';
        _tokens?.build();

        _$failedField = 'evidence';
        _evidence?.build();
        _$failedField = 'suggestedActions';
        _suggestedActions?.build();
        _$failedField = 'patch_';
        _patch_?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DoctorReportLlm',
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

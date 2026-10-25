// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AskResponseModeEnum _$askResponseModeEnum_tools =
    const AskResponseModeEnum._('tools');
const AskResponseModeEnum _$askResponseModeEnum_retrieval =
    const AskResponseModeEnum._('retrieval');
const AskResponseModeEnum _$askResponseModeEnum_unknownDefaultOpenApi =
    const AskResponseModeEnum._('unknownDefaultOpenApi');

AskResponseModeEnum _$askResponseModeEnumValueOf(String name) {
  switch (name) {
    case 'tools':
      return _$askResponseModeEnum_tools;
    case 'retrieval':
      return _$askResponseModeEnum_retrieval;
    case 'unknownDefaultOpenApi':
      return _$askResponseModeEnum_unknownDefaultOpenApi;
    default:
      return _$askResponseModeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AskResponseModeEnum> _$askResponseModeEnumValues =
    BuiltSet<AskResponseModeEnum>(const <AskResponseModeEnum>[
      _$askResponseModeEnum_tools,
      _$askResponseModeEnum_retrieval,
      _$askResponseModeEnum_unknownDefaultOpenApi,
    ]);

const AskResponseStopReasonEnum _$askResponseStopReasonEnum_end =
    const AskResponseStopReasonEnum._('end');
const AskResponseStopReasonEnum _$askResponseStopReasonEnum_maxTokens =
    const AskResponseStopReasonEnum._('maxTokens');
const AskResponseStopReasonEnum _$askResponseStopReasonEnum_refusal =
    const AskResponseStopReasonEnum._('refusal');
const AskResponseStopReasonEnum _$askResponseStopReasonEnum_error =
    const AskResponseStopReasonEnum._('error');
const AskResponseStopReasonEnum
_$askResponseStopReasonEnum_unknownDefaultOpenApi =
    const AskResponseStopReasonEnum._('unknownDefaultOpenApi');

AskResponseStopReasonEnum _$askResponseStopReasonEnumValueOf(String name) {
  switch (name) {
    case 'end':
      return _$askResponseStopReasonEnum_end;
    case 'maxTokens':
      return _$askResponseStopReasonEnum_maxTokens;
    case 'refusal':
      return _$askResponseStopReasonEnum_refusal;
    case 'error':
      return _$askResponseStopReasonEnum_error;
    case 'unknownDefaultOpenApi':
      return _$askResponseStopReasonEnum_unknownDefaultOpenApi;
    default:
      return _$askResponseStopReasonEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AskResponseStopReasonEnum> _$askResponseStopReasonEnumValues =
    BuiltSet<AskResponseStopReasonEnum>(const <AskResponseStopReasonEnum>[
      _$askResponseStopReasonEnum_end,
      _$askResponseStopReasonEnum_maxTokens,
      _$askResponseStopReasonEnum_refusal,
      _$askResponseStopReasonEnum_error,
      _$askResponseStopReasonEnum_unknownDefaultOpenApi,
    ]);

Serializer<AskResponseModeEnum> _$askResponseModeEnumSerializer =
    _$AskResponseModeEnumSerializer();
Serializer<AskResponseStopReasonEnum> _$askResponseStopReasonEnumSerializer =
    _$AskResponseStopReasonEnumSerializer();

class _$AskResponseModeEnumSerializer
    implements PrimitiveSerializer<AskResponseModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'tools': 'tools',
    'retrieval': 'retrieval',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'tools': 'tools',
    'retrieval': 'retrieval',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AskResponseModeEnum];
  @override
  final String wireName = 'AskResponseModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    AskResponseModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AskResponseModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AskResponseModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AskResponseStopReasonEnumSerializer
    implements PrimitiveSerializer<AskResponseStopReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'end': 'end',
    'maxTokens': 'max_tokens',
    'refusal': 'refusal',
    'error': 'error',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'end': 'end',
    'max_tokens': 'maxTokens',
    'refusal': 'refusal',
    'error': 'error',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AskResponseStopReasonEnum];
  @override
  final String wireName = 'AskResponseStopReasonEnum';

  @override
  Object serialize(
    Serializers serializers,
    AskResponseStopReasonEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AskResponseStopReasonEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AskResponseStopReasonEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AskResponse extends AskResponse {
  @override
  final String threadId;
  @override
  final String answer;
  @override
  final BuiltList<AskCitation> citations;
  @override
  final BuiltList<AskAction> proposedActions;
  @override
  final BuiltList<String>? warnings;
  @override
  final AskResponseModeEnum? mode;
  @override
  final AskResponseUsage? usage;
  @override
  final AskResponseStopReasonEnum? stopReason;
  @override
  final String? refusalCategory;

  factory _$AskResponse([void Function(AskResponseBuilder)? updates]) =>
      (AskResponseBuilder()..update(updates))._build();

  _$AskResponse._({
    required this.threadId,
    required this.answer,
    required this.citations,
    required this.proposedActions,
    this.warnings,
    this.mode,
    this.usage,
    this.stopReason,
    this.refusalCategory,
  }) : super._();
  @override
  AskResponse rebuild(void Function(AskResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AskResponseBuilder toBuilder() => AskResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AskResponse &&
        threadId == other.threadId &&
        answer == other.answer &&
        citations == other.citations &&
        proposedActions == other.proposedActions &&
        warnings == other.warnings &&
        mode == other.mode &&
        usage == other.usage &&
        stopReason == other.stopReason &&
        refusalCategory == other.refusalCategory;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, threadId.hashCode);
    _$hash = $jc(_$hash, answer.hashCode);
    _$hash = $jc(_$hash, citations.hashCode);
    _$hash = $jc(_$hash, proposedActions.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, usage.hashCode);
    _$hash = $jc(_$hash, stopReason.hashCode);
    _$hash = $jc(_$hash, refusalCategory.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AskResponse')
          ..add('threadId', threadId)
          ..add('answer', answer)
          ..add('citations', citations)
          ..add('proposedActions', proposedActions)
          ..add('warnings', warnings)
          ..add('mode', mode)
          ..add('usage', usage)
          ..add('stopReason', stopReason)
          ..add('refusalCategory', refusalCategory))
        .toString();
  }
}

class AskResponseBuilder implements Builder<AskResponse, AskResponseBuilder> {
  _$AskResponse? _$v;

  String? _threadId;
  String? get threadId => _$this._threadId;
  set threadId(String? threadId) => _$this._threadId = threadId;

  String? _answer;
  String? get answer => _$this._answer;
  set answer(String? answer) => _$this._answer = answer;

  ListBuilder<AskCitation>? _citations;
  ListBuilder<AskCitation> get citations =>
      _$this._citations ??= ListBuilder<AskCitation>();
  set citations(ListBuilder<AskCitation>? citations) =>
      _$this._citations = citations;

  ListBuilder<AskAction>? _proposedActions;
  ListBuilder<AskAction> get proposedActions =>
      _$this._proposedActions ??= ListBuilder<AskAction>();
  set proposedActions(ListBuilder<AskAction>? proposedActions) =>
      _$this._proposedActions = proposedActions;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  AskResponseModeEnum? _mode;
  AskResponseModeEnum? get mode => _$this._mode;
  set mode(AskResponseModeEnum? mode) => _$this._mode = mode;

  AskResponseUsageBuilder? _usage;
  AskResponseUsageBuilder get usage =>
      _$this._usage ??= AskResponseUsageBuilder();
  set usage(AskResponseUsageBuilder? usage) => _$this._usage = usage;

  AskResponseStopReasonEnum? _stopReason;
  AskResponseStopReasonEnum? get stopReason => _$this._stopReason;
  set stopReason(AskResponseStopReasonEnum? stopReason) =>
      _$this._stopReason = stopReason;

  String? _refusalCategory;
  String? get refusalCategory => _$this._refusalCategory;
  set refusalCategory(String? refusalCategory) =>
      _$this._refusalCategory = refusalCategory;

  AskResponseBuilder() {
    AskResponse._defaults(this);
  }

  AskResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _threadId = $v.threadId;
      _answer = $v.answer;
      _citations = $v.citations.toBuilder();
      _proposedActions = $v.proposedActions.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _mode = $v.mode;
      _usage = $v.usage?.toBuilder();
      _stopReason = $v.stopReason;
      _refusalCategory = $v.refusalCategory;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AskResponse other) {
    _$v = other as _$AskResponse;
  }

  @override
  void update(void Function(AskResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AskResponse build() => _build();

  _$AskResponse _build() {
    _$AskResponse _$result;
    try {
      _$result =
          _$v ??
          _$AskResponse._(
            threadId: BuiltValueNullFieldError.checkNotNull(
              threadId,
              r'AskResponse',
              'threadId',
            ),
            answer: BuiltValueNullFieldError.checkNotNull(
              answer,
              r'AskResponse',
              'answer',
            ),
            citations: citations.build(),
            proposedActions: proposedActions.build(),
            warnings: _warnings?.build(),
            mode: mode,
            usage: _usage?.build(),
            stopReason: stopReason,
            refusalCategory: refusalCategory,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'citations';
        citations.build();
        _$failedField = 'proposedActions';
        proposedActions.build();
        _$failedField = 'warnings';
        _warnings?.build();

        _$failedField = 'usage';
        _usage?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AskResponse',
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

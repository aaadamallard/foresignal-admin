// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_run.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnalystRunStatusEnum _$analystRunStatusEnum_queued =
    const AnalystRunStatusEnum._('queued');
const AnalystRunStatusEnum _$analystRunStatusEnum_running =
    const AnalystRunStatusEnum._('running');
const AnalystRunStatusEnum _$analystRunStatusEnum_ok =
    const AnalystRunStatusEnum._('ok');
const AnalystRunStatusEnum _$analystRunStatusEnum_noop =
    const AnalystRunStatusEnum._('noop');
const AnalystRunStatusEnum _$analystRunStatusEnum_partial =
    const AnalystRunStatusEnum._('partial');
const AnalystRunStatusEnum _$analystRunStatusEnum_failed =
    const AnalystRunStatusEnum._('failed');
const AnalystRunStatusEnum _$analystRunStatusEnum_budgetExceeded =
    const AnalystRunStatusEnum._('budgetExceeded');
const AnalystRunStatusEnum _$analystRunStatusEnum_unknownDefaultOpenApi =
    const AnalystRunStatusEnum._('unknownDefaultOpenApi');

AnalystRunStatusEnum _$analystRunStatusEnumValueOf(String name) {
  switch (name) {
    case 'queued':
      return _$analystRunStatusEnum_queued;
    case 'running':
      return _$analystRunStatusEnum_running;
    case 'ok':
      return _$analystRunStatusEnum_ok;
    case 'noop':
      return _$analystRunStatusEnum_noop;
    case 'partial':
      return _$analystRunStatusEnum_partial;
    case 'failed':
      return _$analystRunStatusEnum_failed;
    case 'budgetExceeded':
      return _$analystRunStatusEnum_budgetExceeded;
    case 'unknownDefaultOpenApi':
      return _$analystRunStatusEnum_unknownDefaultOpenApi;
    default:
      return _$analystRunStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnalystRunStatusEnum> _$analystRunStatusEnumValues =
    BuiltSet<AnalystRunStatusEnum>(const <AnalystRunStatusEnum>[
      _$analystRunStatusEnum_queued,
      _$analystRunStatusEnum_running,
      _$analystRunStatusEnum_ok,
      _$analystRunStatusEnum_noop,
      _$analystRunStatusEnum_partial,
      _$analystRunStatusEnum_failed,
      _$analystRunStatusEnum_budgetExceeded,
      _$analystRunStatusEnum_unknownDefaultOpenApi,
    ]);

const AnalystRunEffortEnum _$analystRunEffortEnum_low =
    const AnalystRunEffortEnum._('low');
const AnalystRunEffortEnum _$analystRunEffortEnum_medium =
    const AnalystRunEffortEnum._('medium');
const AnalystRunEffortEnum _$analystRunEffortEnum_unknownDefaultOpenApi =
    const AnalystRunEffortEnum._('unknownDefaultOpenApi');

AnalystRunEffortEnum _$analystRunEffortEnumValueOf(String name) {
  switch (name) {
    case 'low':
      return _$analystRunEffortEnum_low;
    case 'medium':
      return _$analystRunEffortEnum_medium;
    case 'unknownDefaultOpenApi':
      return _$analystRunEffortEnum_unknownDefaultOpenApi;
    default:
      return _$analystRunEffortEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnalystRunEffortEnum> _$analystRunEffortEnumValues =
    BuiltSet<AnalystRunEffortEnum>(const <AnalystRunEffortEnum>[
      _$analystRunEffortEnum_low,
      _$analystRunEffortEnum_medium,
      _$analystRunEffortEnum_unknownDefaultOpenApi,
    ]);

Serializer<AnalystRunStatusEnum> _$analystRunStatusEnumSerializer =
    _$AnalystRunStatusEnumSerializer();
Serializer<AnalystRunEffortEnum> _$analystRunEffortEnumSerializer =
    _$AnalystRunEffortEnumSerializer();

class _$AnalystRunStatusEnumSerializer
    implements PrimitiveSerializer<AnalystRunStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'queued': 'queued',
    'running': 'running',
    'ok': 'ok',
    'noop': 'noop',
    'partial': 'partial',
    'failed': 'failed',
    'budgetExceeded': 'budget_exceeded',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'queued': 'queued',
    'running': 'running',
    'ok': 'ok',
    'noop': 'noop',
    'partial': 'partial',
    'failed': 'failed',
    'budget_exceeded': 'budgetExceeded',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalystRunStatusEnum];
  @override
  final String wireName = 'AnalystRunStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnalystRunStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnalystRunStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnalystRunStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnalystRunEffortEnumSerializer
    implements PrimitiveSerializer<AnalystRunEffortEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'medium': 'medium',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'medium': 'medium',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalystRunEffortEnum];
  @override
  final String wireName = 'AnalystRunEffortEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnalystRunEffortEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnalystRunEffortEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnalystRunEffortEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnalystRun extends AnalystRun {
  @override
  final String id;
  @override
  final String profileId;
  @override
  final AnalystRunStatusEnum status;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? finishedAt;
  @override
  final AnalystCursor? cursorFrom;
  @override
  final AnalystCursor? cursorTo;
  @override
  final AnalystRunInputCounts? inputCounts;
  @override
  final String? provider;
  @override
  final String? model;
  @override
  final AnalystRunEffortEnum? effort;
  @override
  final int? tokensIn;
  @override
  final int? tokensOut;
  @override
  final int? cachedTokens;
  @override
  final int? toolCalls;
  @override
  final int? durationMs;
  @override
  final int? notes;
  @override
  final int? proposals;
  @override
  final int? autoExecuted;
  @override
  final int? citationsDropped;
  @override
  final int? claimsDowngraded;
  @override
  final BuiltList<String>? warnings;
  @override
  final String? reason;
  @override
  final String? promptHash;
  @override
  final String? detectorVersion;
  @override
  final BuiltMap<String, JsonObject?>? content;
  @override
  final String? manifestId;

  factory _$AnalystRun([void Function(AnalystRunBuilder)? updates]) =>
      (AnalystRunBuilder()..update(updates))._build();

  _$AnalystRun._({
    required this.id,
    required this.profileId,
    required this.status,
    this.startedAt,
    this.finishedAt,
    this.cursorFrom,
    this.cursorTo,
    this.inputCounts,
    this.provider,
    this.model,
    this.effort,
    this.tokensIn,
    this.tokensOut,
    this.cachedTokens,
    this.toolCalls,
    this.durationMs,
    this.notes,
    this.proposals,
    this.autoExecuted,
    this.citationsDropped,
    this.claimsDowngraded,
    this.warnings,
    this.reason,
    this.promptHash,
    this.detectorVersion,
    this.content,
    this.manifestId,
  }) : super._();
  @override
  AnalystRun rebuild(void Function(AnalystRunBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalystRunBuilder toBuilder() => AnalystRunBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystRun &&
        id == other.id &&
        profileId == other.profileId &&
        status == other.status &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        cursorFrom == other.cursorFrom &&
        cursorTo == other.cursorTo &&
        inputCounts == other.inputCounts &&
        provider == other.provider &&
        model == other.model &&
        effort == other.effort &&
        tokensIn == other.tokensIn &&
        tokensOut == other.tokensOut &&
        cachedTokens == other.cachedTokens &&
        toolCalls == other.toolCalls &&
        durationMs == other.durationMs &&
        notes == other.notes &&
        proposals == other.proposals &&
        autoExecuted == other.autoExecuted &&
        citationsDropped == other.citationsDropped &&
        claimsDowngraded == other.claimsDowngraded &&
        warnings == other.warnings &&
        reason == other.reason &&
        promptHash == other.promptHash &&
        detectorVersion == other.detectorVersion &&
        content == other.content &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jc(_$hash, cursorFrom.hashCode);
    _$hash = $jc(_$hash, cursorTo.hashCode);
    _$hash = $jc(_$hash, inputCounts.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, effort.hashCode);
    _$hash = $jc(_$hash, tokensIn.hashCode);
    _$hash = $jc(_$hash, tokensOut.hashCode);
    _$hash = $jc(_$hash, cachedTokens.hashCode);
    _$hash = $jc(_$hash, toolCalls.hashCode);
    _$hash = $jc(_$hash, durationMs.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, proposals.hashCode);
    _$hash = $jc(_$hash, autoExecuted.hashCode);
    _$hash = $jc(_$hash, citationsDropped.hashCode);
    _$hash = $jc(_$hash, claimsDowngraded.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, promptHash.hashCode);
    _$hash = $jc(_$hash, detectorVersion.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalystRun')
          ..add('id', id)
          ..add('profileId', profileId)
          ..add('status', status)
          ..add('startedAt', startedAt)
          ..add('finishedAt', finishedAt)
          ..add('cursorFrom', cursorFrom)
          ..add('cursorTo', cursorTo)
          ..add('inputCounts', inputCounts)
          ..add('provider', provider)
          ..add('model', model)
          ..add('effort', effort)
          ..add('tokensIn', tokensIn)
          ..add('tokensOut', tokensOut)
          ..add('cachedTokens', cachedTokens)
          ..add('toolCalls', toolCalls)
          ..add('durationMs', durationMs)
          ..add('notes', notes)
          ..add('proposals', proposals)
          ..add('autoExecuted', autoExecuted)
          ..add('citationsDropped', citationsDropped)
          ..add('claimsDowngraded', claimsDowngraded)
          ..add('warnings', warnings)
          ..add('reason', reason)
          ..add('promptHash', promptHash)
          ..add('detectorVersion', detectorVersion)
          ..add('content', content)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class AnalystRunBuilder implements Builder<AnalystRun, AnalystRunBuilder> {
  _$AnalystRun? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _profileId;
  String? get profileId => _$this._profileId;
  set profileId(String? profileId) => _$this._profileId = profileId;

  AnalystRunStatusEnum? _status;
  AnalystRunStatusEnum? get status => _$this._status;
  set status(AnalystRunStatusEnum? status) => _$this._status = status;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  AnalystCursorBuilder? _cursorFrom;
  AnalystCursorBuilder get cursorFrom =>
      _$this._cursorFrom ??= AnalystCursorBuilder();
  set cursorFrom(AnalystCursorBuilder? cursorFrom) =>
      _$this._cursorFrom = cursorFrom;

  AnalystCursorBuilder? _cursorTo;
  AnalystCursorBuilder get cursorTo =>
      _$this._cursorTo ??= AnalystCursorBuilder();
  set cursorTo(AnalystCursorBuilder? cursorTo) => _$this._cursorTo = cursorTo;

  AnalystRunInputCountsBuilder? _inputCounts;
  AnalystRunInputCountsBuilder get inputCounts =>
      _$this._inputCounts ??= AnalystRunInputCountsBuilder();
  set inputCounts(AnalystRunInputCountsBuilder? inputCounts) =>
      _$this._inputCounts = inputCounts;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  AnalystRunEffortEnum? _effort;
  AnalystRunEffortEnum? get effort => _$this._effort;
  set effort(AnalystRunEffortEnum? effort) => _$this._effort = effort;

  int? _tokensIn;
  int? get tokensIn => _$this._tokensIn;
  set tokensIn(int? tokensIn) => _$this._tokensIn = tokensIn;

  int? _tokensOut;
  int? get tokensOut => _$this._tokensOut;
  set tokensOut(int? tokensOut) => _$this._tokensOut = tokensOut;

  int? _cachedTokens;
  int? get cachedTokens => _$this._cachedTokens;
  set cachedTokens(int? cachedTokens) => _$this._cachedTokens = cachedTokens;

  int? _toolCalls;
  int? get toolCalls => _$this._toolCalls;
  set toolCalls(int? toolCalls) => _$this._toolCalls = toolCalls;

  int? _durationMs;
  int? get durationMs => _$this._durationMs;
  set durationMs(int? durationMs) => _$this._durationMs = durationMs;

  int? _notes;
  int? get notes => _$this._notes;
  set notes(int? notes) => _$this._notes = notes;

  int? _proposals;
  int? get proposals => _$this._proposals;
  set proposals(int? proposals) => _$this._proposals = proposals;

  int? _autoExecuted;
  int? get autoExecuted => _$this._autoExecuted;
  set autoExecuted(int? autoExecuted) => _$this._autoExecuted = autoExecuted;

  int? _citationsDropped;
  int? get citationsDropped => _$this._citationsDropped;
  set citationsDropped(int? citationsDropped) =>
      _$this._citationsDropped = citationsDropped;

  int? _claimsDowngraded;
  int? get claimsDowngraded => _$this._claimsDowngraded;
  set claimsDowngraded(int? claimsDowngraded) =>
      _$this._claimsDowngraded = claimsDowngraded;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _promptHash;
  String? get promptHash => _$this._promptHash;
  set promptHash(String? promptHash) => _$this._promptHash = promptHash;

  String? _detectorVersion;
  String? get detectorVersion => _$this._detectorVersion;
  set detectorVersion(String? detectorVersion) =>
      _$this._detectorVersion = detectorVersion;

  MapBuilder<String, JsonObject?>? _content;
  MapBuilder<String, JsonObject?> get content =>
      _$this._content ??= MapBuilder<String, JsonObject?>();
  set content(MapBuilder<String, JsonObject?>? content) =>
      _$this._content = content;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  AnalystRunBuilder() {
    AnalystRun._defaults(this);
  }

  AnalystRunBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _profileId = $v.profileId;
      _status = $v.status;
      _startedAt = $v.startedAt;
      _finishedAt = $v.finishedAt;
      _cursorFrom = $v.cursorFrom?.toBuilder();
      _cursorTo = $v.cursorTo?.toBuilder();
      _inputCounts = $v.inputCounts?.toBuilder();
      _provider = $v.provider;
      _model = $v.model;
      _effort = $v.effort;
      _tokensIn = $v.tokensIn;
      _tokensOut = $v.tokensOut;
      _cachedTokens = $v.cachedTokens;
      _toolCalls = $v.toolCalls;
      _durationMs = $v.durationMs;
      _notes = $v.notes;
      _proposals = $v.proposals;
      _autoExecuted = $v.autoExecuted;
      _citationsDropped = $v.citationsDropped;
      _claimsDowngraded = $v.claimsDowngraded;
      _warnings = $v.warnings?.toBuilder();
      _reason = $v.reason;
      _promptHash = $v.promptHash;
      _detectorVersion = $v.detectorVersion;
      _content = $v.content?.toBuilder();
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystRun other) {
    _$v = other as _$AnalystRun;
  }

  @override
  void update(void Function(AnalystRunBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystRun build() => _build();

  _$AnalystRun _build() {
    _$AnalystRun _$result;
    try {
      _$result =
          _$v ??
          _$AnalystRun._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'AnalystRun', 'id'),
            profileId: BuiltValueNullFieldError.checkNotNull(
              profileId,
              r'AnalystRun',
              'profileId',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'AnalystRun',
              'status',
            ),
            startedAt: startedAt,
            finishedAt: finishedAt,
            cursorFrom: _cursorFrom?.build(),
            cursorTo: _cursorTo?.build(),
            inputCounts: _inputCounts?.build(),
            provider: provider,
            model: model,
            effort: effort,
            tokensIn: tokensIn,
            tokensOut: tokensOut,
            cachedTokens: cachedTokens,
            toolCalls: toolCalls,
            durationMs: durationMs,
            notes: notes,
            proposals: proposals,
            autoExecuted: autoExecuted,
            citationsDropped: citationsDropped,
            claimsDowngraded: claimsDowngraded,
            warnings: _warnings?.build(),
            reason: reason,
            promptHash: promptHash,
            detectorVersion: detectorVersion,
            content: _content?.build(),
            manifestId: manifestId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cursorFrom';
        _cursorFrom?.build();
        _$failedField = 'cursorTo';
        _cursorTo?.build();
        _$failedField = 'inputCounts';
        _inputCounts?.build();

        _$failedField = 'warnings';
        _warnings?.build();

        _$failedField = 'content';
        _content?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnalystRun',
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

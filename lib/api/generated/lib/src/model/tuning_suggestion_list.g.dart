// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuning_suggestion_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TuningSuggestionList extends TuningSuggestionList {
  @override
  final String ruleId;
  @override
  final DateTime since;
  @override
  final String suggesterVersion;
  @override
  final BuiltList<TuningSuggestionRecord> suggestions;
  @override
  final String? simulationJobId;
  @override
  final String? jobId;

  factory _$TuningSuggestionList(
          [void Function(TuningSuggestionListBuilder)? updates]) =>
      (TuningSuggestionListBuilder()..update(updates))._build();

  _$TuningSuggestionList._(
      {required this.ruleId,
      required this.since,
      required this.suggesterVersion,
      required this.suggestions,
      this.simulationJobId,
      this.jobId})
      : super._();
  @override
  TuningSuggestionList rebuild(
          void Function(TuningSuggestionListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TuningSuggestionListBuilder toBuilder() =>
      TuningSuggestionListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TuningSuggestionList &&
        ruleId == other.ruleId &&
        since == other.since &&
        suggesterVersion == other.suggesterVersion &&
        suggestions == other.suggestions &&
        simulationJobId == other.simulationJobId &&
        jobId == other.jobId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, since.hashCode);
    _$hash = $jc(_$hash, suggesterVersion.hashCode);
    _$hash = $jc(_$hash, suggestions.hashCode);
    _$hash = $jc(_$hash, simulationJobId.hashCode);
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TuningSuggestionList')
          ..add('ruleId', ruleId)
          ..add('since', since)
          ..add('suggesterVersion', suggesterVersion)
          ..add('suggestions', suggestions)
          ..add('simulationJobId', simulationJobId)
          ..add('jobId', jobId))
        .toString();
  }
}

class TuningSuggestionListBuilder
    implements Builder<TuningSuggestionList, TuningSuggestionListBuilder> {
  _$TuningSuggestionList? _$v;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  DateTime? _since;
  DateTime? get since => _$this._since;
  set since(DateTime? since) => _$this._since = since;

  String? _suggesterVersion;
  String? get suggesterVersion => _$this._suggesterVersion;
  set suggesterVersion(String? suggesterVersion) =>
      _$this._suggesterVersion = suggesterVersion;

  ListBuilder<TuningSuggestionRecord>? _suggestions;
  ListBuilder<TuningSuggestionRecord> get suggestions =>
      _$this._suggestions ??= ListBuilder<TuningSuggestionRecord>();
  set suggestions(ListBuilder<TuningSuggestionRecord>? suggestions) =>
      _$this._suggestions = suggestions;

  String? _simulationJobId;
  String? get simulationJobId => _$this._simulationJobId;
  set simulationJobId(String? simulationJobId) =>
      _$this._simulationJobId = simulationJobId;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(String? jobId) => _$this._jobId = jobId;

  TuningSuggestionListBuilder() {
    TuningSuggestionList._defaults(this);
  }

  TuningSuggestionListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleId = $v.ruleId;
      _since = $v.since;
      _suggesterVersion = $v.suggesterVersion;
      _suggestions = $v.suggestions.toBuilder();
      _simulationJobId = $v.simulationJobId;
      _jobId = $v.jobId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TuningSuggestionList other) {
    _$v = other as _$TuningSuggestionList;
  }

  @override
  void update(void Function(TuningSuggestionListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TuningSuggestionList build() => _build();

  _$TuningSuggestionList _build() {
    _$TuningSuggestionList _$result;
    try {
      _$result = _$v ??
          _$TuningSuggestionList._(
            ruleId: BuiltValueNullFieldError.checkNotNull(
                ruleId, r'TuningSuggestionList', 'ruleId'),
            since: BuiltValueNullFieldError.checkNotNull(
                since, r'TuningSuggestionList', 'since'),
            suggesterVersion: BuiltValueNullFieldError.checkNotNull(
                suggesterVersion, r'TuningSuggestionList', 'suggesterVersion'),
            suggestions: suggestions.build(),
            simulationJobId: simulationJobId,
            jobId: jobId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'suggestions';
        suggestions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TuningSuggestionList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

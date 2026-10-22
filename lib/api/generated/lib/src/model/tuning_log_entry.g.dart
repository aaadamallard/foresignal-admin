// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuning_log_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TuningLogEntry extends TuningLogEntry {
  @override
  final String id;
  @override
  final String ruleId;
  @override
  final String? suggestionId;
  @override
  final TriggerRuleInput before;
  @override
  final TriggerRuleInput after;
  @override
  final String? note;
  @override
  final String appliedBy;
  @override
  final DateTime appliedAt;
  @override
  final String? undoneBy;
  @override
  final DateTime? undoneAt;

  factory _$TuningLogEntry([void Function(TuningLogEntryBuilder)? updates]) =>
      (TuningLogEntryBuilder()..update(updates))._build();

  _$TuningLogEntry._({
    required this.id,
    required this.ruleId,
    this.suggestionId,
    required this.before,
    required this.after,
    this.note,
    required this.appliedBy,
    required this.appliedAt,
    this.undoneBy,
    this.undoneAt,
  }) : super._();
  @override
  TuningLogEntry rebuild(void Function(TuningLogEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TuningLogEntryBuilder toBuilder() => TuningLogEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TuningLogEntry &&
        id == other.id &&
        ruleId == other.ruleId &&
        suggestionId == other.suggestionId &&
        before == other.before &&
        after == other.after &&
        note == other.note &&
        appliedBy == other.appliedBy &&
        appliedAt == other.appliedAt &&
        undoneBy == other.undoneBy &&
        undoneAt == other.undoneAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, suggestionId.hashCode);
    _$hash = $jc(_$hash, before.hashCode);
    _$hash = $jc(_$hash, after.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, appliedBy.hashCode);
    _$hash = $jc(_$hash, appliedAt.hashCode);
    _$hash = $jc(_$hash, undoneBy.hashCode);
    _$hash = $jc(_$hash, undoneAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TuningLogEntry')
          ..add('id', id)
          ..add('ruleId', ruleId)
          ..add('suggestionId', suggestionId)
          ..add('before', before)
          ..add('after', after)
          ..add('note', note)
          ..add('appliedBy', appliedBy)
          ..add('appliedAt', appliedAt)
          ..add('undoneBy', undoneBy)
          ..add('undoneAt', undoneAt))
        .toString();
  }
}

class TuningLogEntryBuilder
    implements Builder<TuningLogEntry, TuningLogEntryBuilder> {
  _$TuningLogEntry? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  String? _suggestionId;
  String? get suggestionId => _$this._suggestionId;
  set suggestionId(String? suggestionId) => _$this._suggestionId = suggestionId;

  TriggerRuleInputBuilder? _before;
  TriggerRuleInputBuilder get before =>
      _$this._before ??= TriggerRuleInputBuilder();
  set before(TriggerRuleInputBuilder? before) => _$this._before = before;

  TriggerRuleInputBuilder? _after;
  TriggerRuleInputBuilder get after =>
      _$this._after ??= TriggerRuleInputBuilder();
  set after(TriggerRuleInputBuilder? after) => _$this._after = after;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  String? _appliedBy;
  String? get appliedBy => _$this._appliedBy;
  set appliedBy(String? appliedBy) => _$this._appliedBy = appliedBy;

  DateTime? _appliedAt;
  DateTime? get appliedAt => _$this._appliedAt;
  set appliedAt(DateTime? appliedAt) => _$this._appliedAt = appliedAt;

  String? _undoneBy;
  String? get undoneBy => _$this._undoneBy;
  set undoneBy(String? undoneBy) => _$this._undoneBy = undoneBy;

  DateTime? _undoneAt;
  DateTime? get undoneAt => _$this._undoneAt;
  set undoneAt(DateTime? undoneAt) => _$this._undoneAt = undoneAt;

  TuningLogEntryBuilder() {
    TuningLogEntry._defaults(this);
  }

  TuningLogEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ruleId = $v.ruleId;
      _suggestionId = $v.suggestionId;
      _before = $v.before.toBuilder();
      _after = $v.after.toBuilder();
      _note = $v.note;
      _appliedBy = $v.appliedBy;
      _appliedAt = $v.appliedAt;
      _undoneBy = $v.undoneBy;
      _undoneAt = $v.undoneAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TuningLogEntry other) {
    _$v = other as _$TuningLogEntry;
  }

  @override
  void update(void Function(TuningLogEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TuningLogEntry build() => _build();

  _$TuningLogEntry _build() {
    _$TuningLogEntry _$result;
    try {
      _$result =
          _$v ??
          _$TuningLogEntry._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'TuningLogEntry',
              'id',
            ),
            ruleId: BuiltValueNullFieldError.checkNotNull(
              ruleId,
              r'TuningLogEntry',
              'ruleId',
            ),
            suggestionId: suggestionId,
            before: before.build(),
            after: after.build(),
            note: note,
            appliedBy: BuiltValueNullFieldError.checkNotNull(
              appliedBy,
              r'TuningLogEntry',
              'appliedBy',
            ),
            appliedAt: BuiltValueNullFieldError.checkNotNull(
              appliedAt,
              r'TuningLogEntry',
              'appliedAt',
            ),
            undoneBy: undoneBy,
            undoneAt: undoneAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'before';
        before.build();
        _$failedField = 'after';
        after.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TuningLogEntry',
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

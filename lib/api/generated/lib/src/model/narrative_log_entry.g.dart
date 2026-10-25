// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative_log_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NarrativeLogEntry extends NarrativeLogEntry {
  @override
  final DateTime at;
  @override
  final String action;
  @override
  final String by;
  @override
  final BuiltList<String>? relatedNarrativeIds;
  @override
  final String? from;
  @override
  final String? to;
  @override
  final String? reason;

  factory _$NarrativeLogEntry([
    void Function(NarrativeLogEntryBuilder)? updates,
  ]) => (NarrativeLogEntryBuilder()..update(updates))._build();

  _$NarrativeLogEntry._({
    required this.at,
    required this.action,
    required this.by,
    this.relatedNarrativeIds,
    this.from,
    this.to,
    this.reason,
  }) : super._();
  @override
  NarrativeLogEntry rebuild(void Function(NarrativeLogEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NarrativeLogEntryBuilder toBuilder() =>
      NarrativeLogEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NarrativeLogEntry &&
        at == other.at &&
        action == other.action &&
        by == other.by &&
        relatedNarrativeIds == other.relatedNarrativeIds &&
        from == other.from &&
        to == other.to &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, by.hashCode);
    _$hash = $jc(_$hash, relatedNarrativeIds.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NarrativeLogEntry')
          ..add('at', at)
          ..add('action', action)
          ..add('by', by)
          ..add('relatedNarrativeIds', relatedNarrativeIds)
          ..add('from', from)
          ..add('to', to)
          ..add('reason', reason))
        .toString();
  }
}

class NarrativeLogEntryBuilder
    implements Builder<NarrativeLogEntry, NarrativeLogEntryBuilder> {
  _$NarrativeLogEntry? _$v;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  String? _by;
  String? get by => _$this._by;
  set by(String? by) => _$this._by = by;

  ListBuilder<String>? _relatedNarrativeIds;
  ListBuilder<String> get relatedNarrativeIds =>
      _$this._relatedNarrativeIds ??= ListBuilder<String>();
  set relatedNarrativeIds(ListBuilder<String>? relatedNarrativeIds) =>
      _$this._relatedNarrativeIds = relatedNarrativeIds;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  NarrativeLogEntryBuilder() {
    NarrativeLogEntry._defaults(this);
  }

  NarrativeLogEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _at = $v.at;
      _action = $v.action;
      _by = $v.by;
      _relatedNarrativeIds = $v.relatedNarrativeIds?.toBuilder();
      _from = $v.from;
      _to = $v.to;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NarrativeLogEntry other) {
    _$v = other as _$NarrativeLogEntry;
  }

  @override
  void update(void Function(NarrativeLogEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NarrativeLogEntry build() => _build();

  _$NarrativeLogEntry _build() {
    _$NarrativeLogEntry _$result;
    try {
      _$result =
          _$v ??
          _$NarrativeLogEntry._(
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'NarrativeLogEntry',
              'at',
            ),
            action: BuiltValueNullFieldError.checkNotNull(
              action,
              r'NarrativeLogEntry',
              'action',
            ),
            by: BuiltValueNullFieldError.checkNotNull(
              by,
              r'NarrativeLogEntry',
              'by',
            ),
            relatedNarrativeIds: _relatedNarrativeIds?.build(),
            from: from,
            to: to,
            reason: reason,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'relatedNarrativeIds';
        _relatedNarrativeIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NarrativeLogEntry',
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

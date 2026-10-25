// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_event_log_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelEventLogEntry extends IntelEventLogEntry {
  @override
  final DateTime at;
  @override
  final String actor;
  @override
  final String action;
  @override
  final BuiltMap<String, JsonObject?>? before;
  @override
  final BuiltMap<String, JsonObject?>? after;

  factory _$IntelEventLogEntry([
    void Function(IntelEventLogEntryBuilder)? updates,
  ]) => (IntelEventLogEntryBuilder()..update(updates))._build();

  _$IntelEventLogEntry._({
    required this.at,
    required this.actor,
    required this.action,
    this.before,
    this.after,
  }) : super._();
  @override
  IntelEventLogEntry rebuild(
    void Function(IntelEventLogEntryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelEventLogEntryBuilder toBuilder() =>
      IntelEventLogEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelEventLogEntry &&
        at == other.at &&
        actor == other.actor &&
        action == other.action &&
        before == other.before &&
        after == other.after;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, actor.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, before.hashCode);
    _$hash = $jc(_$hash, after.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelEventLogEntry')
          ..add('at', at)
          ..add('actor', actor)
          ..add('action', action)
          ..add('before', before)
          ..add('after', after))
        .toString();
  }
}

class IntelEventLogEntryBuilder
    implements Builder<IntelEventLogEntry, IntelEventLogEntryBuilder> {
  _$IntelEventLogEntry? _$v;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  String? _actor;
  String? get actor => _$this._actor;
  set actor(String? actor) => _$this._actor = actor;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  MapBuilder<String, JsonObject?>? _before;
  MapBuilder<String, JsonObject?> get before =>
      _$this._before ??= MapBuilder<String, JsonObject?>();
  set before(MapBuilder<String, JsonObject?>? before) =>
      _$this._before = before;

  MapBuilder<String, JsonObject?>? _after;
  MapBuilder<String, JsonObject?> get after =>
      _$this._after ??= MapBuilder<String, JsonObject?>();
  set after(MapBuilder<String, JsonObject?>? after) => _$this._after = after;

  IntelEventLogEntryBuilder() {
    IntelEventLogEntry._defaults(this);
  }

  IntelEventLogEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _at = $v.at;
      _actor = $v.actor;
      _action = $v.action;
      _before = $v.before?.toBuilder();
      _after = $v.after?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelEventLogEntry other) {
    _$v = other as _$IntelEventLogEntry;
  }

  @override
  void update(void Function(IntelEventLogEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelEventLogEntry build() => _build();

  _$IntelEventLogEntry _build() {
    _$IntelEventLogEntry _$result;
    try {
      _$result =
          _$v ??
          _$IntelEventLogEntry._(
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'IntelEventLogEntry',
              'at',
            ),
            actor: BuiltValueNullFieldError.checkNotNull(
              actor,
              r'IntelEventLogEntry',
              'actor',
            ),
            action: BuiltValueNullFieldError.checkNotNull(
              action,
              r'IntelEventLogEntry',
              'action',
            ),
            before: _before?.build(),
            after: _after?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'before';
        _before?.build();
        _$failedField = 'after';
        _after?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IntelEventLogEntry',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_search_matches_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SavedSearchMatchesEvent extends SavedSearchMatchesEvent {
  @override
  final String savedSearchId;
  @override
  final String name;
  @override
  final int newMatches;
  @override
  final BuiltList<String>? refs;
  @override
  final DateTime at;

  factory _$SavedSearchMatchesEvent(
          [void Function(SavedSearchMatchesEventBuilder)? updates]) =>
      (SavedSearchMatchesEventBuilder()..update(updates))._build();

  _$SavedSearchMatchesEvent._(
      {required this.savedSearchId,
      required this.name,
      required this.newMatches,
      this.refs,
      required this.at})
      : super._();
  @override
  SavedSearchMatchesEvent rebuild(
          void Function(SavedSearchMatchesEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SavedSearchMatchesEventBuilder toBuilder() =>
      SavedSearchMatchesEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SavedSearchMatchesEvent &&
        savedSearchId == other.savedSearchId &&
        name == other.name &&
        newMatches == other.newMatches &&
        refs == other.refs &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, savedSearchId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, newMatches.hashCode);
    _$hash = $jc(_$hash, refs.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SavedSearchMatchesEvent')
          ..add('savedSearchId', savedSearchId)
          ..add('name', name)
          ..add('newMatches', newMatches)
          ..add('refs', refs)
          ..add('at', at))
        .toString();
  }
}

class SavedSearchMatchesEventBuilder
    implements
        Builder<SavedSearchMatchesEvent, SavedSearchMatchesEventBuilder> {
  _$SavedSearchMatchesEvent? _$v;

  String? _savedSearchId;
  String? get savedSearchId => _$this._savedSearchId;
  set savedSearchId(String? savedSearchId) =>
      _$this._savedSearchId = savedSearchId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _newMatches;
  int? get newMatches => _$this._newMatches;
  set newMatches(int? newMatches) => _$this._newMatches = newMatches;

  ListBuilder<String>? _refs;
  ListBuilder<String> get refs => _$this._refs ??= ListBuilder<String>();
  set refs(ListBuilder<String>? refs) => _$this._refs = refs;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  SavedSearchMatchesEventBuilder() {
    SavedSearchMatchesEvent._defaults(this);
  }

  SavedSearchMatchesEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _savedSearchId = $v.savedSearchId;
      _name = $v.name;
      _newMatches = $v.newMatches;
      _refs = $v.refs?.toBuilder();
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SavedSearchMatchesEvent other) {
    _$v = other as _$SavedSearchMatchesEvent;
  }

  @override
  void update(void Function(SavedSearchMatchesEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SavedSearchMatchesEvent build() => _build();

  _$SavedSearchMatchesEvent _build() {
    _$SavedSearchMatchesEvent _$result;
    try {
      _$result = _$v ??
          _$SavedSearchMatchesEvent._(
            savedSearchId: BuiltValueNullFieldError.checkNotNull(
                savedSearchId, r'SavedSearchMatchesEvent', 'savedSearchId'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'SavedSearchMatchesEvent', 'name'),
            newMatches: BuiltValueNullFieldError.checkNotNull(
                newMatches, r'SavedSearchMatchesEvent', 'newMatches'),
            refs: _refs?.build(),
            at: BuiltValueNullFieldError.checkNotNull(
                at, r'SavedSearchMatchesEvent', 'at'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refs';
        _refs?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SavedSearchMatchesEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

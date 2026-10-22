// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_search_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SavedSearchPatch extends SavedSearchPatch {
  @override
  final String? name;
  @override
  final SavedSearchQuery? query;
  @override
  final Visibility? visibility;
  @override
  final String? tlp;
  @override
  final bool? notify;

  factory _$SavedSearchPatch([
    void Function(SavedSearchPatchBuilder)? updates,
  ]) => (SavedSearchPatchBuilder()..update(updates))._build();

  _$SavedSearchPatch._({
    this.name,
    this.query,
    this.visibility,
    this.tlp,
    this.notify,
  }) : super._();
  @override
  SavedSearchPatch rebuild(void Function(SavedSearchPatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SavedSearchPatchBuilder toBuilder() =>
      SavedSearchPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SavedSearchPatch &&
        name == other.name &&
        query == other.query &&
        visibility == other.visibility &&
        tlp == other.tlp &&
        notify == other.notify;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, query.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, notify.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SavedSearchPatch')
          ..add('name', name)
          ..add('query', query)
          ..add('visibility', visibility)
          ..add('tlp', tlp)
          ..add('notify', notify))
        .toString();
  }
}

class SavedSearchPatchBuilder
    implements Builder<SavedSearchPatch, SavedSearchPatchBuilder> {
  _$SavedSearchPatch? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  SavedSearchQueryBuilder? _query;
  SavedSearchQueryBuilder get query =>
      _$this._query ??= SavedSearchQueryBuilder();
  set query(SavedSearchQueryBuilder? query) => _$this._query = query;

  Visibility? _visibility;
  Visibility? get visibility => _$this._visibility;
  set visibility(Visibility? visibility) => _$this._visibility = visibility;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  bool? _notify;
  bool? get notify => _$this._notify;
  set notify(bool? notify) => _$this._notify = notify;

  SavedSearchPatchBuilder() {
    SavedSearchPatch._defaults(this);
  }

  SavedSearchPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _query = $v.query?.toBuilder();
      _visibility = $v.visibility;
      _tlp = $v.tlp;
      _notify = $v.notify;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SavedSearchPatch other) {
    _$v = other as _$SavedSearchPatch;
  }

  @override
  void update(void Function(SavedSearchPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SavedSearchPatch build() => _build();

  _$SavedSearchPatch _build() {
    _$SavedSearchPatch _$result;
    try {
      _$result =
          _$v ??
          _$SavedSearchPatch._(
            name: name,
            query: _query?.build(),
            visibility: visibility,
            tlp: tlp,
            notify: notify,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'query';
        _query?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SavedSearchPatch',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_search.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SavedSearch extends SavedSearch {
  @override
  final String id;
  @override
  final String name;
  @override
  final PrincipalSummary owner;
  @override
  final SavedSearchQuery query;
  @override
  final Visibility visibility;
  @override
  final String tlp;
  @override
  final bool notify;
  @override
  final DateTime? lastRunAt;
  @override
  final DateTime? lastNotifiedAt;
  @override
  final int? lastMatchCount;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  factory _$SavedSearch([void Function(SavedSearchBuilder)? updates]) =>
      (SavedSearchBuilder()..update(updates))._build();

  _$SavedSearch._({
    required this.id,
    required this.name,
    required this.owner,
    required this.query,
    required this.visibility,
    required this.tlp,
    required this.notify,
    this.lastRunAt,
    this.lastNotifiedAt,
    this.lastMatchCount,
    required this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  SavedSearch rebuild(void Function(SavedSearchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SavedSearchBuilder toBuilder() => SavedSearchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SavedSearch &&
        id == other.id &&
        name == other.name &&
        owner == other.owner &&
        query == other.query &&
        visibility == other.visibility &&
        tlp == other.tlp &&
        notify == other.notify &&
        lastRunAt == other.lastRunAt &&
        lastNotifiedAt == other.lastNotifiedAt &&
        lastMatchCount == other.lastMatchCount &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, query.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, notify.hashCode);
    _$hash = $jc(_$hash, lastRunAt.hashCode);
    _$hash = $jc(_$hash, lastNotifiedAt.hashCode);
    _$hash = $jc(_$hash, lastMatchCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SavedSearch')
          ..add('id', id)
          ..add('name', name)
          ..add('owner', owner)
          ..add('query', query)
          ..add('visibility', visibility)
          ..add('tlp', tlp)
          ..add('notify', notify)
          ..add('lastRunAt', lastRunAt)
          ..add('lastNotifiedAt', lastNotifiedAt)
          ..add('lastMatchCount', lastMatchCount)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class SavedSearchBuilder implements Builder<SavedSearch, SavedSearchBuilder> {
  _$SavedSearch? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PrincipalSummaryBuilder? _owner;
  PrincipalSummaryBuilder get owner =>
      _$this._owner ??= PrincipalSummaryBuilder();
  set owner(PrincipalSummaryBuilder? owner) => _$this._owner = owner;

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

  DateTime? _lastRunAt;
  DateTime? get lastRunAt => _$this._lastRunAt;
  set lastRunAt(DateTime? lastRunAt) => _$this._lastRunAt = lastRunAt;

  DateTime? _lastNotifiedAt;
  DateTime? get lastNotifiedAt => _$this._lastNotifiedAt;
  set lastNotifiedAt(DateTime? lastNotifiedAt) =>
      _$this._lastNotifiedAt = lastNotifiedAt;

  int? _lastMatchCount;
  int? get lastMatchCount => _$this._lastMatchCount;
  set lastMatchCount(int? lastMatchCount) =>
      _$this._lastMatchCount = lastMatchCount;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  SavedSearchBuilder() {
    SavedSearch._defaults(this);
  }

  SavedSearchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _owner = $v.owner.toBuilder();
      _query = $v.query.toBuilder();
      _visibility = $v.visibility;
      _tlp = $v.tlp;
      _notify = $v.notify;
      _lastRunAt = $v.lastRunAt;
      _lastNotifiedAt = $v.lastNotifiedAt;
      _lastMatchCount = $v.lastMatchCount;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SavedSearch other) {
    _$v = other as _$SavedSearch;
  }

  @override
  void update(void Function(SavedSearchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SavedSearch build() => _build();

  _$SavedSearch _build() {
    _$SavedSearch _$result;
    try {
      _$result =
          _$v ??
          _$SavedSearch._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'SavedSearch', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'SavedSearch',
              'name',
            ),
            owner: owner.build(),
            query: query.build(),
            visibility: BuiltValueNullFieldError.checkNotNull(
              visibility,
              r'SavedSearch',
              'visibility',
            ),
            tlp: BuiltValueNullFieldError.checkNotNull(
              tlp,
              r'SavedSearch',
              'tlp',
            ),
            notify: BuiltValueNullFieldError.checkNotNull(
              notify,
              r'SavedSearch',
              'notify',
            ),
            lastRunAt: lastRunAt,
            lastNotifiedAt: lastNotifiedAt,
            lastMatchCount: lastMatchCount,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'SavedSearch',
              'createdAt',
            ),
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owner';
        owner.build();
        _$failedField = 'query';
        query.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SavedSearch',
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

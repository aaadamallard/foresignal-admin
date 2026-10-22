// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attention_topic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttentionTopic extends AttentionTopic {
  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? gdeltQuery;
  @override
  final BuiltList<AttentionTopicInputWikiArticlesInner>? wikiArticles;
  @override
  final BuiltList<String>? keywords;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final BuiltList<String>? themes;
  @override
  final bool? enabled;
  @override
  final AttentionTopicSocial? social;
  @override
  final String? createdBy;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$AttentionTopic([void Function(AttentionTopicBuilder)? updates]) =>
      (AttentionTopicBuilder()..update(updates))._build();

  _$AttentionTopic._(
      {required this.id,
      required this.name,
      this.description,
      this.gdeltQuery,
      this.wikiArticles,
      this.keywords,
      this.regionCodes,
      this.themes,
      this.enabled,
      this.social,
      this.createdBy,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  AttentionTopic rebuild(void Function(AttentionTopicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttentionTopicBuilder toBuilder() => AttentionTopicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttentionTopic &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        gdeltQuery == other.gdeltQuery &&
        wikiArticles == other.wikiArticles &&
        keywords == other.keywords &&
        regionCodes == other.regionCodes &&
        themes == other.themes &&
        enabled == other.enabled &&
        social == other.social &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, gdeltQuery.hashCode);
    _$hash = $jc(_$hash, wikiArticles.hashCode);
    _$hash = $jc(_$hash, keywords.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, themes.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, social.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttentionTopic')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('gdeltQuery', gdeltQuery)
          ..add('wikiArticles', wikiArticles)
          ..add('keywords', keywords)
          ..add('regionCodes', regionCodes)
          ..add('themes', themes)
          ..add('enabled', enabled)
          ..add('social', social)
          ..add('createdBy', createdBy)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class AttentionTopicBuilder
    implements Builder<AttentionTopic, AttentionTopicBuilder> {
  _$AttentionTopic? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _gdeltQuery;
  String? get gdeltQuery => _$this._gdeltQuery;
  set gdeltQuery(String? gdeltQuery) => _$this._gdeltQuery = gdeltQuery;

  ListBuilder<AttentionTopicInputWikiArticlesInner>? _wikiArticles;
  ListBuilder<AttentionTopicInputWikiArticlesInner> get wikiArticles =>
      _$this._wikiArticles ??=
          ListBuilder<AttentionTopicInputWikiArticlesInner>();
  set wikiArticles(
          ListBuilder<AttentionTopicInputWikiArticlesInner>? wikiArticles) =>
      _$this._wikiArticles = wikiArticles;

  ListBuilder<String>? _keywords;
  ListBuilder<String> get keywords =>
      _$this._keywords ??= ListBuilder<String>();
  set keywords(ListBuilder<String>? keywords) => _$this._keywords = keywords;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  ListBuilder<String>? _themes;
  ListBuilder<String> get themes => _$this._themes ??= ListBuilder<String>();
  set themes(ListBuilder<String>? themes) => _$this._themes = themes;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  AttentionTopicSocialBuilder? _social;
  AttentionTopicSocialBuilder get social =>
      _$this._social ??= AttentionTopicSocialBuilder();
  set social(AttentionTopicSocialBuilder? social) => _$this._social = social;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  AttentionTopicBuilder() {
    AttentionTopic._defaults(this);
  }

  AttentionTopicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _gdeltQuery = $v.gdeltQuery;
      _wikiArticles = $v.wikiArticles?.toBuilder();
      _keywords = $v.keywords?.toBuilder();
      _regionCodes = $v.regionCodes?.toBuilder();
      _themes = $v.themes?.toBuilder();
      _enabled = $v.enabled;
      _social = $v.social?.toBuilder();
      _createdBy = $v.createdBy;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttentionTopic other) {
    _$v = other as _$AttentionTopic;
  }

  @override
  void update(void Function(AttentionTopicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttentionTopic build() => _build();

  _$AttentionTopic _build() {
    _$AttentionTopic _$result;
    try {
      _$result = _$v ??
          _$AttentionTopic._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'AttentionTopic', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'AttentionTopic', 'name'),
            description: description,
            gdeltQuery: gdeltQuery,
            wikiArticles: _wikiArticles?.build(),
            keywords: _keywords?.build(),
            regionCodes: _regionCodes?.build(),
            themes: _themes?.build(),
            enabled: enabled,
            social: _social?.build(),
            createdBy: createdBy,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'AttentionTopic', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'AttentionTopic', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'wikiArticles';
        _wikiArticles?.build();
        _$failedField = 'keywords';
        _keywords?.build();
        _$failedField = 'regionCodes';
        _regionCodes?.build();
        _$failedField = 'themes';
        _themes?.build();

        _$failedField = 'social';
        _social?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AttentionTopic', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

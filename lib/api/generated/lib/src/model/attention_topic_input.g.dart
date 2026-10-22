// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attention_topic_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttentionTopicInput extends AttentionTopicInput {
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

  factory _$AttentionTopicInput([
    void Function(AttentionTopicInputBuilder)? updates,
  ]) => (AttentionTopicInputBuilder()..update(updates))._build();

  _$AttentionTopicInput._({
    required this.id,
    required this.name,
    this.description,
    this.gdeltQuery,
    this.wikiArticles,
    this.keywords,
    this.regionCodes,
    this.themes,
    this.enabled,
    this.social,
  }) : super._();
  @override
  AttentionTopicInput rebuild(
    void Function(AttentionTopicInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AttentionTopicInputBuilder toBuilder() =>
      AttentionTopicInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttentionTopicInput &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        gdeltQuery == other.gdeltQuery &&
        wikiArticles == other.wikiArticles &&
        keywords == other.keywords &&
        regionCodes == other.regionCodes &&
        themes == other.themes &&
        enabled == other.enabled &&
        social == other.social;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttentionTopicInput')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('gdeltQuery', gdeltQuery)
          ..add('wikiArticles', wikiArticles)
          ..add('keywords', keywords)
          ..add('regionCodes', regionCodes)
          ..add('themes', themes)
          ..add('enabled', enabled)
          ..add('social', social))
        .toString();
  }
}

class AttentionTopicInputBuilder
    implements Builder<AttentionTopicInput, AttentionTopicInputBuilder> {
  _$AttentionTopicInput? _$v;

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
    ListBuilder<AttentionTopicInputWikiArticlesInner>? wikiArticles,
  ) => _$this._wikiArticles = wikiArticles;

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

  AttentionTopicInputBuilder() {
    AttentionTopicInput._defaults(this);
  }

  AttentionTopicInputBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttentionTopicInput other) {
    _$v = other as _$AttentionTopicInput;
  }

  @override
  void update(void Function(AttentionTopicInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttentionTopicInput build() => _build();

  _$AttentionTopicInput _build() {
    _$AttentionTopicInput _$result;
    try {
      _$result =
          _$v ??
          _$AttentionTopicInput._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'AttentionTopicInput',
              'id',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'AttentionTopicInput',
              'name',
            ),
            description: description,
            gdeltQuery: gdeltQuery,
            wikiArticles: _wikiArticles?.build(),
            keywords: _keywords?.build(),
            regionCodes: _regionCodes?.build(),
            themes: _themes?.build(),
            enabled: enabled,
            social: _social?.build(),
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
          r'AttentionTopicInput',
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

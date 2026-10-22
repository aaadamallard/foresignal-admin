// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attention_topic_input_wiki_articles_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttentionTopicInputWikiArticlesInner
    extends AttentionTopicInputWikiArticlesInner {
  @override
  final String project;
  @override
  final String article;

  factory _$AttentionTopicInputWikiArticlesInner([
    void Function(AttentionTopicInputWikiArticlesInnerBuilder)? updates,
  ]) =>
      (AttentionTopicInputWikiArticlesInnerBuilder()..update(updates))._build();

  _$AttentionTopicInputWikiArticlesInner._({
    required this.project,
    required this.article,
  }) : super._();
  @override
  AttentionTopicInputWikiArticlesInner rebuild(
    void Function(AttentionTopicInputWikiArticlesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AttentionTopicInputWikiArticlesInnerBuilder toBuilder() =>
      AttentionTopicInputWikiArticlesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttentionTopicInputWikiArticlesInner &&
        project == other.project &&
        article == other.article;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, project.hashCode);
    _$hash = $jc(_$hash, article.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttentionTopicInputWikiArticlesInner')
          ..add('project', project)
          ..add('article', article))
        .toString();
  }
}

class AttentionTopicInputWikiArticlesInnerBuilder
    implements
        Builder<
          AttentionTopicInputWikiArticlesInner,
          AttentionTopicInputWikiArticlesInnerBuilder
        > {
  _$AttentionTopicInputWikiArticlesInner? _$v;

  String? _project;
  String? get project => _$this._project;
  set project(String? project) => _$this._project = project;

  String? _article;
  String? get article => _$this._article;
  set article(String? article) => _$this._article = article;

  AttentionTopicInputWikiArticlesInnerBuilder() {
    AttentionTopicInputWikiArticlesInner._defaults(this);
  }

  AttentionTopicInputWikiArticlesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _project = $v.project;
      _article = $v.article;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttentionTopicInputWikiArticlesInner other) {
    _$v = other as _$AttentionTopicInputWikiArticlesInner;
  }

  @override
  void update(
    void Function(AttentionTopicInputWikiArticlesInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  AttentionTopicInputWikiArticlesInner build() => _build();

  _$AttentionTopicInputWikiArticlesInner _build() {
    final _$result =
        _$v ??
        _$AttentionTopicInputWikiArticlesInner._(
          project: BuiltValueNullFieldError.checkNotNull(
            project,
            r'AttentionTopicInputWikiArticlesInner',
            'project',
          ),
          article: BuiltValueNullFieldError.checkNotNull(
            article,
            r'AttentionTopicInputWikiArticlesInner',
            'article',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

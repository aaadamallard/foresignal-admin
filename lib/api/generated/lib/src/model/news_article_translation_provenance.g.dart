// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_article_translation_provenance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewsArticleTranslationProvenance
    extends NewsArticleTranslationProvenance {
  @override
  final String engine;
  @override
  final String? model;
  @override
  final DateTime at;

  factory _$NewsArticleTranslationProvenance([
    void Function(NewsArticleTranslationProvenanceBuilder)? updates,
  ]) => (NewsArticleTranslationProvenanceBuilder()..update(updates))._build();

  _$NewsArticleTranslationProvenance._({
    required this.engine,
    this.model,
    required this.at,
  }) : super._();
  @override
  NewsArticleTranslationProvenance rebuild(
    void Function(NewsArticleTranslationProvenanceBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NewsArticleTranslationProvenanceBuilder toBuilder() =>
      NewsArticleTranslationProvenanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsArticleTranslationProvenance &&
        engine == other.engine &&
        model == other.model &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, engine.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsArticleTranslationProvenance')
          ..add('engine', engine)
          ..add('model', model)
          ..add('at', at))
        .toString();
  }
}

class NewsArticleTranslationProvenanceBuilder
    implements
        Builder<
          NewsArticleTranslationProvenance,
          NewsArticleTranslationProvenanceBuilder
        > {
  _$NewsArticleTranslationProvenance? _$v;

  String? _engine;
  String? get engine => _$this._engine;
  set engine(String? engine) => _$this._engine = engine;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  NewsArticleTranslationProvenanceBuilder() {
    NewsArticleTranslationProvenance._defaults(this);
  }

  NewsArticleTranslationProvenanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _engine = $v.engine;
      _model = $v.model;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsArticleTranslationProvenance other) {
    _$v = other as _$NewsArticleTranslationProvenance;
  }

  @override
  void update(void Function(NewsArticleTranslationProvenanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsArticleTranslationProvenance build() => _build();

  _$NewsArticleTranslationProvenance _build() {
    final _$result =
        _$v ??
        _$NewsArticleTranslationProvenance._(
          engine: BuiltValueNullFieldError.checkNotNull(
            engine,
            r'NewsArticleTranslationProvenance',
            'engine',
          ),
          model: model,
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'NewsArticleTranslationProvenance',
            'at',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_question_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastQuestionPatch extends ForecastQuestionPatch {
  @override
  final String? title;
  @override
  final BuiltList<String>? tags;
  @override
  final DateTime? closesAt;
  @override
  final String? resolutionCriteria;
  @override
  final ForecastResolver? resolver;

  factory _$ForecastQuestionPatch(
          [void Function(ForecastQuestionPatchBuilder)? updates]) =>
      (ForecastQuestionPatchBuilder()..update(updates))._build();

  _$ForecastQuestionPatch._(
      {this.title,
      this.tags,
      this.closesAt,
      this.resolutionCriteria,
      this.resolver})
      : super._();
  @override
  ForecastQuestionPatch rebuild(
          void Function(ForecastQuestionPatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastQuestionPatchBuilder toBuilder() =>
      ForecastQuestionPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastQuestionPatch &&
        title == other.title &&
        tags == other.tags &&
        closesAt == other.closesAt &&
        resolutionCriteria == other.resolutionCriteria &&
        resolver == other.resolver;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, closesAt.hashCode);
    _$hash = $jc(_$hash, resolutionCriteria.hashCode);
    _$hash = $jc(_$hash, resolver.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastQuestionPatch')
          ..add('title', title)
          ..add('tags', tags)
          ..add('closesAt', closesAt)
          ..add('resolutionCriteria', resolutionCriteria)
          ..add('resolver', resolver))
        .toString();
  }
}

class ForecastQuestionPatchBuilder
    implements Builder<ForecastQuestionPatch, ForecastQuestionPatchBuilder> {
  _$ForecastQuestionPatch? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  DateTime? _closesAt;
  DateTime? get closesAt => _$this._closesAt;
  set closesAt(DateTime? closesAt) => _$this._closesAt = closesAt;

  String? _resolutionCriteria;
  String? get resolutionCriteria => _$this._resolutionCriteria;
  set resolutionCriteria(String? resolutionCriteria) =>
      _$this._resolutionCriteria = resolutionCriteria;

  ForecastResolverBuilder? _resolver;
  ForecastResolverBuilder get resolver =>
      _$this._resolver ??= ForecastResolverBuilder();
  set resolver(ForecastResolverBuilder? resolver) =>
      _$this._resolver = resolver;

  ForecastQuestionPatchBuilder() {
    ForecastQuestionPatch._defaults(this);
  }

  ForecastQuestionPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _tags = $v.tags?.toBuilder();
      _closesAt = $v.closesAt;
      _resolutionCriteria = $v.resolutionCriteria;
      _resolver = $v.resolver?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastQuestionPatch other) {
    _$v = other as _$ForecastQuestionPatch;
  }

  @override
  void update(void Function(ForecastQuestionPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastQuestionPatch build() => _build();

  _$ForecastQuestionPatch _build() {
    _$ForecastQuestionPatch _$result;
    try {
      _$result = _$v ??
          _$ForecastQuestionPatch._(
            title: title,
            tags: _tags?.build(),
            closesAt: closesAt,
            resolutionCriteria: resolutionCriteria,
            resolver: _resolver?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'resolver';
        _resolver?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ForecastQuestionPatch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

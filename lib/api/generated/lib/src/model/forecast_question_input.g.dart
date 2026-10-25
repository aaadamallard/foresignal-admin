// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_question_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ForecastQuestionInputTypeEnum _$forecastQuestionInputTypeEnum_binary =
    const ForecastQuestionInputTypeEnum._('binary');
const ForecastQuestionInputTypeEnum _$forecastQuestionInputTypeEnum_multiple =
    const ForecastQuestionInputTypeEnum._('multiple');
const ForecastQuestionInputTypeEnum _$forecastQuestionInputTypeEnum_ordered =
    const ForecastQuestionInputTypeEnum._('ordered');
const ForecastQuestionInputTypeEnum _$forecastQuestionInputTypeEnum_numeric =
    const ForecastQuestionInputTypeEnum._('numeric');
const ForecastQuestionInputTypeEnum
_$forecastQuestionInputTypeEnum_unknownDefaultOpenApi =
    const ForecastQuestionInputTypeEnum._('unknownDefaultOpenApi');

ForecastQuestionInputTypeEnum _$forecastQuestionInputTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'binary':
      return _$forecastQuestionInputTypeEnum_binary;
    case 'multiple':
      return _$forecastQuestionInputTypeEnum_multiple;
    case 'ordered':
      return _$forecastQuestionInputTypeEnum_ordered;
    case 'numeric':
      return _$forecastQuestionInputTypeEnum_numeric;
    case 'unknownDefaultOpenApi':
      return _$forecastQuestionInputTypeEnum_unknownDefaultOpenApi;
    default:
      return _$forecastQuestionInputTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ForecastQuestionInputTypeEnum>
_$forecastQuestionInputTypeEnumValues = BuiltSet<ForecastQuestionInputTypeEnum>(
  const <ForecastQuestionInputTypeEnum>[
    _$forecastQuestionInputTypeEnum_binary,
    _$forecastQuestionInputTypeEnum_multiple,
    _$forecastQuestionInputTypeEnum_ordered,
    _$forecastQuestionInputTypeEnum_numeric,
    _$forecastQuestionInputTypeEnum_unknownDefaultOpenApi,
  ],
);

Serializer<ForecastQuestionInputTypeEnum>
_$forecastQuestionInputTypeEnumSerializer =
    _$ForecastQuestionInputTypeEnumSerializer();

class _$ForecastQuestionInputTypeEnumSerializer
    implements PrimitiveSerializer<ForecastQuestionInputTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'binary': 'binary',
    'multiple': 'multiple',
    'ordered': 'ordered',
    'numeric': 'numeric',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'binary': 'binary',
    'multiple': 'multiple',
    'ordered': 'ordered',
    'numeric': 'numeric',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastQuestionInputTypeEnum];
  @override
  final String wireName = 'ForecastQuestionInputTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ForecastQuestionInputTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ForecastQuestionInputTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ForecastQuestionInputTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ForecastQuestionInput extends ForecastQuestionInput {
  @override
  final String title;
  @override
  final ForecastQuestionInputTypeEnum type;
  @override
  final QuestionOutcomes? outcomes;
  @override
  final String resolutionCriteria;
  @override
  final ForecastResolver resolver;
  @override
  final DateTime? opensAt;
  @override
  final DateTime closesAt;
  @override
  final DateTime resolveBy;
  @override
  final String category;
  @override
  final BuiltList<String>? tags;
  @override
  final QuestionLinks? links;
  @override
  final String? dedupKey;
  @override
  final bool? private;

  factory _$ForecastQuestionInput([
    void Function(ForecastQuestionInputBuilder)? updates,
  ]) => (ForecastQuestionInputBuilder()..update(updates))._build();

  _$ForecastQuestionInput._({
    required this.title,
    required this.type,
    this.outcomes,
    required this.resolutionCriteria,
    required this.resolver,
    this.opensAt,
    required this.closesAt,
    required this.resolveBy,
    required this.category,
    this.tags,
    this.links,
    this.dedupKey,
    this.private,
  }) : super._();
  @override
  ForecastQuestionInput rebuild(
    void Function(ForecastQuestionInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ForecastQuestionInputBuilder toBuilder() =>
      ForecastQuestionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastQuestionInput &&
        title == other.title &&
        type == other.type &&
        outcomes == other.outcomes &&
        resolutionCriteria == other.resolutionCriteria &&
        resolver == other.resolver &&
        opensAt == other.opensAt &&
        closesAt == other.closesAt &&
        resolveBy == other.resolveBy &&
        category == other.category &&
        tags == other.tags &&
        links == other.links &&
        dedupKey == other.dedupKey &&
        private == other.private;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, outcomes.hashCode);
    _$hash = $jc(_$hash, resolutionCriteria.hashCode);
    _$hash = $jc(_$hash, resolver.hashCode);
    _$hash = $jc(_$hash, opensAt.hashCode);
    _$hash = $jc(_$hash, closesAt.hashCode);
    _$hash = $jc(_$hash, resolveBy.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, dedupKey.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastQuestionInput')
          ..add('title', title)
          ..add('type', type)
          ..add('outcomes', outcomes)
          ..add('resolutionCriteria', resolutionCriteria)
          ..add('resolver', resolver)
          ..add('opensAt', opensAt)
          ..add('closesAt', closesAt)
          ..add('resolveBy', resolveBy)
          ..add('category', category)
          ..add('tags', tags)
          ..add('links', links)
          ..add('dedupKey', dedupKey)
          ..add('private', private))
        .toString();
  }
}

class ForecastQuestionInputBuilder
    implements Builder<ForecastQuestionInput, ForecastQuestionInputBuilder> {
  _$ForecastQuestionInput? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ForecastQuestionInputTypeEnum? _type;
  ForecastQuestionInputTypeEnum? get type => _$this._type;
  set type(ForecastQuestionInputTypeEnum? type) => _$this._type = type;

  QuestionOutcomesBuilder? _outcomes;
  QuestionOutcomesBuilder get outcomes =>
      _$this._outcomes ??= QuestionOutcomesBuilder();
  set outcomes(QuestionOutcomesBuilder? outcomes) =>
      _$this._outcomes = outcomes;

  String? _resolutionCriteria;
  String? get resolutionCriteria => _$this._resolutionCriteria;
  set resolutionCriteria(String? resolutionCriteria) =>
      _$this._resolutionCriteria = resolutionCriteria;

  ForecastResolverBuilder? _resolver;
  ForecastResolverBuilder get resolver =>
      _$this._resolver ??= ForecastResolverBuilder();
  set resolver(ForecastResolverBuilder? resolver) =>
      _$this._resolver = resolver;

  DateTime? _opensAt;
  DateTime? get opensAt => _$this._opensAt;
  set opensAt(DateTime? opensAt) => _$this._opensAt = opensAt;

  DateTime? _closesAt;
  DateTime? get closesAt => _$this._closesAt;
  set closesAt(DateTime? closesAt) => _$this._closesAt = closesAt;

  DateTime? _resolveBy;
  DateTime? get resolveBy => _$this._resolveBy;
  set resolveBy(DateTime? resolveBy) => _$this._resolveBy = resolveBy;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  QuestionLinksBuilder? _links;
  QuestionLinksBuilder get links => _$this._links ??= QuestionLinksBuilder();
  set links(QuestionLinksBuilder? links) => _$this._links = links;

  String? _dedupKey;
  String? get dedupKey => _$this._dedupKey;
  set dedupKey(String? dedupKey) => _$this._dedupKey = dedupKey;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  ForecastQuestionInputBuilder() {
    ForecastQuestionInput._defaults(this);
  }

  ForecastQuestionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _type = $v.type;
      _outcomes = $v.outcomes?.toBuilder();
      _resolutionCriteria = $v.resolutionCriteria;
      _resolver = $v.resolver.toBuilder();
      _opensAt = $v.opensAt;
      _closesAt = $v.closesAt;
      _resolveBy = $v.resolveBy;
      _category = $v.category;
      _tags = $v.tags?.toBuilder();
      _links = $v.links?.toBuilder();
      _dedupKey = $v.dedupKey;
      _private = $v.private;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastQuestionInput other) {
    _$v = other as _$ForecastQuestionInput;
  }

  @override
  void update(void Function(ForecastQuestionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastQuestionInput build() => _build();

  _$ForecastQuestionInput _build() {
    _$ForecastQuestionInput _$result;
    try {
      _$result =
          _$v ??
          _$ForecastQuestionInput._(
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'ForecastQuestionInput',
              'title',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ForecastQuestionInput',
              'type',
            ),
            outcomes: _outcomes?.build(),
            resolutionCriteria: BuiltValueNullFieldError.checkNotNull(
              resolutionCriteria,
              r'ForecastQuestionInput',
              'resolutionCriteria',
            ),
            resolver: resolver.build(),
            opensAt: opensAt,
            closesAt: BuiltValueNullFieldError.checkNotNull(
              closesAt,
              r'ForecastQuestionInput',
              'closesAt',
            ),
            resolveBy: BuiltValueNullFieldError.checkNotNull(
              resolveBy,
              r'ForecastQuestionInput',
              'resolveBy',
            ),
            category: BuiltValueNullFieldError.checkNotNull(
              category,
              r'ForecastQuestionInput',
              'category',
            ),
            tags: _tags?.build(),
            links: _links?.build(),
            dedupKey: dedupKey,
            private: private,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'outcomes';
        _outcomes?.build();

        _$failedField = 'resolver';
        resolver.build();

        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ForecastQuestionInput',
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

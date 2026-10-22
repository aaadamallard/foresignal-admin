// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_evaluation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastEvaluationRequest extends ForecastEvaluationRequest {
  @override
  final String forecasterId;
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final BuiltList<String>? categories;
  @override
  final int? maxQuestions;

  factory _$ForecastEvaluationRequest([
    void Function(ForecastEvaluationRequestBuilder)? updates,
  ]) => (ForecastEvaluationRequestBuilder()..update(updates))._build();

  _$ForecastEvaluationRequest._({
    required this.forecasterId,
    required this.from,
    required this.to,
    this.categories,
    this.maxQuestions,
  }) : super._();
  @override
  ForecastEvaluationRequest rebuild(
    void Function(ForecastEvaluationRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ForecastEvaluationRequestBuilder toBuilder() =>
      ForecastEvaluationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastEvaluationRequest &&
        forecasterId == other.forecasterId &&
        from == other.from &&
        to == other.to &&
        categories == other.categories &&
        maxQuestions == other.maxQuestions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, forecasterId.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jc(_$hash, maxQuestions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastEvaluationRequest')
          ..add('forecasterId', forecasterId)
          ..add('from', from)
          ..add('to', to)
          ..add('categories', categories)
          ..add('maxQuestions', maxQuestions))
        .toString();
  }
}

class ForecastEvaluationRequestBuilder
    implements
        Builder<ForecastEvaluationRequest, ForecastEvaluationRequestBuilder> {
  _$ForecastEvaluationRequest? _$v;

  String? _forecasterId;
  String? get forecasterId => _$this._forecasterId;
  set forecasterId(String? forecasterId) => _$this._forecasterId = forecasterId;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  ListBuilder<String>? _categories;
  ListBuilder<String> get categories =>
      _$this._categories ??= ListBuilder<String>();
  set categories(ListBuilder<String>? categories) =>
      _$this._categories = categories;

  int? _maxQuestions;
  int? get maxQuestions => _$this._maxQuestions;
  set maxQuestions(int? maxQuestions) => _$this._maxQuestions = maxQuestions;

  ForecastEvaluationRequestBuilder() {
    ForecastEvaluationRequest._defaults(this);
  }

  ForecastEvaluationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _forecasterId = $v.forecasterId;
      _from = $v.from;
      _to = $v.to;
      _categories = $v.categories?.toBuilder();
      _maxQuestions = $v.maxQuestions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastEvaluationRequest other) {
    _$v = other as _$ForecastEvaluationRequest;
  }

  @override
  void update(void Function(ForecastEvaluationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastEvaluationRequest build() => _build();

  _$ForecastEvaluationRequest _build() {
    _$ForecastEvaluationRequest _$result;
    try {
      _$result =
          _$v ??
          _$ForecastEvaluationRequest._(
            forecasterId: BuiltValueNullFieldError.checkNotNull(
              forecasterId,
              r'ForecastEvaluationRequest',
              'forecasterId',
            ),
            from: BuiltValueNullFieldError.checkNotNull(
              from,
              r'ForecastEvaluationRequest',
              'from',
            ),
            to: BuiltValueNullFieldError.checkNotNull(
              to,
              r'ForecastEvaluationRequest',
              'to',
            ),
            categories: _categories?.build(),
            maxQuestions: maxQuestions,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ForecastEvaluationRequest',
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

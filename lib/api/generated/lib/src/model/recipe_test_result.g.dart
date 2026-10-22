// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_test_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecipeTestResult extends RecipeTestResult {
  @override
  final String recipeId;
  @override
  final int? recipeVersion;
  @override
  final int fromSeq;
  @override
  final int toSeq;
  @override
  final BuiltList<IntelligenceEvent> events;
  @override
  final bool? truncated;

  factory _$RecipeTestResult([
    void Function(RecipeTestResultBuilder)? updates,
  ]) => (RecipeTestResultBuilder()..update(updates))._build();

  _$RecipeTestResult._({
    required this.recipeId,
    this.recipeVersion,
    required this.fromSeq,
    required this.toSeq,
    required this.events,
    this.truncated,
  }) : super._();
  @override
  RecipeTestResult rebuild(void Function(RecipeTestResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecipeTestResultBuilder toBuilder() =>
      RecipeTestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecipeTestResult &&
        recipeId == other.recipeId &&
        recipeVersion == other.recipeVersion &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq &&
        events == other.events &&
        truncated == other.truncated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, recipeId.hashCode);
    _$hash = $jc(_$hash, recipeVersion.hashCode);
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecipeTestResult')
          ..add('recipeId', recipeId)
          ..add('recipeVersion', recipeVersion)
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq)
          ..add('events', events)
          ..add('truncated', truncated))
        .toString();
  }
}

class RecipeTestResultBuilder
    implements Builder<RecipeTestResult, RecipeTestResultBuilder> {
  _$RecipeTestResult? _$v;

  String? _recipeId;
  String? get recipeId => _$this._recipeId;
  set recipeId(String? recipeId) => _$this._recipeId = recipeId;

  int? _recipeVersion;
  int? get recipeVersion => _$this._recipeVersion;
  set recipeVersion(int? recipeVersion) =>
      _$this._recipeVersion = recipeVersion;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  ListBuilder<IntelligenceEvent>? _events;
  ListBuilder<IntelligenceEvent> get events =>
      _$this._events ??= ListBuilder<IntelligenceEvent>();
  set events(ListBuilder<IntelligenceEvent>? events) => _$this._events = events;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  RecipeTestResultBuilder() {
    RecipeTestResult._defaults(this);
  }

  RecipeTestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recipeId = $v.recipeId;
      _recipeVersion = $v.recipeVersion;
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _events = $v.events.toBuilder();
      _truncated = $v.truncated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecipeTestResult other) {
    _$v = other as _$RecipeTestResult;
  }

  @override
  void update(void Function(RecipeTestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecipeTestResult build() => _build();

  _$RecipeTestResult _build() {
    _$RecipeTestResult _$result;
    try {
      _$result =
          _$v ??
          _$RecipeTestResult._(
            recipeId: BuiltValueNullFieldError.checkNotNull(
              recipeId,
              r'RecipeTestResult',
              'recipeId',
            ),
            recipeVersion: recipeVersion,
            fromSeq: BuiltValueNullFieldError.checkNotNull(
              fromSeq,
              r'RecipeTestResult',
              'fromSeq',
            ),
            toSeq: BuiltValueNullFieldError.checkNotNull(
              toSeq,
              r'RecipeTestResult',
              'toSeq',
            ),
            events: events.build(),
            truncated: truncated,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'events';
        events.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RecipeTestResult',
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

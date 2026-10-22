// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_evaluation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalystEvaluation extends AnalystEvaluation {
  @override
  final DateTime since;
  @override
  final BuiltList<AnalystEvaluationProfilesInner> profiles;

  factory _$AnalystEvaluation([
    void Function(AnalystEvaluationBuilder)? updates,
  ]) => (AnalystEvaluationBuilder()..update(updates))._build();

  _$AnalystEvaluation._({required this.since, required this.profiles})
    : super._();
  @override
  AnalystEvaluation rebuild(void Function(AnalystEvaluationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalystEvaluationBuilder toBuilder() =>
      AnalystEvaluationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystEvaluation &&
        since == other.since &&
        profiles == other.profiles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, since.hashCode);
    _$hash = $jc(_$hash, profiles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalystEvaluation')
          ..add('since', since)
          ..add('profiles', profiles))
        .toString();
  }
}

class AnalystEvaluationBuilder
    implements Builder<AnalystEvaluation, AnalystEvaluationBuilder> {
  _$AnalystEvaluation? _$v;

  DateTime? _since;
  DateTime? get since => _$this._since;
  set since(DateTime? since) => _$this._since = since;

  ListBuilder<AnalystEvaluationProfilesInner>? _profiles;
  ListBuilder<AnalystEvaluationProfilesInner> get profiles =>
      _$this._profiles ??= ListBuilder<AnalystEvaluationProfilesInner>();
  set profiles(ListBuilder<AnalystEvaluationProfilesInner>? profiles) =>
      _$this._profiles = profiles;

  AnalystEvaluationBuilder() {
    AnalystEvaluation._defaults(this);
  }

  AnalystEvaluationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _since = $v.since;
      _profiles = $v.profiles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystEvaluation other) {
    _$v = other as _$AnalystEvaluation;
  }

  @override
  void update(void Function(AnalystEvaluationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystEvaluation build() => _build();

  _$AnalystEvaluation _build() {
    _$AnalystEvaluation _$result;
    try {
      _$result =
          _$v ??
          _$AnalystEvaluation._(
            since: BuiltValueNullFieldError.checkNotNull(
              since,
              r'AnalystEvaluation',
              'since',
            ),
            profiles: profiles.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profiles';
        profiles.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnalystEvaluation',
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

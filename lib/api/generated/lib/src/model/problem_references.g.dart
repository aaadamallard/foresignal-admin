// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_references.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProblemReferences extends ProblemReferences {
  @override
  final BuiltList<String>? rules;
  @override
  final BuiltList<String>? views;
  @override
  final BuiltList<String>? briefings;

  factory _$ProblemReferences([
    void Function(ProblemReferencesBuilder)? updates,
  ]) => (ProblemReferencesBuilder()..update(updates))._build();

  _$ProblemReferences._({this.rules, this.views, this.briefings}) : super._();
  @override
  ProblemReferences rebuild(void Function(ProblemReferencesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProblemReferencesBuilder toBuilder() =>
      ProblemReferencesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProblemReferences &&
        rules == other.rules &&
        views == other.views &&
        briefings == other.briefings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rules.hashCode);
    _$hash = $jc(_$hash, views.hashCode);
    _$hash = $jc(_$hash, briefings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProblemReferences')
          ..add('rules', rules)
          ..add('views', views)
          ..add('briefings', briefings))
        .toString();
  }
}

class ProblemReferencesBuilder
    implements Builder<ProblemReferences, ProblemReferencesBuilder> {
  _$ProblemReferences? _$v;

  ListBuilder<String>? _rules;
  ListBuilder<String> get rules => _$this._rules ??= ListBuilder<String>();
  set rules(ListBuilder<String>? rules) => _$this._rules = rules;

  ListBuilder<String>? _views;
  ListBuilder<String> get views => _$this._views ??= ListBuilder<String>();
  set views(ListBuilder<String>? views) => _$this._views = views;

  ListBuilder<String>? _briefings;
  ListBuilder<String> get briefings =>
      _$this._briefings ??= ListBuilder<String>();
  set briefings(ListBuilder<String>? briefings) =>
      _$this._briefings = briefings;

  ProblemReferencesBuilder() {
    ProblemReferences._defaults(this);
  }

  ProblemReferencesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rules = $v.rules?.toBuilder();
      _views = $v.views?.toBuilder();
      _briefings = $v.briefings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProblemReferences other) {
    _$v = other as _$ProblemReferences;
  }

  @override
  void update(void Function(ProblemReferencesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProblemReferences build() => _build();

  _$ProblemReferences _build() {
    _$ProblemReferences _$result;
    try {
      _$result =
          _$v ??
          _$ProblemReferences._(
            rules: _rules?.build(),
            views: _views?.build(),
            briefings: _briefings?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rules';
        _rules?.build();
        _$failedField = 'views';
        _views?.build();
        _$failedField = 'briefings';
        _briefings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProblemReferences',
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

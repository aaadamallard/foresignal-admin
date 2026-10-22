// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infra_rules.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InfraRules extends InfraRules {
  @override
  final String? version;
  @override
  final BuiltList<InfraRulesRulesInner> rules;

  factory _$InfraRules([void Function(InfraRulesBuilder)? updates]) =>
      (InfraRulesBuilder()..update(updates))._build();

  _$InfraRules._({this.version, required this.rules}) : super._();
  @override
  InfraRules rebuild(void Function(InfraRulesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfraRulesBuilder toBuilder() => InfraRulesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfraRules &&
        version == other.version &&
        rules == other.rules;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, rules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InfraRules')
          ..add('version', version)
          ..add('rules', rules))
        .toString();
  }
}

class InfraRulesBuilder implements Builder<InfraRules, InfraRulesBuilder> {
  _$InfraRules? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  ListBuilder<InfraRulesRulesInner>? _rules;
  ListBuilder<InfraRulesRulesInner> get rules =>
      _$this._rules ??= ListBuilder<InfraRulesRulesInner>();
  set rules(ListBuilder<InfraRulesRulesInner>? rules) => _$this._rules = rules;

  InfraRulesBuilder() {
    InfraRules._defaults(this);
  }

  InfraRulesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _rules = $v.rules.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfraRules other) {
    _$v = other as _$InfraRules;
  }

  @override
  void update(void Function(InfraRulesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfraRules build() => _build();

  _$InfraRules _build() {
    _$InfraRules _$result;
    try {
      _$result = _$v ??
          _$InfraRules._(
            version: version,
            rules: rules.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rules';
        rules.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InfraRules', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

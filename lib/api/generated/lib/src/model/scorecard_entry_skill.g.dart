// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scorecard_entry_skill.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScorecardEntrySkill extends ScorecardEntrySkill {
  @override
  final num value;
  @override
  final String reference;
  @override
  final int nShared;
  @override
  final StatInterval? interval;

  factory _$ScorecardEntrySkill([
    void Function(ScorecardEntrySkillBuilder)? updates,
  ]) => (ScorecardEntrySkillBuilder()..update(updates))._build();

  _$ScorecardEntrySkill._({
    required this.value,
    required this.reference,
    required this.nShared,
    this.interval,
  }) : super._();
  @override
  ScorecardEntrySkill rebuild(
    void Function(ScorecardEntrySkillBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ScorecardEntrySkillBuilder toBuilder() =>
      ScorecardEntrySkillBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScorecardEntrySkill &&
        value == other.value &&
        reference == other.reference &&
        nShared == other.nShared &&
        interval == other.interval;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, reference.hashCode);
    _$hash = $jc(_$hash, nShared.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScorecardEntrySkill')
          ..add('value', value)
          ..add('reference', reference)
          ..add('nShared', nShared)
          ..add('interval', interval))
        .toString();
  }
}

class ScorecardEntrySkillBuilder
    implements Builder<ScorecardEntrySkill, ScorecardEntrySkillBuilder> {
  _$ScorecardEntrySkill? _$v;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  String? _reference;
  String? get reference => _$this._reference;
  set reference(String? reference) => _$this._reference = reference;

  int? _nShared;
  int? get nShared => _$this._nShared;
  set nShared(int? nShared) => _$this._nShared = nShared;

  StatIntervalBuilder? _interval;
  StatIntervalBuilder get interval =>
      _$this._interval ??= StatIntervalBuilder();
  set interval(StatIntervalBuilder? interval) => _$this._interval = interval;

  ScorecardEntrySkillBuilder() {
    ScorecardEntrySkill._defaults(this);
  }

  ScorecardEntrySkillBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _reference = $v.reference;
      _nShared = $v.nShared;
      _interval = $v.interval?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScorecardEntrySkill other) {
    _$v = other as _$ScorecardEntrySkill;
  }

  @override
  void update(void Function(ScorecardEntrySkillBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScorecardEntrySkill build() => _build();

  _$ScorecardEntrySkill _build() {
    _$ScorecardEntrySkill _$result;
    try {
      _$result =
          _$v ??
          _$ScorecardEntrySkill._(
            value: BuiltValueNullFieldError.checkNotNull(
              value,
              r'ScorecardEntrySkill',
              'value',
            ),
            reference: BuiltValueNullFieldError.checkNotNull(
              reference,
              r'ScorecardEntrySkill',
              'reference',
            ),
            nShared: BuiltValueNullFieldError.checkNotNull(
              nShared,
              r'ScorecardEntrySkill',
              'nShared',
            ),
            interval: _interval?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interval';
        _interval?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ScorecardEntrySkill',
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

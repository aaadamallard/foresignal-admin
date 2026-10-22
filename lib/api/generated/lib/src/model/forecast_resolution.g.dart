// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_resolution.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastResolution extends ForecastResolution {
  @override
  final String? outcome;
  @override
  final num? value;
  @override
  final DateTime resolvedAt;
  @override
  final String resolvedBy;
  @override
  final bool? early;
  @override
  final DateTime? asOf;
  @override
  final BuiltList<String> evidence;
  @override
  final String? note;
  @override
  final BuiltList<Caveat>? caveats;
  @override
  final String? manifestId;

  factory _$ForecastResolution([
    void Function(ForecastResolutionBuilder)? updates,
  ]) => (ForecastResolutionBuilder()..update(updates))._build();

  _$ForecastResolution._({
    this.outcome,
    this.value,
    required this.resolvedAt,
    required this.resolvedBy,
    this.early,
    this.asOf,
    required this.evidence,
    this.note,
    this.caveats,
    this.manifestId,
  }) : super._();
  @override
  ForecastResolution rebuild(
    void Function(ForecastResolutionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ForecastResolutionBuilder toBuilder() =>
      ForecastResolutionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastResolution &&
        outcome == other.outcome &&
        value == other.value &&
        resolvedAt == other.resolvedAt &&
        resolvedBy == other.resolvedBy &&
        early == other.early &&
        asOf == other.asOf &&
        evidence == other.evidence &&
        note == other.note &&
        caveats == other.caveats &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, outcome.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, resolvedAt.hashCode);
    _$hash = $jc(_$hash, resolvedBy.hashCode);
    _$hash = $jc(_$hash, early.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, evidence.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastResolution')
          ..add('outcome', outcome)
          ..add('value', value)
          ..add('resolvedAt', resolvedAt)
          ..add('resolvedBy', resolvedBy)
          ..add('early', early)
          ..add('asOf', asOf)
          ..add('evidence', evidence)
          ..add('note', note)
          ..add('caveats', caveats)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class ForecastResolutionBuilder
    implements Builder<ForecastResolution, ForecastResolutionBuilder> {
  _$ForecastResolution? _$v;

  String? _outcome;
  String? get outcome => _$this._outcome;
  set outcome(String? outcome) => _$this._outcome = outcome;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  DateTime? _resolvedAt;
  DateTime? get resolvedAt => _$this._resolvedAt;
  set resolvedAt(DateTime? resolvedAt) => _$this._resolvedAt = resolvedAt;

  String? _resolvedBy;
  String? get resolvedBy => _$this._resolvedBy;
  set resolvedBy(String? resolvedBy) => _$this._resolvedBy = resolvedBy;

  bool? _early;
  bool? get early => _$this._early;
  set early(bool? early) => _$this._early = early;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  ListBuilder<String>? _evidence;
  ListBuilder<String> get evidence =>
      _$this._evidence ??= ListBuilder<String>();
  set evidence(ListBuilder<String>? evidence) => _$this._evidence = evidence;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  ForecastResolutionBuilder() {
    ForecastResolution._defaults(this);
  }

  ForecastResolutionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _outcome = $v.outcome;
      _value = $v.value;
      _resolvedAt = $v.resolvedAt;
      _resolvedBy = $v.resolvedBy;
      _early = $v.early;
      _asOf = $v.asOf;
      _evidence = $v.evidence.toBuilder();
      _note = $v.note;
      _caveats = $v.caveats?.toBuilder();
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastResolution other) {
    _$v = other as _$ForecastResolution;
  }

  @override
  void update(void Function(ForecastResolutionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastResolution build() => _build();

  _$ForecastResolution _build() {
    _$ForecastResolution _$result;
    try {
      _$result =
          _$v ??
          _$ForecastResolution._(
            outcome: outcome,
            value: value,
            resolvedAt: BuiltValueNullFieldError.checkNotNull(
              resolvedAt,
              r'ForecastResolution',
              'resolvedAt',
            ),
            resolvedBy: BuiltValueNullFieldError.checkNotNull(
              resolvedBy,
              r'ForecastResolution',
              'resolvedBy',
            ),
            early: early,
            asOf: asOf,
            evidence: evidence.build(),
            note: note,
            caveats: _caveats?.build(),
            manifestId: manifestId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'evidence';
        evidence.build();

        _$failedField = 'caveats';
        _caveats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ForecastResolution',
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

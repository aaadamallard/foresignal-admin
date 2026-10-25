// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_test_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrecursorTestResultPermutationsEnum
_$precursorTestResultPermutationsEnum_number200 =
    const PrecursorTestResultPermutationsEnum._('number200');
const PrecursorTestResultPermutationsEnum
_$precursorTestResultPermutationsEnum_unknownDefaultOpenApi =
    const PrecursorTestResultPermutationsEnum._('unknownDefaultOpenApi');

PrecursorTestResultPermutationsEnum
_$precursorTestResultPermutationsEnumValueOf(String name) {
  switch (name) {
    case 'number200':
      return _$precursorTestResultPermutationsEnum_number200;
    case 'unknownDefaultOpenApi':
      return _$precursorTestResultPermutationsEnum_unknownDefaultOpenApi;
    default:
      return _$precursorTestResultPermutationsEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PrecursorTestResultPermutationsEnum>
_$precursorTestResultPermutationsEnumValues =
    BuiltSet<PrecursorTestResultPermutationsEnum>(
      const <PrecursorTestResultPermutationsEnum>[
        _$precursorTestResultPermutationsEnum_number200,
        _$precursorTestResultPermutationsEnum_unknownDefaultOpenApi,
      ],
    );

const PrecursorTestResultVerdictEnum
_$precursorTestResultVerdictEnum_insufficient =
    const PrecursorTestResultVerdictEnum._('insufficient');
const PrecursorTestResultVerdictEnum
_$precursorTestResultVerdictEnum_noEvidenceOfPrecedence =
    const PrecursorTestResultVerdictEnum._('noEvidenceOfPrecedence');
const PrecursorTestResultVerdictEnum _$precursorTestResultVerdictEnum_weak =
    const PrecursorTestResultVerdictEnum._('weak');
const PrecursorTestResultVerdictEnum _$precursorTestResultVerdictEnum_notable =
    const PrecursorTestResultVerdictEnum._('notable');
const PrecursorTestResultVerdictEnum
_$precursorTestResultVerdictEnum_unknownDefaultOpenApi =
    const PrecursorTestResultVerdictEnum._('unknownDefaultOpenApi');

PrecursorTestResultVerdictEnum _$precursorTestResultVerdictEnumValueOf(
  String name,
) {
  switch (name) {
    case 'insufficient':
      return _$precursorTestResultVerdictEnum_insufficient;
    case 'noEvidenceOfPrecedence':
      return _$precursorTestResultVerdictEnum_noEvidenceOfPrecedence;
    case 'weak':
      return _$precursorTestResultVerdictEnum_weak;
    case 'notable':
      return _$precursorTestResultVerdictEnum_notable;
    case 'unknownDefaultOpenApi':
      return _$precursorTestResultVerdictEnum_unknownDefaultOpenApi;
    default:
      return _$precursorTestResultVerdictEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PrecursorTestResultVerdictEnum>
_$precursorTestResultVerdictEnumValues =
    BuiltSet<PrecursorTestResultVerdictEnum>(
      const <PrecursorTestResultVerdictEnum>[
        _$precursorTestResultVerdictEnum_insufficient,
        _$precursorTestResultVerdictEnum_noEvidenceOfPrecedence,
        _$precursorTestResultVerdictEnum_weak,
        _$precursorTestResultVerdictEnum_notable,
        _$precursorTestResultVerdictEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<PrecursorTestResultPermutationsEnum>
_$precursorTestResultPermutationsEnumSerializer =
    _$PrecursorTestResultPermutationsEnumSerializer();
Serializer<PrecursorTestResultVerdictEnum>
_$precursorTestResultVerdictEnumSerializer =
    _$PrecursorTestResultVerdictEnumSerializer();

class _$PrecursorTestResultPermutationsEnumSerializer
    implements PrimitiveSerializer<PrecursorTestResultPermutationsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number200': 200,
    'unknownDefaultOpenApi': 11184809,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    200: 'number200',
    11184809: 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PrecursorTestResultPermutationsEnum,
  ];
  @override
  final String wireName = 'PrecursorTestResultPermutationsEnum';

  @override
  Object serialize(
    Serializers serializers,
    PrecursorTestResultPermutationsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrecursorTestResultPermutationsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrecursorTestResultPermutationsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PrecursorTestResultVerdictEnumSerializer
    implements PrimitiveSerializer<PrecursorTestResultVerdictEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'insufficient': 'insufficient',
    'noEvidenceOfPrecedence': 'no-evidence-of-precedence',
    'weak': 'weak',
    'notable': 'notable',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'insufficient': 'insufficient',
    'no-evidence-of-precedence': 'noEvidenceOfPrecedence',
    'weak': 'weak',
    'notable': 'notable',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PrecursorTestResultVerdictEnum];
  @override
  final String wireName = 'PrecursorTestResultVerdictEnum';

  @override
  Object serialize(
    Serializers serializers,
    PrecursorTestResultVerdictEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrecursorTestResultVerdictEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrecursorTestResultVerdictEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PrecursorTestResult extends PrecursorTestResult {
  @override
  final String testerVersion;
  @override
  final int nAntecedent;
  @override
  final int? nConsequent;
  @override
  final int hits;
  @override
  final num? hitRate;
  @override
  final PrecursorTestResultHitRateCi? hitRateCi;
  @override
  final PrecursorTestResultLag? lag;
  @override
  final num? baseRate;
  @override
  final num? lift;
  @override
  final num? pValue;
  @override
  final PrecursorTestResultPermutationsEnum? permutations;
  @override
  final String? seed;
  @override
  final PrecursorTestResultReverse? reverse;
  @override
  final bool? coOccurrenceNotPrecedence;
  @override
  final PrecursorTestResultVerdictEnum verdict;
  @override
  final PrecursorTestResultMultipleTesting? multipleTesting;
  @override
  final String statement;
  @override
  final BuiltList<BacktestCaveat> caveats;

  factory _$PrecursorTestResult([
    void Function(PrecursorTestResultBuilder)? updates,
  ]) => (PrecursorTestResultBuilder()..update(updates))._build();

  _$PrecursorTestResult._({
    required this.testerVersion,
    required this.nAntecedent,
    this.nConsequent,
    required this.hits,
    this.hitRate,
    this.hitRateCi,
    this.lag,
    this.baseRate,
    this.lift,
    this.pValue,
    this.permutations,
    this.seed,
    this.reverse,
    this.coOccurrenceNotPrecedence,
    required this.verdict,
    this.multipleTesting,
    required this.statement,
    required this.caveats,
  }) : super._();
  @override
  PrecursorTestResult rebuild(
    void Function(PrecursorTestResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PrecursorTestResultBuilder toBuilder() =>
      PrecursorTestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorTestResult &&
        testerVersion == other.testerVersion &&
        nAntecedent == other.nAntecedent &&
        nConsequent == other.nConsequent &&
        hits == other.hits &&
        hitRate == other.hitRate &&
        hitRateCi == other.hitRateCi &&
        lag == other.lag &&
        baseRate == other.baseRate &&
        lift == other.lift &&
        pValue == other.pValue &&
        permutations == other.permutations &&
        seed == other.seed &&
        reverse == other.reverse &&
        coOccurrenceNotPrecedence == other.coOccurrenceNotPrecedence &&
        verdict == other.verdict &&
        multipleTesting == other.multipleTesting &&
        statement == other.statement &&
        caveats == other.caveats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, testerVersion.hashCode);
    _$hash = $jc(_$hash, nAntecedent.hashCode);
    _$hash = $jc(_$hash, nConsequent.hashCode);
    _$hash = $jc(_$hash, hits.hashCode);
    _$hash = $jc(_$hash, hitRate.hashCode);
    _$hash = $jc(_$hash, hitRateCi.hashCode);
    _$hash = $jc(_$hash, lag.hashCode);
    _$hash = $jc(_$hash, baseRate.hashCode);
    _$hash = $jc(_$hash, lift.hashCode);
    _$hash = $jc(_$hash, pValue.hashCode);
    _$hash = $jc(_$hash, permutations.hashCode);
    _$hash = $jc(_$hash, seed.hashCode);
    _$hash = $jc(_$hash, reverse.hashCode);
    _$hash = $jc(_$hash, coOccurrenceNotPrecedence.hashCode);
    _$hash = $jc(_$hash, verdict.hashCode);
    _$hash = $jc(_$hash, multipleTesting.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorTestResult')
          ..add('testerVersion', testerVersion)
          ..add('nAntecedent', nAntecedent)
          ..add('nConsequent', nConsequent)
          ..add('hits', hits)
          ..add('hitRate', hitRate)
          ..add('hitRateCi', hitRateCi)
          ..add('lag', lag)
          ..add('baseRate', baseRate)
          ..add('lift', lift)
          ..add('pValue', pValue)
          ..add('permutations', permutations)
          ..add('seed', seed)
          ..add('reverse', reverse)
          ..add('coOccurrenceNotPrecedence', coOccurrenceNotPrecedence)
          ..add('verdict', verdict)
          ..add('multipleTesting', multipleTesting)
          ..add('statement', statement)
          ..add('caveats', caveats))
        .toString();
  }
}

class PrecursorTestResultBuilder
    implements Builder<PrecursorTestResult, PrecursorTestResultBuilder> {
  _$PrecursorTestResult? _$v;

  String? _testerVersion;
  String? get testerVersion => _$this._testerVersion;
  set testerVersion(String? testerVersion) =>
      _$this._testerVersion = testerVersion;

  int? _nAntecedent;
  int? get nAntecedent => _$this._nAntecedent;
  set nAntecedent(int? nAntecedent) => _$this._nAntecedent = nAntecedent;

  int? _nConsequent;
  int? get nConsequent => _$this._nConsequent;
  set nConsequent(int? nConsequent) => _$this._nConsequent = nConsequent;

  int? _hits;
  int? get hits => _$this._hits;
  set hits(int? hits) => _$this._hits = hits;

  num? _hitRate;
  num? get hitRate => _$this._hitRate;
  set hitRate(num? hitRate) => _$this._hitRate = hitRate;

  PrecursorTestResultHitRateCiBuilder? _hitRateCi;
  PrecursorTestResultHitRateCiBuilder get hitRateCi =>
      _$this._hitRateCi ??= PrecursorTestResultHitRateCiBuilder();
  set hitRateCi(PrecursorTestResultHitRateCiBuilder? hitRateCi) =>
      _$this._hitRateCi = hitRateCi;

  PrecursorTestResultLagBuilder? _lag;
  PrecursorTestResultLagBuilder get lag =>
      _$this._lag ??= PrecursorTestResultLagBuilder();
  set lag(PrecursorTestResultLagBuilder? lag) => _$this._lag = lag;

  num? _baseRate;
  num? get baseRate => _$this._baseRate;
  set baseRate(num? baseRate) => _$this._baseRate = baseRate;

  num? _lift;
  num? get lift => _$this._lift;
  set lift(num? lift) => _$this._lift = lift;

  num? _pValue;
  num? get pValue => _$this._pValue;
  set pValue(num? pValue) => _$this._pValue = pValue;

  PrecursorTestResultPermutationsEnum? _permutations;
  PrecursorTestResultPermutationsEnum? get permutations => _$this._permutations;
  set permutations(PrecursorTestResultPermutationsEnum? permutations) =>
      _$this._permutations = permutations;

  String? _seed;
  String? get seed => _$this._seed;
  set seed(String? seed) => _$this._seed = seed;

  PrecursorTestResultReverseBuilder? _reverse;
  PrecursorTestResultReverseBuilder get reverse =>
      _$this._reverse ??= PrecursorTestResultReverseBuilder();
  set reverse(PrecursorTestResultReverseBuilder? reverse) =>
      _$this._reverse = reverse;

  bool? _coOccurrenceNotPrecedence;
  bool? get coOccurrenceNotPrecedence => _$this._coOccurrenceNotPrecedence;
  set coOccurrenceNotPrecedence(bool? coOccurrenceNotPrecedence) =>
      _$this._coOccurrenceNotPrecedence = coOccurrenceNotPrecedence;

  PrecursorTestResultVerdictEnum? _verdict;
  PrecursorTestResultVerdictEnum? get verdict => _$this._verdict;
  set verdict(PrecursorTestResultVerdictEnum? verdict) =>
      _$this._verdict = verdict;

  PrecursorTestResultMultipleTestingBuilder? _multipleTesting;
  PrecursorTestResultMultipleTestingBuilder get multipleTesting =>
      _$this._multipleTesting ??= PrecursorTestResultMultipleTestingBuilder();
  set multipleTesting(
    PrecursorTestResultMultipleTestingBuilder? multipleTesting,
  ) => _$this._multipleTesting = multipleTesting;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  ListBuilder<BacktestCaveat>? _caveats;
  ListBuilder<BacktestCaveat> get caveats =>
      _$this._caveats ??= ListBuilder<BacktestCaveat>();
  set caveats(ListBuilder<BacktestCaveat>? caveats) =>
      _$this._caveats = caveats;

  PrecursorTestResultBuilder() {
    PrecursorTestResult._defaults(this);
  }

  PrecursorTestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _testerVersion = $v.testerVersion;
      _nAntecedent = $v.nAntecedent;
      _nConsequent = $v.nConsequent;
      _hits = $v.hits;
      _hitRate = $v.hitRate;
      _hitRateCi = $v.hitRateCi?.toBuilder();
      _lag = $v.lag?.toBuilder();
      _baseRate = $v.baseRate;
      _lift = $v.lift;
      _pValue = $v.pValue;
      _permutations = $v.permutations;
      _seed = $v.seed;
      _reverse = $v.reverse?.toBuilder();
      _coOccurrenceNotPrecedence = $v.coOccurrenceNotPrecedence;
      _verdict = $v.verdict;
      _multipleTesting = $v.multipleTesting?.toBuilder();
      _statement = $v.statement;
      _caveats = $v.caveats.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorTestResult other) {
    _$v = other as _$PrecursorTestResult;
  }

  @override
  void update(void Function(PrecursorTestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorTestResult build() => _build();

  _$PrecursorTestResult _build() {
    _$PrecursorTestResult _$result;
    try {
      _$result =
          _$v ??
          _$PrecursorTestResult._(
            testerVersion: BuiltValueNullFieldError.checkNotNull(
              testerVersion,
              r'PrecursorTestResult',
              'testerVersion',
            ),
            nAntecedent: BuiltValueNullFieldError.checkNotNull(
              nAntecedent,
              r'PrecursorTestResult',
              'nAntecedent',
            ),
            nConsequent: nConsequent,
            hits: BuiltValueNullFieldError.checkNotNull(
              hits,
              r'PrecursorTestResult',
              'hits',
            ),
            hitRate: hitRate,
            hitRateCi: _hitRateCi?.build(),
            lag: _lag?.build(),
            baseRate: baseRate,
            lift: lift,
            pValue: pValue,
            permutations: permutations,
            seed: seed,
            reverse: _reverse?.build(),
            coOccurrenceNotPrecedence: coOccurrenceNotPrecedence,
            verdict: BuiltValueNullFieldError.checkNotNull(
              verdict,
              r'PrecursorTestResult',
              'verdict',
            ),
            multipleTesting: _multipleTesting?.build(),
            statement: BuiltValueNullFieldError.checkNotNull(
              statement,
              r'PrecursorTestResult',
              'statement',
            ),
            caveats: caveats.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hitRateCi';
        _hitRateCi?.build();
        _$failedField = 'lag';
        _lag?.build();

        _$failedField = 'reverse';
        _reverse?.build();

        _$failedField = 'multipleTesting';
        _multipleTesting?.build();

        _$failedField = 'caveats';
        caveats.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PrecursorTestResult',
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

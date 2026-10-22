// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordination_indicators.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CoordinationIndicators extends CoordinationIndicators {
  @override
  final String narrativeId;
  @override
  final TimeRange window;
  @override
  final CoordinationIndicator synchrony;
  @override
  final CoordinationIndicator textDuplication;
  @override
  final CoordinationIndicator accountAgeSkew;
  @override
  final CoordinationIndicator coRepostBursts;
  @override
  final int significantCount;
  @override
  final String? findingId;
  @override
  final String? statement;
  @override
  final DetectorRef detector;
  @override
  final DateTime computedAt;

  factory _$CoordinationIndicators(
          [void Function(CoordinationIndicatorsBuilder)? updates]) =>
      (CoordinationIndicatorsBuilder()..update(updates))._build();

  _$CoordinationIndicators._(
      {required this.narrativeId,
      required this.window,
      required this.synchrony,
      required this.textDuplication,
      required this.accountAgeSkew,
      required this.coRepostBursts,
      required this.significantCount,
      this.findingId,
      this.statement,
      required this.detector,
      required this.computedAt})
      : super._();
  @override
  CoordinationIndicators rebuild(
          void Function(CoordinationIndicatorsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoordinationIndicatorsBuilder toBuilder() =>
      CoordinationIndicatorsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoordinationIndicators &&
        narrativeId == other.narrativeId &&
        window == other.window &&
        synchrony == other.synchrony &&
        textDuplication == other.textDuplication &&
        accountAgeSkew == other.accountAgeSkew &&
        coRepostBursts == other.coRepostBursts &&
        significantCount == other.significantCount &&
        findingId == other.findingId &&
        statement == other.statement &&
        detector == other.detector &&
        computedAt == other.computedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, narrativeId.hashCode);
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, synchrony.hashCode);
    _$hash = $jc(_$hash, textDuplication.hashCode);
    _$hash = $jc(_$hash, accountAgeSkew.hashCode);
    _$hash = $jc(_$hash, coRepostBursts.hashCode);
    _$hash = $jc(_$hash, significantCount.hashCode);
    _$hash = $jc(_$hash, findingId.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jc(_$hash, detector.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CoordinationIndicators')
          ..add('narrativeId', narrativeId)
          ..add('window', window)
          ..add('synchrony', synchrony)
          ..add('textDuplication', textDuplication)
          ..add('accountAgeSkew', accountAgeSkew)
          ..add('coRepostBursts', coRepostBursts)
          ..add('significantCount', significantCount)
          ..add('findingId', findingId)
          ..add('statement', statement)
          ..add('detector', detector)
          ..add('computedAt', computedAt))
        .toString();
  }
}

class CoordinationIndicatorsBuilder
    implements Builder<CoordinationIndicators, CoordinationIndicatorsBuilder> {
  _$CoordinationIndicators? _$v;

  String? _narrativeId;
  String? get narrativeId => _$this._narrativeId;
  set narrativeId(String? narrativeId) => _$this._narrativeId = narrativeId;

  TimeRangeBuilder? _window;
  TimeRangeBuilder get window => _$this._window ??= TimeRangeBuilder();
  set window(TimeRangeBuilder? window) => _$this._window = window;

  CoordinationIndicatorBuilder? _synchrony;
  CoordinationIndicatorBuilder get synchrony =>
      _$this._synchrony ??= CoordinationIndicatorBuilder();
  set synchrony(CoordinationIndicatorBuilder? synchrony) =>
      _$this._synchrony = synchrony;

  CoordinationIndicatorBuilder? _textDuplication;
  CoordinationIndicatorBuilder get textDuplication =>
      _$this._textDuplication ??= CoordinationIndicatorBuilder();
  set textDuplication(CoordinationIndicatorBuilder? textDuplication) =>
      _$this._textDuplication = textDuplication;

  CoordinationIndicatorBuilder? _accountAgeSkew;
  CoordinationIndicatorBuilder get accountAgeSkew =>
      _$this._accountAgeSkew ??= CoordinationIndicatorBuilder();
  set accountAgeSkew(CoordinationIndicatorBuilder? accountAgeSkew) =>
      _$this._accountAgeSkew = accountAgeSkew;

  CoordinationIndicatorBuilder? _coRepostBursts;
  CoordinationIndicatorBuilder get coRepostBursts =>
      _$this._coRepostBursts ??= CoordinationIndicatorBuilder();
  set coRepostBursts(CoordinationIndicatorBuilder? coRepostBursts) =>
      _$this._coRepostBursts = coRepostBursts;

  int? _significantCount;
  int? get significantCount => _$this._significantCount;
  set significantCount(int? significantCount) =>
      _$this._significantCount = significantCount;

  String? _findingId;
  String? get findingId => _$this._findingId;
  set findingId(String? findingId) => _$this._findingId = findingId;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  DetectorRefBuilder? _detector;
  DetectorRefBuilder get detector => _$this._detector ??= DetectorRefBuilder();
  set detector(DetectorRefBuilder? detector) => _$this._detector = detector;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  CoordinationIndicatorsBuilder() {
    CoordinationIndicators._defaults(this);
  }

  CoordinationIndicatorsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _narrativeId = $v.narrativeId;
      _window = $v.window.toBuilder();
      _synchrony = $v.synchrony.toBuilder();
      _textDuplication = $v.textDuplication.toBuilder();
      _accountAgeSkew = $v.accountAgeSkew.toBuilder();
      _coRepostBursts = $v.coRepostBursts.toBuilder();
      _significantCount = $v.significantCount;
      _findingId = $v.findingId;
      _statement = $v.statement;
      _detector = $v.detector.toBuilder();
      _computedAt = $v.computedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoordinationIndicators other) {
    _$v = other as _$CoordinationIndicators;
  }

  @override
  void update(void Function(CoordinationIndicatorsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoordinationIndicators build() => _build();

  _$CoordinationIndicators _build() {
    _$CoordinationIndicators _$result;
    try {
      _$result = _$v ??
          _$CoordinationIndicators._(
            narrativeId: BuiltValueNullFieldError.checkNotNull(
                narrativeId, r'CoordinationIndicators', 'narrativeId'),
            window: window.build(),
            synchrony: synchrony.build(),
            textDuplication: textDuplication.build(),
            accountAgeSkew: accountAgeSkew.build(),
            coRepostBursts: coRepostBursts.build(),
            significantCount: BuiltValueNullFieldError.checkNotNull(
                significantCount,
                r'CoordinationIndicators',
                'significantCount'),
            findingId: findingId,
            statement: statement,
            detector: detector.build(),
            computedAt: BuiltValueNullFieldError.checkNotNull(
                computedAt, r'CoordinationIndicators', 'computedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'window';
        window.build();
        _$failedField = 'synchrony';
        synchrony.build();
        _$failedField = 'textDuplication';
        textDuplication.build();
        _$failedField = 'accountAgeSkew';
        accountAgeSkew.build();
        _$failedField = 'coRepostBursts';
        coRepostBursts.build();

        _$failedField = 'detector';
        detector.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CoordinationIndicators', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

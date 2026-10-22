// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_area_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ForecastAreaPayloadModelEnum _$forecastAreaPayloadModelEnum_gfs =
    const ForecastAreaPayloadModelEnum._('gfs');
const ForecastAreaPayloadModelEnum _$forecastAreaPayloadModelEnum_hrrr =
    const ForecastAreaPayloadModelEnum._('hrrr');
const ForecastAreaPayloadModelEnum _$forecastAreaPayloadModelEnum_ifs =
    const ForecastAreaPayloadModelEnum._('ifs');
const ForecastAreaPayloadModelEnum _$forecastAreaPayloadModelEnum_aifs =
    const ForecastAreaPayloadModelEnum._('aifs');

ForecastAreaPayloadModelEnum _$forecastAreaPayloadModelEnumValueOf(
  String name,
) {
  switch (name) {
    case 'gfs':
      return _$forecastAreaPayloadModelEnum_gfs;
    case 'hrrr':
      return _$forecastAreaPayloadModelEnum_hrrr;
    case 'ifs':
      return _$forecastAreaPayloadModelEnum_ifs;
    case 'aifs':
      return _$forecastAreaPayloadModelEnum_aifs;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ForecastAreaPayloadModelEnum>
_$forecastAreaPayloadModelEnumValues =
    BuiltSet<ForecastAreaPayloadModelEnum>(const <ForecastAreaPayloadModelEnum>[
      _$forecastAreaPayloadModelEnum_gfs,
      _$forecastAreaPayloadModelEnum_hrrr,
      _$forecastAreaPayloadModelEnum_ifs,
      _$forecastAreaPayloadModelEnum_aifs,
    ]);

Serializer<ForecastAreaPayloadModelEnum>
_$forecastAreaPayloadModelEnumSerializer =
    _$ForecastAreaPayloadModelEnumSerializer();

class _$ForecastAreaPayloadModelEnumSerializer
    implements PrimitiveSerializer<ForecastAreaPayloadModelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'gfs': 'gfs',
    'hrrr': 'hrrr',
    'ifs': 'ifs',
    'aifs': 'aifs',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'gfs': 'gfs',
    'hrrr': 'hrrr',
    'ifs': 'ifs',
    'aifs': 'aifs',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastAreaPayloadModelEnum];
  @override
  final String wireName = 'ForecastAreaPayloadModelEnum';

  @override
  Object serialize(
    Serializers serializers,
    ForecastAreaPayloadModelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ForecastAreaPayloadModelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ForecastAreaPayloadModelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ForecastAreaPayload extends ForecastAreaPayload {
  @override
  final ForecastAreaPayloadModelEnum model;
  @override
  final String field;
  @override
  final ForecastAreaPayloadThreshold threshold;
  @override
  final DateTime firstExceedAt;
  @override
  final num? peakValue;
  @override
  final DateTime? peakAt;
  @override
  final num? areaKm2;
  @override
  final DateTime run;
  @override
  final String? attribution;
  @override
  final bool? automated;
  @override
  final bool? notAWarning;

  factory _$ForecastAreaPayload([
    void Function(ForecastAreaPayloadBuilder)? updates,
  ]) => (ForecastAreaPayloadBuilder()..update(updates))._build();

  _$ForecastAreaPayload._({
    required this.model,
    required this.field,
    required this.threshold,
    required this.firstExceedAt,
    this.peakValue,
    this.peakAt,
    this.areaKm2,
    required this.run,
    this.attribution,
    this.automated,
    this.notAWarning,
  }) : super._();
  @override
  ForecastAreaPayload rebuild(
    void Function(ForecastAreaPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ForecastAreaPayloadBuilder toBuilder() =>
      ForecastAreaPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastAreaPayload &&
        model == other.model &&
        field == other.field &&
        threshold == other.threshold &&
        firstExceedAt == other.firstExceedAt &&
        peakValue == other.peakValue &&
        peakAt == other.peakAt &&
        areaKm2 == other.areaKm2 &&
        run == other.run &&
        attribution == other.attribution &&
        automated == other.automated &&
        notAWarning == other.notAWarning;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, field.hashCode);
    _$hash = $jc(_$hash, threshold.hashCode);
    _$hash = $jc(_$hash, firstExceedAt.hashCode);
    _$hash = $jc(_$hash, peakValue.hashCode);
    _$hash = $jc(_$hash, peakAt.hashCode);
    _$hash = $jc(_$hash, areaKm2.hashCode);
    _$hash = $jc(_$hash, run.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, automated.hashCode);
    _$hash = $jc(_$hash, notAWarning.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastAreaPayload')
          ..add('model', model)
          ..add('field', field)
          ..add('threshold', threshold)
          ..add('firstExceedAt', firstExceedAt)
          ..add('peakValue', peakValue)
          ..add('peakAt', peakAt)
          ..add('areaKm2', areaKm2)
          ..add('run', run)
          ..add('attribution', attribution)
          ..add('automated', automated)
          ..add('notAWarning', notAWarning))
        .toString();
  }
}

class ForecastAreaPayloadBuilder
    implements Builder<ForecastAreaPayload, ForecastAreaPayloadBuilder> {
  _$ForecastAreaPayload? _$v;

  ForecastAreaPayloadModelEnum? _model;
  ForecastAreaPayloadModelEnum? get model => _$this._model;
  set model(ForecastAreaPayloadModelEnum? model) => _$this._model = model;

  String? _field;
  String? get field => _$this._field;
  set field(String? field) => _$this._field = field;

  ForecastAreaPayloadThresholdBuilder? _threshold;
  ForecastAreaPayloadThresholdBuilder get threshold =>
      _$this._threshold ??= ForecastAreaPayloadThresholdBuilder();
  set threshold(ForecastAreaPayloadThresholdBuilder? threshold) =>
      _$this._threshold = threshold;

  DateTime? _firstExceedAt;
  DateTime? get firstExceedAt => _$this._firstExceedAt;
  set firstExceedAt(DateTime? firstExceedAt) =>
      _$this._firstExceedAt = firstExceedAt;

  num? _peakValue;
  num? get peakValue => _$this._peakValue;
  set peakValue(num? peakValue) => _$this._peakValue = peakValue;

  DateTime? _peakAt;
  DateTime? get peakAt => _$this._peakAt;
  set peakAt(DateTime? peakAt) => _$this._peakAt = peakAt;

  num? _areaKm2;
  num? get areaKm2 => _$this._areaKm2;
  set areaKm2(num? areaKm2) => _$this._areaKm2 = areaKm2;

  DateTime? _run;
  DateTime? get run => _$this._run;
  set run(DateTime? run) => _$this._run = run;

  String? _attribution;
  String? get attribution => _$this._attribution;
  set attribution(String? attribution) => _$this._attribution = attribution;

  bool? _automated;
  bool? get automated => _$this._automated;
  set automated(bool? automated) => _$this._automated = automated;

  bool? _notAWarning;
  bool? get notAWarning => _$this._notAWarning;
  set notAWarning(bool? notAWarning) => _$this._notAWarning = notAWarning;

  ForecastAreaPayloadBuilder() {
    ForecastAreaPayload._defaults(this);
  }

  ForecastAreaPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _model = $v.model;
      _field = $v.field;
      _threshold = $v.threshold.toBuilder();
      _firstExceedAt = $v.firstExceedAt;
      _peakValue = $v.peakValue;
      _peakAt = $v.peakAt;
      _areaKm2 = $v.areaKm2;
      _run = $v.run;
      _attribution = $v.attribution;
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastAreaPayload other) {
    _$v = other as _$ForecastAreaPayload;
  }

  @override
  void update(void Function(ForecastAreaPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastAreaPayload build() => _build();

  _$ForecastAreaPayload _build() {
    _$ForecastAreaPayload _$result;
    try {
      _$result =
          _$v ??
          _$ForecastAreaPayload._(
            model: BuiltValueNullFieldError.checkNotNull(
              model,
              r'ForecastAreaPayload',
              'model',
            ),
            field: BuiltValueNullFieldError.checkNotNull(
              field,
              r'ForecastAreaPayload',
              'field',
            ),
            threshold: threshold.build(),
            firstExceedAt: BuiltValueNullFieldError.checkNotNull(
              firstExceedAt,
              r'ForecastAreaPayload',
              'firstExceedAt',
            ),
            peakValue: peakValue,
            peakAt: peakAt,
            areaKm2: areaKm2,
            run: BuiltValueNullFieldError.checkNotNull(
              run,
              r'ForecastAreaPayload',
              'run',
            ),
            attribution: attribution,
            automated: automated,
            notAWarning: notAWarning,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'threshold';
        threshold.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ForecastAreaPayload',
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

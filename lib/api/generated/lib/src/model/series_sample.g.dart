// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_sample.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SeriesSampleKindEnum _$seriesSampleKindEnum_observed =
    const SeriesSampleKindEnum._('observed');
const SeriesSampleKindEnum _$seriesSampleKindEnum_forecast =
    const SeriesSampleKindEnum._('forecast');

SeriesSampleKindEnum _$seriesSampleKindEnumValueOf(String name) {
  switch (name) {
    case 'observed':
      return _$seriesSampleKindEnum_observed;
    case 'forecast':
      return _$seriesSampleKindEnum_forecast;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SeriesSampleKindEnum> _$seriesSampleKindEnumValues =
    BuiltSet<SeriesSampleKindEnum>(const <SeriesSampleKindEnum>[
      _$seriesSampleKindEnum_observed,
      _$seriesSampleKindEnum_forecast,
    ]);

Serializer<SeriesSampleKindEnum> _$seriesSampleKindEnumSerializer =
    _$SeriesSampleKindEnumSerializer();

class _$SeriesSampleKindEnumSerializer
    implements PrimitiveSerializer<SeriesSampleKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'observed': 'observed',
    'forecast': 'forecast',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'observed': 'observed',
    'forecast': 'forecast',
  };

  @override
  final Iterable<Type> types = const <Type>[SeriesSampleKindEnum];
  @override
  final String wireName = 'SeriesSampleKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    SeriesSampleKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SeriesSampleKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SeriesSampleKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SeriesSample extends SeriesSample {
  @override
  final DateTime time;
  @override
  final SeriesSampleKindEnum kind;
  @override
  final num? value;
  @override
  final num? u;
  @override
  final num? v;
  @override
  final SampleValueDerived? derived;
  @override
  final String? frameKey;
  @override
  final String? run;
  @override
  final int? step;
  @override
  final SampleStatus status;
  @override
  final String? statusText;

  factory _$SeriesSample([void Function(SeriesSampleBuilder)? updates]) =>
      (SeriesSampleBuilder()..update(updates))._build();

  _$SeriesSample._({
    required this.time,
    required this.kind,
    this.value,
    this.u,
    this.v,
    this.derived,
    this.frameKey,
    this.run,
    this.step,
    required this.status,
    this.statusText,
  }) : super._();
  @override
  SeriesSample rebuild(void Function(SeriesSampleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesSampleBuilder toBuilder() => SeriesSampleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesSample &&
        time == other.time &&
        kind == other.kind &&
        value == other.value &&
        u == other.u &&
        v == other.v &&
        derived == other.derived &&
        frameKey == other.frameKey &&
        run == other.run &&
        step == other.step &&
        status == other.status &&
        statusText == other.statusText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, u.hashCode);
    _$hash = $jc(_$hash, v.hashCode);
    _$hash = $jc(_$hash, derived.hashCode);
    _$hash = $jc(_$hash, frameKey.hashCode);
    _$hash = $jc(_$hash, run.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesSample')
          ..add('time', time)
          ..add('kind', kind)
          ..add('value', value)
          ..add('u', u)
          ..add('v', v)
          ..add('derived', derived)
          ..add('frameKey', frameKey)
          ..add('run', run)
          ..add('step', step)
          ..add('status', status)
          ..add('statusText', statusText))
        .toString();
  }
}

class SeriesSampleBuilder
    implements Builder<SeriesSample, SeriesSampleBuilder> {
  _$SeriesSample? _$v;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  SeriesSampleKindEnum? _kind;
  SeriesSampleKindEnum? get kind => _$this._kind;
  set kind(SeriesSampleKindEnum? kind) => _$this._kind = kind;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  num? _u;
  num? get u => _$this._u;
  set u(num? u) => _$this._u = u;

  num? _v;
  num? get v => _$this._v;
  set v(num? v) => _$this._v = v;

  SampleValueDerivedBuilder? _derived;
  SampleValueDerivedBuilder get derived =>
      _$this._derived ??= SampleValueDerivedBuilder();
  set derived(SampleValueDerivedBuilder? derived) => _$this._derived = derived;

  String? _frameKey;
  String? get frameKey => _$this._frameKey;
  set frameKey(String? frameKey) => _$this._frameKey = frameKey;

  String? _run;
  String? get run => _$this._run;
  set run(String? run) => _$this._run = run;

  int? _step;
  int? get step => _$this._step;
  set step(int? step) => _$this._step = step;

  SampleStatus? _status;
  SampleStatus? get status => _$this._status;
  set status(SampleStatus? status) => _$this._status = status;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  SeriesSampleBuilder() {
    SeriesSample._defaults(this);
  }

  SeriesSampleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time;
      _kind = $v.kind;
      _value = $v.value;
      _u = $v.u;
      _v = $v.v;
      _derived = $v.derived?.toBuilder();
      _frameKey = $v.frameKey;
      _run = $v.run;
      _step = $v.step;
      _status = $v.status;
      _statusText = $v.statusText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesSample other) {
    _$v = other as _$SeriesSample;
  }

  @override
  void update(void Function(SeriesSampleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesSample build() => _build();

  _$SeriesSample _build() {
    _$SeriesSample _$result;
    try {
      _$result =
          _$v ??
          _$SeriesSample._(
            time: BuiltValueNullFieldError.checkNotNull(
              time,
              r'SeriesSample',
              'time',
            ),
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'SeriesSample',
              'kind',
            ),
            value: value,
            u: u,
            v: v,
            derived: _derived?.build(),
            frameKey: frameKey,
            run: run,
            step: step,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'SeriesSample',
              'status',
            ),
            statusText: statusText,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'derived';
        _derived?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SeriesSample',
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

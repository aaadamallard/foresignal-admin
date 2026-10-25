// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SampleValueMethodEnum _$sampleValueMethodEnum_nearest =
    const SampleValueMethodEnum._('nearest');
const SampleValueMethodEnum _$sampleValueMethodEnum_bilinear =
    const SampleValueMethodEnum._('bilinear');
const SampleValueMethodEnum _$sampleValueMethodEnum_unknownDefaultOpenApi =
    const SampleValueMethodEnum._('unknownDefaultOpenApi');

SampleValueMethodEnum _$sampleValueMethodEnumValueOf(String name) {
  switch (name) {
    case 'nearest':
      return _$sampleValueMethodEnum_nearest;
    case 'bilinear':
      return _$sampleValueMethodEnum_bilinear;
    case 'unknownDefaultOpenApi':
      return _$sampleValueMethodEnum_unknownDefaultOpenApi;
    default:
      return _$sampleValueMethodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SampleValueMethodEnum> _$sampleValueMethodEnumValues =
    BuiltSet<SampleValueMethodEnum>(const <SampleValueMethodEnum>[
      _$sampleValueMethodEnum_nearest,
      _$sampleValueMethodEnum_bilinear,
      _$sampleValueMethodEnum_unknownDefaultOpenApi,
    ]);

const SampleValueCoverageEnum _$sampleValueCoverageEnum_CONUS =
    const SampleValueCoverageEnum._('CONUS');
const SampleValueCoverageEnum _$sampleValueCoverageEnum_global =
    const SampleValueCoverageEnum._('global');
const SampleValueCoverageEnum _$sampleValueCoverageEnum_stationDisc =
    const SampleValueCoverageEnum._('stationDisc');
const SampleValueCoverageEnum _$sampleValueCoverageEnum_swath =
    const SampleValueCoverageEnum._('swath');
const SampleValueCoverageEnum _$sampleValueCoverageEnum_unknownDefaultOpenApi =
    const SampleValueCoverageEnum._('unknownDefaultOpenApi');

SampleValueCoverageEnum _$sampleValueCoverageEnumValueOf(String name) {
  switch (name) {
    case 'CONUS':
      return _$sampleValueCoverageEnum_CONUS;
    case 'global':
      return _$sampleValueCoverageEnum_global;
    case 'stationDisc':
      return _$sampleValueCoverageEnum_stationDisc;
    case 'swath':
      return _$sampleValueCoverageEnum_swath;
    case 'unknownDefaultOpenApi':
      return _$sampleValueCoverageEnum_unknownDefaultOpenApi;
    default:
      return _$sampleValueCoverageEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SampleValueCoverageEnum> _$sampleValueCoverageEnumValues =
    BuiltSet<SampleValueCoverageEnum>(const <SampleValueCoverageEnum>[
      _$sampleValueCoverageEnum_CONUS,
      _$sampleValueCoverageEnum_global,
      _$sampleValueCoverageEnum_stationDisc,
      _$sampleValueCoverageEnum_swath,
      _$sampleValueCoverageEnum_unknownDefaultOpenApi,
    ]);

Serializer<SampleValueMethodEnum> _$sampleValueMethodEnumSerializer =
    _$SampleValueMethodEnumSerializer();
Serializer<SampleValueCoverageEnum> _$sampleValueCoverageEnumSerializer =
    _$SampleValueCoverageEnumSerializer();

class _$SampleValueMethodEnumSerializer
    implements PrimitiveSerializer<SampleValueMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'nearest': 'nearest',
    'bilinear': 'bilinear',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'nearest': 'nearest',
    'bilinear': 'bilinear',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SampleValueMethodEnum];
  @override
  final String wireName = 'SampleValueMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    SampleValueMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SampleValueMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SampleValueMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SampleValueCoverageEnumSerializer
    implements PrimitiveSerializer<SampleValueCoverageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CONUS': 'CONUS',
    'global': 'global',
    'stationDisc': 'station-disc',
    'swath': 'swath',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CONUS': 'CONUS',
    'global': 'global',
    'station-disc': 'stationDisc',
    'swath': 'swath',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SampleValueCoverageEnum];
  @override
  final String wireName = 'SampleValueCoverageEnum';

  @override
  Object serialize(
    Serializers serializers,
    SampleValueCoverageEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SampleValueCoverageEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SampleValueCoverageEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SampleValue extends SampleValue {
  @override
  final String productId;
  @override
  final num? value;
  @override
  final num? u;
  @override
  final num? v;
  @override
  final SampleValueDerived? derived;
  @override
  final String? units;
  @override
  final String? label;
  @override
  final String? frameKey;
  @override
  final DateTime? validTime;
  @override
  final String? localTime;
  @override
  final num? ageMinutes;
  @override
  final String? run;
  @override
  final int? step;
  @override
  final SampleValueMethodEnum? method;
  @override
  final SampleValueCoverageEnum? coverage;
  @override
  final SampleStatus status;
  @override
  final String? statusText;
  @override
  final Attribution attribution;

  factory _$SampleValue([void Function(SampleValueBuilder)? updates]) =>
      (SampleValueBuilder()..update(updates))._build();

  _$SampleValue._({
    required this.productId,
    this.value,
    this.u,
    this.v,
    this.derived,
    this.units,
    this.label,
    this.frameKey,
    this.validTime,
    this.localTime,
    this.ageMinutes,
    this.run,
    this.step,
    this.method,
    this.coverage,
    required this.status,
    this.statusText,
    required this.attribution,
  }) : super._();
  @override
  SampleValue rebuild(void Function(SampleValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SampleValueBuilder toBuilder() => SampleValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SampleValue &&
        productId == other.productId &&
        value == other.value &&
        u == other.u &&
        v == other.v &&
        derived == other.derived &&
        units == other.units &&
        label == other.label &&
        frameKey == other.frameKey &&
        validTime == other.validTime &&
        localTime == other.localTime &&
        ageMinutes == other.ageMinutes &&
        run == other.run &&
        step == other.step &&
        method == other.method &&
        coverage == other.coverage &&
        status == other.status &&
        statusText == other.statusText &&
        attribution == other.attribution;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, u.hashCode);
    _$hash = $jc(_$hash, v.hashCode);
    _$hash = $jc(_$hash, derived.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, frameKey.hashCode);
    _$hash = $jc(_$hash, validTime.hashCode);
    _$hash = $jc(_$hash, localTime.hashCode);
    _$hash = $jc(_$hash, ageMinutes.hashCode);
    _$hash = $jc(_$hash, run.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, coverage.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SampleValue')
          ..add('productId', productId)
          ..add('value', value)
          ..add('u', u)
          ..add('v', v)
          ..add('derived', derived)
          ..add('units', units)
          ..add('label', label)
          ..add('frameKey', frameKey)
          ..add('validTime', validTime)
          ..add('localTime', localTime)
          ..add('ageMinutes', ageMinutes)
          ..add('run', run)
          ..add('step', step)
          ..add('method', method)
          ..add('coverage', coverage)
          ..add('status', status)
          ..add('statusText', statusText)
          ..add('attribution', attribution))
        .toString();
  }
}

class SampleValueBuilder implements Builder<SampleValue, SampleValueBuilder> {
  _$SampleValue? _$v;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

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

  String? _units;
  String? get units => _$this._units;
  set units(String? units) => _$this._units = units;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _frameKey;
  String? get frameKey => _$this._frameKey;
  set frameKey(String? frameKey) => _$this._frameKey = frameKey;

  DateTime? _validTime;
  DateTime? get validTime => _$this._validTime;
  set validTime(DateTime? validTime) => _$this._validTime = validTime;

  String? _localTime;
  String? get localTime => _$this._localTime;
  set localTime(String? localTime) => _$this._localTime = localTime;

  num? _ageMinutes;
  num? get ageMinutes => _$this._ageMinutes;
  set ageMinutes(num? ageMinutes) => _$this._ageMinutes = ageMinutes;

  String? _run;
  String? get run => _$this._run;
  set run(String? run) => _$this._run = run;

  int? _step;
  int? get step => _$this._step;
  set step(int? step) => _$this._step = step;

  SampleValueMethodEnum? _method;
  SampleValueMethodEnum? get method => _$this._method;
  set method(SampleValueMethodEnum? method) => _$this._method = method;

  SampleValueCoverageEnum? _coverage;
  SampleValueCoverageEnum? get coverage => _$this._coverage;
  set coverage(SampleValueCoverageEnum? coverage) =>
      _$this._coverage = coverage;

  SampleStatus? _status;
  SampleStatus? get status => _$this._status;
  set status(SampleStatus? status) => _$this._status = status;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  AttributionBuilder? _attribution;
  AttributionBuilder get attribution =>
      _$this._attribution ??= AttributionBuilder();
  set attribution(AttributionBuilder? attribution) =>
      _$this._attribution = attribution;

  SampleValueBuilder() {
    SampleValue._defaults(this);
  }

  SampleValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _value = $v.value;
      _u = $v.u;
      _v = $v.v;
      _derived = $v.derived?.toBuilder();
      _units = $v.units;
      _label = $v.label;
      _frameKey = $v.frameKey;
      _validTime = $v.validTime;
      _localTime = $v.localTime;
      _ageMinutes = $v.ageMinutes;
      _run = $v.run;
      _step = $v.step;
      _method = $v.method;
      _coverage = $v.coverage;
      _status = $v.status;
      _statusText = $v.statusText;
      _attribution = $v.attribution.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SampleValue other) {
    _$v = other as _$SampleValue;
  }

  @override
  void update(void Function(SampleValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SampleValue build() => _build();

  _$SampleValue _build() {
    _$SampleValue _$result;
    try {
      _$result =
          _$v ??
          _$SampleValue._(
            productId: BuiltValueNullFieldError.checkNotNull(
              productId,
              r'SampleValue',
              'productId',
            ),
            value: value,
            u: u,
            v: v,
            derived: _derived?.build(),
            units: units,
            label: label,
            frameKey: frameKey,
            validTime: validTime,
            localTime: localTime,
            ageMinutes: ageMinutes,
            run: run,
            step: step,
            method: method,
            coverage: coverage,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'SampleValue',
              'status',
            ),
            statusText: statusText,
            attribution: attribution.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'derived';
        _derived?.build();

        _$failedField = 'attribution';
        attribution.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SampleValue',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anomaly_baseline.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnomalyBaselineSlotModeEnum _$anomalyBaselineSlotModeEnum_hourOfWeek =
    const AnomalyBaselineSlotModeEnum._('hourOfWeek');
const AnomalyBaselineSlotModeEnum _$anomalyBaselineSlotModeEnum_hourOfDay =
    const AnomalyBaselineSlotModeEnum._('hourOfDay');

AnomalyBaselineSlotModeEnum _$anomalyBaselineSlotModeEnumValueOf(String name) {
  switch (name) {
    case 'hourOfWeek':
      return _$anomalyBaselineSlotModeEnum_hourOfWeek;
    case 'hourOfDay':
      return _$anomalyBaselineSlotModeEnum_hourOfDay;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnomalyBaselineSlotModeEnum>
_$anomalyBaselineSlotModeEnumValues =
    BuiltSet<AnomalyBaselineSlotModeEnum>(const <AnomalyBaselineSlotModeEnum>[
      _$anomalyBaselineSlotModeEnum_hourOfWeek,
      _$anomalyBaselineSlotModeEnum_hourOfDay,
    ]);

const AnomalyBaselineBucketEnum _$anomalyBaselineBucketEnum_n15m =
    const AnomalyBaselineBucketEnum._('n15m');
const AnomalyBaselineBucketEnum _$anomalyBaselineBucketEnum_n1h =
    const AnomalyBaselineBucketEnum._('n1h');

AnomalyBaselineBucketEnum _$anomalyBaselineBucketEnumValueOf(String name) {
  switch (name) {
    case 'n15m':
      return _$anomalyBaselineBucketEnum_n15m;
    case 'n1h':
      return _$anomalyBaselineBucketEnum_n1h;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnomalyBaselineBucketEnum> _$anomalyBaselineBucketEnumValues =
    BuiltSet<AnomalyBaselineBucketEnum>(const <AnomalyBaselineBucketEnum>[
      _$anomalyBaselineBucketEnum_n15m,
      _$anomalyBaselineBucketEnum_n1h,
    ]);

const AnomalyBaselineSamplePathEnum
_$anomalyBaselineSamplePathEnum_activitySample =
    const AnomalyBaselineSamplePathEnum._('activitySample');
const AnomalyBaselineSamplePathEnum
_$anomalyBaselineSamplePathEnum_activityRollup =
    const AnomalyBaselineSamplePathEnum._('activityRollup');

AnomalyBaselineSamplePathEnum _$anomalyBaselineSamplePathEnumValueOf(
  String name,
) {
  switch (name) {
    case 'activitySample':
      return _$anomalyBaselineSamplePathEnum_activitySample;
    case 'activityRollup':
      return _$anomalyBaselineSamplePathEnum_activityRollup;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnomalyBaselineSamplePathEnum>
_$anomalyBaselineSamplePathEnumValues = BuiltSet<AnomalyBaselineSamplePathEnum>(
  const <AnomalyBaselineSamplePathEnum>[
    _$anomalyBaselineSamplePathEnum_activitySample,
    _$anomalyBaselineSamplePathEnum_activityRollup,
  ],
);

Serializer<AnomalyBaselineSlotModeEnum>
_$anomalyBaselineSlotModeEnumSerializer =
    _$AnomalyBaselineSlotModeEnumSerializer();
Serializer<AnomalyBaselineBucketEnum> _$anomalyBaselineBucketEnumSerializer =
    _$AnomalyBaselineBucketEnumSerializer();
Serializer<AnomalyBaselineSamplePathEnum>
_$anomalyBaselineSamplePathEnumSerializer =
    _$AnomalyBaselineSamplePathEnumSerializer();

class _$AnomalyBaselineSlotModeEnumSerializer
    implements PrimitiveSerializer<AnomalyBaselineSlotModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'hourOfWeek': 'hour-of-week',
    'hourOfDay': 'hour-of-day',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'hour-of-week': 'hourOfWeek',
    'hour-of-day': 'hourOfDay',
  };

  @override
  final Iterable<Type> types = const <Type>[AnomalyBaselineSlotModeEnum];
  @override
  final String wireName = 'AnomalyBaselineSlotModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnomalyBaselineSlotModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnomalyBaselineSlotModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnomalyBaselineSlotModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnomalyBaselineBucketEnumSerializer
    implements PrimitiveSerializer<AnomalyBaselineBucketEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n15m': '15m',
    'n1h': '1h',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '15m': 'n15m',
    '1h': 'n1h',
  };

  @override
  final Iterable<Type> types = const <Type>[AnomalyBaselineBucketEnum];
  @override
  final String wireName = 'AnomalyBaselineBucketEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnomalyBaselineBucketEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnomalyBaselineBucketEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnomalyBaselineBucketEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnomalyBaselineSamplePathEnumSerializer
    implements PrimitiveSerializer<AnomalyBaselineSamplePathEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'activitySample': 'activity_sample',
    'activityRollup': 'activity_rollup',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'activity_sample': 'activitySample',
    'activity_rollup': 'activityRollup',
  };

  @override
  final Iterable<Type> types = const <Type>[AnomalyBaselineSamplePathEnum];
  @override
  final String wireName = 'AnomalyBaselineSamplePathEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnomalyBaselineSamplePathEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnomalyBaselineSamplePathEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnomalyBaselineSamplePathEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnomalyBaseline extends AnomalyBaseline {
  @override
  final String ruleId;
  @override
  final AnomalyBaselineSlotModeEnum slotMode;
  @override
  final AnomalyBaselineBucketEnum bucket;
  @override
  final num weeksAvailable;
  @override
  final int? minWeeks;
  @override
  final bool learning;
  @override
  final DateTime? learningUntil;
  @override
  final bool? lowConfidence;
  @override
  final AnomalyBaselineSamplePathEnum? samplePath;
  @override
  final BuiltList<AnomalyBaselineSlot> slots;

  factory _$AnomalyBaseline([void Function(AnomalyBaselineBuilder)? updates]) =>
      (AnomalyBaselineBuilder()..update(updates))._build();

  _$AnomalyBaseline._({
    required this.ruleId,
    required this.slotMode,
    required this.bucket,
    required this.weeksAvailable,
    this.minWeeks,
    required this.learning,
    this.learningUntil,
    this.lowConfidence,
    this.samplePath,
    required this.slots,
  }) : super._();
  @override
  AnomalyBaseline rebuild(void Function(AnomalyBaselineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnomalyBaselineBuilder toBuilder() => AnomalyBaselineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnomalyBaseline &&
        ruleId == other.ruleId &&
        slotMode == other.slotMode &&
        bucket == other.bucket &&
        weeksAvailable == other.weeksAvailable &&
        minWeeks == other.minWeeks &&
        learning == other.learning &&
        learningUntil == other.learningUntil &&
        lowConfidence == other.lowConfidence &&
        samplePath == other.samplePath &&
        slots == other.slots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, slotMode.hashCode);
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, weeksAvailable.hashCode);
    _$hash = $jc(_$hash, minWeeks.hashCode);
    _$hash = $jc(_$hash, learning.hashCode);
    _$hash = $jc(_$hash, learningUntil.hashCode);
    _$hash = $jc(_$hash, lowConfidence.hashCode);
    _$hash = $jc(_$hash, samplePath.hashCode);
    _$hash = $jc(_$hash, slots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnomalyBaseline')
          ..add('ruleId', ruleId)
          ..add('slotMode', slotMode)
          ..add('bucket', bucket)
          ..add('weeksAvailable', weeksAvailable)
          ..add('minWeeks', minWeeks)
          ..add('learning', learning)
          ..add('learningUntil', learningUntil)
          ..add('lowConfidence', lowConfidence)
          ..add('samplePath', samplePath)
          ..add('slots', slots))
        .toString();
  }
}

class AnomalyBaselineBuilder
    implements Builder<AnomalyBaseline, AnomalyBaselineBuilder> {
  _$AnomalyBaseline? _$v;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  AnomalyBaselineSlotModeEnum? _slotMode;
  AnomalyBaselineSlotModeEnum? get slotMode => _$this._slotMode;
  set slotMode(AnomalyBaselineSlotModeEnum? slotMode) =>
      _$this._slotMode = slotMode;

  AnomalyBaselineBucketEnum? _bucket;
  AnomalyBaselineBucketEnum? get bucket => _$this._bucket;
  set bucket(AnomalyBaselineBucketEnum? bucket) => _$this._bucket = bucket;

  num? _weeksAvailable;
  num? get weeksAvailable => _$this._weeksAvailable;
  set weeksAvailable(num? weeksAvailable) =>
      _$this._weeksAvailable = weeksAvailable;

  int? _minWeeks;
  int? get minWeeks => _$this._minWeeks;
  set minWeeks(int? minWeeks) => _$this._minWeeks = minWeeks;

  bool? _learning;
  bool? get learning => _$this._learning;
  set learning(bool? learning) => _$this._learning = learning;

  DateTime? _learningUntil;
  DateTime? get learningUntil => _$this._learningUntil;
  set learningUntil(DateTime? learningUntil) =>
      _$this._learningUntil = learningUntil;

  bool? _lowConfidence;
  bool? get lowConfidence => _$this._lowConfidence;
  set lowConfidence(bool? lowConfidence) =>
      _$this._lowConfidence = lowConfidence;

  AnomalyBaselineSamplePathEnum? _samplePath;
  AnomalyBaselineSamplePathEnum? get samplePath => _$this._samplePath;
  set samplePath(AnomalyBaselineSamplePathEnum? samplePath) =>
      _$this._samplePath = samplePath;

  ListBuilder<AnomalyBaselineSlot>? _slots;
  ListBuilder<AnomalyBaselineSlot> get slots =>
      _$this._slots ??= ListBuilder<AnomalyBaselineSlot>();
  set slots(ListBuilder<AnomalyBaselineSlot>? slots) => _$this._slots = slots;

  AnomalyBaselineBuilder() {
    AnomalyBaseline._defaults(this);
  }

  AnomalyBaselineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleId = $v.ruleId;
      _slotMode = $v.slotMode;
      _bucket = $v.bucket;
      _weeksAvailable = $v.weeksAvailable;
      _minWeeks = $v.minWeeks;
      _learning = $v.learning;
      _learningUntil = $v.learningUntil;
      _lowConfidence = $v.lowConfidence;
      _samplePath = $v.samplePath;
      _slots = $v.slots.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnomalyBaseline other) {
    _$v = other as _$AnomalyBaseline;
  }

  @override
  void update(void Function(AnomalyBaselineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnomalyBaseline build() => _build();

  _$AnomalyBaseline _build() {
    _$AnomalyBaseline _$result;
    try {
      _$result =
          _$v ??
          _$AnomalyBaseline._(
            ruleId: BuiltValueNullFieldError.checkNotNull(
              ruleId,
              r'AnomalyBaseline',
              'ruleId',
            ),
            slotMode: BuiltValueNullFieldError.checkNotNull(
              slotMode,
              r'AnomalyBaseline',
              'slotMode',
            ),
            bucket: BuiltValueNullFieldError.checkNotNull(
              bucket,
              r'AnomalyBaseline',
              'bucket',
            ),
            weeksAvailable: BuiltValueNullFieldError.checkNotNull(
              weeksAvailable,
              r'AnomalyBaseline',
              'weeksAvailable',
            ),
            minWeeks: minWeeks,
            learning: BuiltValueNullFieldError.checkNotNull(
              learning,
              r'AnomalyBaseline',
              'learning',
            ),
            learningUntil: learningUntil,
            lowConfidence: lowConfidence,
            samplePath: samplePath,
            slots: slots.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'slots';
        slots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnomalyBaseline',
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

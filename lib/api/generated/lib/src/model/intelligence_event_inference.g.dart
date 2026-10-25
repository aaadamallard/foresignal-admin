// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intelligence_event_inference.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IntelligenceEventInferenceConfidenceLabelEnum
_$intelligenceEventInferenceConfidenceLabelEnum_low =
    const IntelligenceEventInferenceConfidenceLabelEnum._('low');
const IntelligenceEventInferenceConfidenceLabelEnum
_$intelligenceEventInferenceConfidenceLabelEnum_moderate =
    const IntelligenceEventInferenceConfidenceLabelEnum._('moderate');
const IntelligenceEventInferenceConfidenceLabelEnum
_$intelligenceEventInferenceConfidenceLabelEnum_high =
    const IntelligenceEventInferenceConfidenceLabelEnum._('high');
const IntelligenceEventInferenceConfidenceLabelEnum
_$intelligenceEventInferenceConfidenceLabelEnum_unknownDefaultOpenApi =
    const IntelligenceEventInferenceConfidenceLabelEnum._(
      'unknownDefaultOpenApi',
    );

IntelligenceEventInferenceConfidenceLabelEnum
_$intelligenceEventInferenceConfidenceLabelEnumValueOf(String name) {
  switch (name) {
    case 'low':
      return _$intelligenceEventInferenceConfidenceLabelEnum_low;
    case 'moderate':
      return _$intelligenceEventInferenceConfidenceLabelEnum_moderate;
    case 'high':
      return _$intelligenceEventInferenceConfidenceLabelEnum_high;
    case 'unknownDefaultOpenApi':
      return _$intelligenceEventInferenceConfidenceLabelEnum_unknownDefaultOpenApi;
    default:
      return _$intelligenceEventInferenceConfidenceLabelEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IntelligenceEventInferenceConfidenceLabelEnum>
_$intelligenceEventInferenceConfidenceLabelEnumValues =
    BuiltSet<IntelligenceEventInferenceConfidenceLabelEnum>(
      const <IntelligenceEventInferenceConfidenceLabelEnum>[
        _$intelligenceEventInferenceConfidenceLabelEnum_low,
        _$intelligenceEventInferenceConfidenceLabelEnum_moderate,
        _$intelligenceEventInferenceConfidenceLabelEnum_high,
        _$intelligenceEventInferenceConfidenceLabelEnum_unknownDefaultOpenApi,
      ],
    );

const IntelligenceEventInferenceEvidenceQualityEnum
_$intelligenceEventInferenceEvidenceQualityEnum_strong =
    const IntelligenceEventInferenceEvidenceQualityEnum._('strong');
const IntelligenceEventInferenceEvidenceQualityEnum
_$intelligenceEventInferenceEvidenceQualityEnum_moderate =
    const IntelligenceEventInferenceEvidenceQualityEnum._('moderate');
const IntelligenceEventInferenceEvidenceQualityEnum
_$intelligenceEventInferenceEvidenceQualityEnum_weak =
    const IntelligenceEventInferenceEvidenceQualityEnum._('weak');
const IntelligenceEventInferenceEvidenceQualityEnum
_$intelligenceEventInferenceEvidenceQualityEnum_insufficient =
    const IntelligenceEventInferenceEvidenceQualityEnum._('insufficient');
const IntelligenceEventInferenceEvidenceQualityEnum
_$intelligenceEventInferenceEvidenceQualityEnum_unknownDefaultOpenApi =
    const IntelligenceEventInferenceEvidenceQualityEnum._(
      'unknownDefaultOpenApi',
    );

IntelligenceEventInferenceEvidenceQualityEnum
_$intelligenceEventInferenceEvidenceQualityEnumValueOf(String name) {
  switch (name) {
    case 'strong':
      return _$intelligenceEventInferenceEvidenceQualityEnum_strong;
    case 'moderate':
      return _$intelligenceEventInferenceEvidenceQualityEnum_moderate;
    case 'weak':
      return _$intelligenceEventInferenceEvidenceQualityEnum_weak;
    case 'insufficient':
      return _$intelligenceEventInferenceEvidenceQualityEnum_insufficient;
    case 'unknownDefaultOpenApi':
      return _$intelligenceEventInferenceEvidenceQualityEnum_unknownDefaultOpenApi;
    default:
      return _$intelligenceEventInferenceEvidenceQualityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IntelligenceEventInferenceEvidenceQualityEnum>
_$intelligenceEventInferenceEvidenceQualityEnumValues =
    BuiltSet<IntelligenceEventInferenceEvidenceQualityEnum>(
      const <IntelligenceEventInferenceEvidenceQualityEnum>[
        _$intelligenceEventInferenceEvidenceQualityEnum_strong,
        _$intelligenceEventInferenceEvidenceQualityEnum_moderate,
        _$intelligenceEventInferenceEvidenceQualityEnum_weak,
        _$intelligenceEventInferenceEvidenceQualityEnum_insufficient,
        _$intelligenceEventInferenceEvidenceQualityEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<IntelligenceEventInferenceConfidenceLabelEnum>
_$intelligenceEventInferenceConfidenceLabelEnumSerializer =
    _$IntelligenceEventInferenceConfidenceLabelEnumSerializer();
Serializer<IntelligenceEventInferenceEvidenceQualityEnum>
_$intelligenceEventInferenceEvidenceQualityEnumSerializer =
    _$IntelligenceEventInferenceEvidenceQualityEnumSerializer();

class _$IntelligenceEventInferenceConfidenceLabelEnumSerializer
    implements
        PrimitiveSerializer<IntelligenceEventInferenceConfidenceLabelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'moderate': 'moderate',
    'high': 'high',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'moderate': 'moderate',
    'high': 'high',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IntelligenceEventInferenceConfidenceLabelEnum,
  ];
  @override
  final String wireName = 'IntelligenceEventInferenceConfidenceLabelEnum';

  @override
  Object serialize(
    Serializers serializers,
    IntelligenceEventInferenceConfidenceLabelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IntelligenceEventInferenceConfidenceLabelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IntelligenceEventInferenceConfidenceLabelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IntelligenceEventInferenceEvidenceQualityEnumSerializer
    implements
        PrimitiveSerializer<IntelligenceEventInferenceEvidenceQualityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'strong': 'strong',
    'moderate': 'moderate',
    'weak': 'weak',
    'insufficient': 'insufficient',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'strong': 'strong',
    'moderate': 'moderate',
    'weak': 'weak',
    'insufficient': 'insufficient',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IntelligenceEventInferenceEvidenceQualityEnum,
  ];
  @override
  final String wireName = 'IntelligenceEventInferenceEvidenceQualityEnum';

  @override
  Object serialize(
    Serializers serializers,
    IntelligenceEventInferenceEvidenceQualityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IntelligenceEventInferenceEvidenceQualityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IntelligenceEventInferenceEvidenceQualityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IntelligenceEventInference extends IntelligenceEventInference {
  @override
  final num confidence;
  @override
  final num? rawConfidence;
  @override
  final IntelligenceEventInferenceConfidenceLabelEnum confidenceLabel;
  @override
  final String confidenceMethod;
  @override
  final bool calibrated;
  @override
  final IntelligenceEventInferenceEvidenceQualityEnum evidenceQuality;
  @override
  final DateTime startTime;
  @override
  final DateTime? endTime;
  @override
  final DateTime? lastEvidenceAt;
  @override
  final Geometry? geometry;
  @override
  final Geometry? centroid;
  @override
  final BuiltList<String>? regionTags;
  @override
  final String explanation;

  factory _$IntelligenceEventInference([
    void Function(IntelligenceEventInferenceBuilder)? updates,
  ]) => (IntelligenceEventInferenceBuilder()..update(updates))._build();

  _$IntelligenceEventInference._({
    required this.confidence,
    this.rawConfidence,
    required this.confidenceLabel,
    required this.confidenceMethod,
    required this.calibrated,
    required this.evidenceQuality,
    required this.startTime,
    this.endTime,
    this.lastEvidenceAt,
    this.geometry,
    this.centroid,
    this.regionTags,
    required this.explanation,
  }) : super._();
  @override
  IntelligenceEventInference rebuild(
    void Function(IntelligenceEventInferenceBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelligenceEventInferenceBuilder toBuilder() =>
      IntelligenceEventInferenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelligenceEventInference &&
        confidence == other.confidence &&
        rawConfidence == other.rawConfidence &&
        confidenceLabel == other.confidenceLabel &&
        confidenceMethod == other.confidenceMethod &&
        calibrated == other.calibrated &&
        evidenceQuality == other.evidenceQuality &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        lastEvidenceAt == other.lastEvidenceAt &&
        geometry == other.geometry &&
        centroid == other.centroid &&
        regionTags == other.regionTags &&
        explanation == other.explanation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, rawConfidence.hashCode);
    _$hash = $jc(_$hash, confidenceLabel.hashCode);
    _$hash = $jc(_$hash, confidenceMethod.hashCode);
    _$hash = $jc(_$hash, calibrated.hashCode);
    _$hash = $jc(_$hash, evidenceQuality.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, lastEvidenceAt.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, centroid.hashCode);
    _$hash = $jc(_$hash, regionTags.hashCode);
    _$hash = $jc(_$hash, explanation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelligenceEventInference')
          ..add('confidence', confidence)
          ..add('rawConfidence', rawConfidence)
          ..add('confidenceLabel', confidenceLabel)
          ..add('confidenceMethod', confidenceMethod)
          ..add('calibrated', calibrated)
          ..add('evidenceQuality', evidenceQuality)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('lastEvidenceAt', lastEvidenceAt)
          ..add('geometry', geometry)
          ..add('centroid', centroid)
          ..add('regionTags', regionTags)
          ..add('explanation', explanation))
        .toString();
  }
}

class IntelligenceEventInferenceBuilder
    implements
        Builder<IntelligenceEventInference, IntelligenceEventInferenceBuilder> {
  _$IntelligenceEventInference? _$v;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  num? _rawConfidence;
  num? get rawConfidence => _$this._rawConfidence;
  set rawConfidence(num? rawConfidence) =>
      _$this._rawConfidence = rawConfidence;

  IntelligenceEventInferenceConfidenceLabelEnum? _confidenceLabel;
  IntelligenceEventInferenceConfidenceLabelEnum? get confidenceLabel =>
      _$this._confidenceLabel;
  set confidenceLabel(
    IntelligenceEventInferenceConfidenceLabelEnum? confidenceLabel,
  ) => _$this._confidenceLabel = confidenceLabel;

  String? _confidenceMethod;
  String? get confidenceMethod => _$this._confidenceMethod;
  set confidenceMethod(String? confidenceMethod) =>
      _$this._confidenceMethod = confidenceMethod;

  bool? _calibrated;
  bool? get calibrated => _$this._calibrated;
  set calibrated(bool? calibrated) => _$this._calibrated = calibrated;

  IntelligenceEventInferenceEvidenceQualityEnum? _evidenceQuality;
  IntelligenceEventInferenceEvidenceQualityEnum? get evidenceQuality =>
      _$this._evidenceQuality;
  set evidenceQuality(
    IntelligenceEventInferenceEvidenceQualityEnum? evidenceQuality,
  ) => _$this._evidenceQuality = evidenceQuality;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  DateTime? _lastEvidenceAt;
  DateTime? get lastEvidenceAt => _$this._lastEvidenceAt;
  set lastEvidenceAt(DateTime? lastEvidenceAt) =>
      _$this._lastEvidenceAt = lastEvidenceAt;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  GeometryBuilder? _centroid;
  GeometryBuilder get centroid => _$this._centroid ??= GeometryBuilder();
  set centroid(GeometryBuilder? centroid) => _$this._centroid = centroid;

  ListBuilder<String>? _regionTags;
  ListBuilder<String> get regionTags =>
      _$this._regionTags ??= ListBuilder<String>();
  set regionTags(ListBuilder<String>? regionTags) =>
      _$this._regionTags = regionTags;

  String? _explanation;
  String? get explanation => _$this._explanation;
  set explanation(String? explanation) => _$this._explanation = explanation;

  IntelligenceEventInferenceBuilder() {
    IntelligenceEventInference._defaults(this);
  }

  IntelligenceEventInferenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _confidence = $v.confidence;
      _rawConfidence = $v.rawConfidence;
      _confidenceLabel = $v.confidenceLabel;
      _confidenceMethod = $v.confidenceMethod;
      _calibrated = $v.calibrated;
      _evidenceQuality = $v.evidenceQuality;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _lastEvidenceAt = $v.lastEvidenceAt;
      _geometry = $v.geometry?.toBuilder();
      _centroid = $v.centroid?.toBuilder();
      _regionTags = $v.regionTags?.toBuilder();
      _explanation = $v.explanation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelligenceEventInference other) {
    _$v = other as _$IntelligenceEventInference;
  }

  @override
  void update(void Function(IntelligenceEventInferenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelligenceEventInference build() => _build();

  _$IntelligenceEventInference _build() {
    _$IntelligenceEventInference _$result;
    try {
      _$result =
          _$v ??
          _$IntelligenceEventInference._(
            confidence: BuiltValueNullFieldError.checkNotNull(
              confidence,
              r'IntelligenceEventInference',
              'confidence',
            ),
            rawConfidence: rawConfidence,
            confidenceLabel: BuiltValueNullFieldError.checkNotNull(
              confidenceLabel,
              r'IntelligenceEventInference',
              'confidenceLabel',
            ),
            confidenceMethod: BuiltValueNullFieldError.checkNotNull(
              confidenceMethod,
              r'IntelligenceEventInference',
              'confidenceMethod',
            ),
            calibrated: BuiltValueNullFieldError.checkNotNull(
              calibrated,
              r'IntelligenceEventInference',
              'calibrated',
            ),
            evidenceQuality: BuiltValueNullFieldError.checkNotNull(
              evidenceQuality,
              r'IntelligenceEventInference',
              'evidenceQuality',
            ),
            startTime: BuiltValueNullFieldError.checkNotNull(
              startTime,
              r'IntelligenceEventInference',
              'startTime',
            ),
            endTime: endTime,
            lastEvidenceAt: lastEvidenceAt,
            geometry: _geometry?.build(),
            centroid: _centroid?.build(),
            regionTags: _regionTags?.build(),
            explanation: BuiltValueNullFieldError.checkNotNull(
              explanation,
              r'IntelligenceEventInference',
              'explanation',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
        _$failedField = 'centroid';
        _centroid?.build();
        _$failedField = 'regionTags';
        _regionTags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IntelligenceEventInference',
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

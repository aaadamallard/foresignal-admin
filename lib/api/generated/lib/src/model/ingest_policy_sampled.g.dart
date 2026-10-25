// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_policy_sampled.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IngestPolicySampledModeEnum _$ingestPolicySampledModeEnum_SAMPLED =
    const IngestPolicySampledModeEnum._('SAMPLED');
const IngestPolicySampledModeEnum
_$ingestPolicySampledModeEnum_unknownDefaultOpenApi =
    const IngestPolicySampledModeEnum._('unknownDefaultOpenApi');

IngestPolicySampledModeEnum _$ingestPolicySampledModeEnumValueOf(String name) {
  switch (name) {
    case 'SAMPLED':
      return _$ingestPolicySampledModeEnum_SAMPLED;
    case 'unknownDefaultOpenApi':
      return _$ingestPolicySampledModeEnum_unknownDefaultOpenApi;
    default:
      return _$ingestPolicySampledModeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IngestPolicySampledModeEnum>
_$ingestPolicySampledModeEnumValues =
    BuiltSet<IngestPolicySampledModeEnum>(const <IngestPolicySampledModeEnum>[
      _$ingestPolicySampledModeEnum_SAMPLED,
      _$ingestPolicySampledModeEnum_unknownDefaultOpenApi,
    ]);

Serializer<IngestPolicySampledModeEnum>
_$ingestPolicySampledModeEnumSerializer =
    _$IngestPolicySampledModeEnumSerializer();

class _$IngestPolicySampledModeEnumSerializer
    implements PrimitiveSerializer<IngestPolicySampledModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SAMPLED': 'SAMPLED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SAMPLED': 'SAMPLED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IngestPolicySampledModeEnum];
  @override
  final String wireName = 'IngestPolicySampledModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    IngestPolicySampledModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IngestPolicySampledModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IngestPolicySampledModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IngestPolicySampled extends IngestPolicySampled {
  @override
  final IngestPolicySampledModeEnum mode;
  @override
  final String minInterval;
  @override
  final String? keyframe;
  @override
  final num? minDeviationMeters;
  @override
  final bool? thresholds;
  @override
  final String? edgeMinInterval;

  factory _$IngestPolicySampled([
    void Function(IngestPolicySampledBuilder)? updates,
  ]) => (IngestPolicySampledBuilder()..update(updates))._build();

  _$IngestPolicySampled._({
    required this.mode,
    required this.minInterval,
    this.keyframe,
    this.minDeviationMeters,
    this.thresholds,
    this.edgeMinInterval,
  }) : super._();
  @override
  IngestPolicySampled rebuild(
    void Function(IngestPolicySampledBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IngestPolicySampledBuilder toBuilder() =>
      IngestPolicySampledBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestPolicySampled &&
        mode == other.mode &&
        minInterval == other.minInterval &&
        keyframe == other.keyframe &&
        minDeviationMeters == other.minDeviationMeters &&
        thresholds == other.thresholds &&
        edgeMinInterval == other.edgeMinInterval;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, minInterval.hashCode);
    _$hash = $jc(_$hash, keyframe.hashCode);
    _$hash = $jc(_$hash, minDeviationMeters.hashCode);
    _$hash = $jc(_$hash, thresholds.hashCode);
    _$hash = $jc(_$hash, edgeMinInterval.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngestPolicySampled')
          ..add('mode', mode)
          ..add('minInterval', minInterval)
          ..add('keyframe', keyframe)
          ..add('minDeviationMeters', minDeviationMeters)
          ..add('thresholds', thresholds)
          ..add('edgeMinInterval', edgeMinInterval))
        .toString();
  }
}

class IngestPolicySampledBuilder
    implements Builder<IngestPolicySampled, IngestPolicySampledBuilder> {
  _$IngestPolicySampled? _$v;

  IngestPolicySampledModeEnum? _mode;
  IngestPolicySampledModeEnum? get mode => _$this._mode;
  set mode(IngestPolicySampledModeEnum? mode) => _$this._mode = mode;

  String? _minInterval;
  String? get minInterval => _$this._minInterval;
  set minInterval(String? minInterval) => _$this._minInterval = minInterval;

  String? _keyframe;
  String? get keyframe => _$this._keyframe;
  set keyframe(String? keyframe) => _$this._keyframe = keyframe;

  num? _minDeviationMeters;
  num? get minDeviationMeters => _$this._minDeviationMeters;
  set minDeviationMeters(num? minDeviationMeters) =>
      _$this._minDeviationMeters = minDeviationMeters;

  bool? _thresholds;
  bool? get thresholds => _$this._thresholds;
  set thresholds(bool? thresholds) => _$this._thresholds = thresholds;

  String? _edgeMinInterval;
  String? get edgeMinInterval => _$this._edgeMinInterval;
  set edgeMinInterval(String? edgeMinInterval) =>
      _$this._edgeMinInterval = edgeMinInterval;

  IngestPolicySampledBuilder() {
    IngestPolicySampled._defaults(this);
  }

  IngestPolicySampledBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mode = $v.mode;
      _minInterval = $v.minInterval;
      _keyframe = $v.keyframe;
      _minDeviationMeters = $v.minDeviationMeters;
      _thresholds = $v.thresholds;
      _edgeMinInterval = $v.edgeMinInterval;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestPolicySampled other) {
    _$v = other as _$IngestPolicySampled;
  }

  @override
  void update(void Function(IngestPolicySampledBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestPolicySampled build() => _build();

  _$IngestPolicySampled _build() {
    final _$result =
        _$v ??
        _$IngestPolicySampled._(
          mode: BuiltValueNullFieldError.checkNotNull(
            mode,
            r'IngestPolicySampled',
            'mode',
          ),
          minInterval: BuiltValueNullFieldError.checkNotNull(
            minInterval,
            r'IngestPolicySampled',
            'minInterval',
          ),
          keyframe: keyframe,
          minDeviationMeters: minDeviationMeters,
          thresholds: thresholds,
          edgeMinInterval: edgeMinInterval,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

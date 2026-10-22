// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IndicatorPatchCredibilityEnum _$indicatorPatchCredibilityEnum_H =
    const IndicatorPatchCredibilityEnum._('H');
const IndicatorPatchCredibilityEnum _$indicatorPatchCredibilityEnum_M =
    const IndicatorPatchCredibilityEnum._('M');
const IndicatorPatchCredibilityEnum _$indicatorPatchCredibilityEnum_L =
    const IndicatorPatchCredibilityEnum._('L');

IndicatorPatchCredibilityEnum _$indicatorPatchCredibilityEnumValueOf(
    String name) {
  switch (name) {
    case 'H':
      return _$indicatorPatchCredibilityEnum_H;
    case 'M':
      return _$indicatorPatchCredibilityEnum_M;
    case 'L':
      return _$indicatorPatchCredibilityEnum_L;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IndicatorPatchCredibilityEnum>
    _$indicatorPatchCredibilityEnumValues = BuiltSet<
        IndicatorPatchCredibilityEnum>(const <IndicatorPatchCredibilityEnum>[
  _$indicatorPatchCredibilityEnum_H,
  _$indicatorPatchCredibilityEnum_M,
  _$indicatorPatchCredibilityEnum_L,
]);

const IndicatorPatchRelevanceEnum _$indicatorPatchRelevanceEnum_H =
    const IndicatorPatchRelevanceEnum._('H');
const IndicatorPatchRelevanceEnum _$indicatorPatchRelevanceEnum_M =
    const IndicatorPatchRelevanceEnum._('M');
const IndicatorPatchRelevanceEnum _$indicatorPatchRelevanceEnum_L =
    const IndicatorPatchRelevanceEnum._('L');

IndicatorPatchRelevanceEnum _$indicatorPatchRelevanceEnumValueOf(String name) {
  switch (name) {
    case 'H':
      return _$indicatorPatchRelevanceEnum_H;
    case 'M':
      return _$indicatorPatchRelevanceEnum_M;
    case 'L':
      return _$indicatorPatchRelevanceEnum_L;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IndicatorPatchRelevanceEnum>
    _$indicatorPatchRelevanceEnumValues =
    BuiltSet<IndicatorPatchRelevanceEnum>(const <IndicatorPatchRelevanceEnum>[
  _$indicatorPatchRelevanceEnum_H,
  _$indicatorPatchRelevanceEnum_M,
  _$indicatorPatchRelevanceEnum_L,
]);

const IndicatorPatchStateEnum _$indicatorPatchStateEnum_observed =
    const IndicatorPatchStateEnum._('observed');
const IndicatorPatchStateEnum _$indicatorPatchStateEnum_absent =
    const IndicatorPatchStateEnum._('absent');

IndicatorPatchStateEnum _$indicatorPatchStateEnumValueOf(String name) {
  switch (name) {
    case 'observed':
      return _$indicatorPatchStateEnum_observed;
    case 'absent':
      return _$indicatorPatchStateEnum_absent;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IndicatorPatchStateEnum> _$indicatorPatchStateEnumValues =
    BuiltSet<IndicatorPatchStateEnum>(const <IndicatorPatchStateEnum>[
  _$indicatorPatchStateEnum_observed,
  _$indicatorPatchStateEnum_absent,
]);

Serializer<IndicatorPatchCredibilityEnum>
    _$indicatorPatchCredibilityEnumSerializer =
    _$IndicatorPatchCredibilityEnumSerializer();
Serializer<IndicatorPatchRelevanceEnum>
    _$indicatorPatchRelevanceEnumSerializer =
    _$IndicatorPatchRelevanceEnumSerializer();
Serializer<IndicatorPatchStateEnum> _$indicatorPatchStateEnumSerializer =
    _$IndicatorPatchStateEnumSerializer();

class _$IndicatorPatchCredibilityEnumSerializer
    implements PrimitiveSerializer<IndicatorPatchCredibilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'H': 'H',
    'M': 'M',
    'L': 'L',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'H': 'H',
    'M': 'M',
    'L': 'L',
  };

  @override
  final Iterable<Type> types = const <Type>[IndicatorPatchCredibilityEnum];
  @override
  final String wireName = 'IndicatorPatchCredibilityEnum';

  @override
  Object serialize(
          Serializers serializers, IndicatorPatchCredibilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IndicatorPatchCredibilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IndicatorPatchCredibilityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IndicatorPatchRelevanceEnumSerializer
    implements PrimitiveSerializer<IndicatorPatchRelevanceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'H': 'H',
    'M': 'M',
    'L': 'L',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'H': 'H',
    'M': 'M',
    'L': 'L',
  };

  @override
  final Iterable<Type> types = const <Type>[IndicatorPatchRelevanceEnum];
  @override
  final String wireName = 'IndicatorPatchRelevanceEnum';

  @override
  Object serialize(Serializers serializers, IndicatorPatchRelevanceEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IndicatorPatchRelevanceEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IndicatorPatchRelevanceEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IndicatorPatchStateEnumSerializer
    implements PrimitiveSerializer<IndicatorPatchStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'observed': 'observed',
    'absent': 'absent',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'observed': 'observed',
    'absent': 'absent',
  };

  @override
  final Iterable<Type> types = const <Type>[IndicatorPatchStateEnum];
  @override
  final String wireName = 'IndicatorPatchStateEnum';

  @override
  Object serialize(Serializers serializers, IndicatorPatchStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IndicatorPatchStateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IndicatorPatchStateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IndicatorPatch extends IndicatorPatch {
  @override
  final String? description;
  @override
  final IndicatorSignal? signal;
  @override
  final String? signalFamily;
  @override
  final IndicatorPatchCredibilityEnum? credibility;
  @override
  final IndicatorPatchRelevanceEnum? relevance;
  @override
  final DateTime? expectedBy;
  @override
  final BuiltMap<String, IndicatorLikelihood>? lr;
  @override
  final BuiltMap<String, num>? absenceLr;
  @override
  final IndicatorPatchStateEnum? state;
  @override
  final JsonObject? observedEvidence;

  factory _$IndicatorPatch([void Function(IndicatorPatchBuilder)? updates]) =>
      (IndicatorPatchBuilder()..update(updates))._build();

  _$IndicatorPatch._(
      {this.description,
      this.signal,
      this.signalFamily,
      this.credibility,
      this.relevance,
      this.expectedBy,
      this.lr,
      this.absenceLr,
      this.state,
      this.observedEvidence})
      : super._();
  @override
  IndicatorPatch rebuild(void Function(IndicatorPatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndicatorPatchBuilder toBuilder() => IndicatorPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndicatorPatch &&
        description == other.description &&
        signal == other.signal &&
        signalFamily == other.signalFamily &&
        credibility == other.credibility &&
        relevance == other.relevance &&
        expectedBy == other.expectedBy &&
        lr == other.lr &&
        absenceLr == other.absenceLr &&
        state == other.state &&
        observedEvidence == other.observedEvidence;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, signal.hashCode);
    _$hash = $jc(_$hash, signalFamily.hashCode);
    _$hash = $jc(_$hash, credibility.hashCode);
    _$hash = $jc(_$hash, relevance.hashCode);
    _$hash = $jc(_$hash, expectedBy.hashCode);
    _$hash = $jc(_$hash, lr.hashCode);
    _$hash = $jc(_$hash, absenceLr.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, observedEvidence.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndicatorPatch')
          ..add('description', description)
          ..add('signal', signal)
          ..add('signalFamily', signalFamily)
          ..add('credibility', credibility)
          ..add('relevance', relevance)
          ..add('expectedBy', expectedBy)
          ..add('lr', lr)
          ..add('absenceLr', absenceLr)
          ..add('state', state)
          ..add('observedEvidence', observedEvidence))
        .toString();
  }
}

class IndicatorPatchBuilder
    implements Builder<IndicatorPatch, IndicatorPatchBuilder> {
  _$IndicatorPatch? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  IndicatorSignalBuilder? _signal;
  IndicatorSignalBuilder get signal =>
      _$this._signal ??= IndicatorSignalBuilder();
  set signal(IndicatorSignalBuilder? signal) => _$this._signal = signal;

  String? _signalFamily;
  String? get signalFamily => _$this._signalFamily;
  set signalFamily(String? signalFamily) => _$this._signalFamily = signalFamily;

  IndicatorPatchCredibilityEnum? _credibility;
  IndicatorPatchCredibilityEnum? get credibility => _$this._credibility;
  set credibility(IndicatorPatchCredibilityEnum? credibility) =>
      _$this._credibility = credibility;

  IndicatorPatchRelevanceEnum? _relevance;
  IndicatorPatchRelevanceEnum? get relevance => _$this._relevance;
  set relevance(IndicatorPatchRelevanceEnum? relevance) =>
      _$this._relevance = relevance;

  DateTime? _expectedBy;
  DateTime? get expectedBy => _$this._expectedBy;
  set expectedBy(DateTime? expectedBy) => _$this._expectedBy = expectedBy;

  MapBuilder<String, IndicatorLikelihood>? _lr;
  MapBuilder<String, IndicatorLikelihood> get lr =>
      _$this._lr ??= MapBuilder<String, IndicatorLikelihood>();
  set lr(MapBuilder<String, IndicatorLikelihood>? lr) => _$this._lr = lr;

  MapBuilder<String, num>? _absenceLr;
  MapBuilder<String, num> get absenceLr =>
      _$this._absenceLr ??= MapBuilder<String, num>();
  set absenceLr(MapBuilder<String, num>? absenceLr) =>
      _$this._absenceLr = absenceLr;

  IndicatorPatchStateEnum? _state;
  IndicatorPatchStateEnum? get state => _$this._state;
  set state(IndicatorPatchStateEnum? state) => _$this._state = state;

  JsonObject? _observedEvidence;
  JsonObject? get observedEvidence => _$this._observedEvidence;
  set observedEvidence(JsonObject? observedEvidence) =>
      _$this._observedEvidence = observedEvidence;

  IndicatorPatchBuilder() {
    IndicatorPatch._defaults(this);
  }

  IndicatorPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _signal = $v.signal?.toBuilder();
      _signalFamily = $v.signalFamily;
      _credibility = $v.credibility;
      _relevance = $v.relevance;
      _expectedBy = $v.expectedBy;
      _lr = $v.lr?.toBuilder();
      _absenceLr = $v.absenceLr?.toBuilder();
      _state = $v.state;
      _observedEvidence = $v.observedEvidence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndicatorPatch other) {
    _$v = other as _$IndicatorPatch;
  }

  @override
  void update(void Function(IndicatorPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndicatorPatch build() => _build();

  _$IndicatorPatch _build() {
    _$IndicatorPatch _$result;
    try {
      _$result = _$v ??
          _$IndicatorPatch._(
            description: description,
            signal: _signal?.build(),
            signalFamily: signalFamily,
            credibility: credibility,
            relevance: relevance,
            expectedBy: expectedBy,
            lr: _lr?.build(),
            absenceLr: _absenceLr?.build(),
            state: state,
            observedEvidence: observedEvidence,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signal';
        _signal?.build();

        _$failedField = 'lr';
        _lr?.build();
        _$failedField = 'absenceLr';
        _absenceLr?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'IndicatorPatch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

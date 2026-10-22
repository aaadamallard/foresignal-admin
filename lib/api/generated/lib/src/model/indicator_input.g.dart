// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IndicatorInputCredibilityEnum _$indicatorInputCredibilityEnum_H =
    const IndicatorInputCredibilityEnum._('H');
const IndicatorInputCredibilityEnum _$indicatorInputCredibilityEnum_M =
    const IndicatorInputCredibilityEnum._('M');
const IndicatorInputCredibilityEnum _$indicatorInputCredibilityEnum_L =
    const IndicatorInputCredibilityEnum._('L');

IndicatorInputCredibilityEnum _$indicatorInputCredibilityEnumValueOf(
    String name) {
  switch (name) {
    case 'H':
      return _$indicatorInputCredibilityEnum_H;
    case 'M':
      return _$indicatorInputCredibilityEnum_M;
    case 'L':
      return _$indicatorInputCredibilityEnum_L;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IndicatorInputCredibilityEnum>
    _$indicatorInputCredibilityEnumValues = BuiltSet<
        IndicatorInputCredibilityEnum>(const <IndicatorInputCredibilityEnum>[
  _$indicatorInputCredibilityEnum_H,
  _$indicatorInputCredibilityEnum_M,
  _$indicatorInputCredibilityEnum_L,
]);

const IndicatorInputRelevanceEnum _$indicatorInputRelevanceEnum_H =
    const IndicatorInputRelevanceEnum._('H');
const IndicatorInputRelevanceEnum _$indicatorInputRelevanceEnum_M =
    const IndicatorInputRelevanceEnum._('M');
const IndicatorInputRelevanceEnum _$indicatorInputRelevanceEnum_L =
    const IndicatorInputRelevanceEnum._('L');

IndicatorInputRelevanceEnum _$indicatorInputRelevanceEnumValueOf(String name) {
  switch (name) {
    case 'H':
      return _$indicatorInputRelevanceEnum_H;
    case 'M':
      return _$indicatorInputRelevanceEnum_M;
    case 'L':
      return _$indicatorInputRelevanceEnum_L;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IndicatorInputRelevanceEnum>
    _$indicatorInputRelevanceEnumValues =
    BuiltSet<IndicatorInputRelevanceEnum>(const <IndicatorInputRelevanceEnum>[
  _$indicatorInputRelevanceEnum_H,
  _$indicatorInputRelevanceEnum_M,
  _$indicatorInputRelevanceEnum_L,
]);

Serializer<IndicatorInputCredibilityEnum>
    _$indicatorInputCredibilityEnumSerializer =
    _$IndicatorInputCredibilityEnumSerializer();
Serializer<IndicatorInputRelevanceEnum>
    _$indicatorInputRelevanceEnumSerializer =
    _$IndicatorInputRelevanceEnumSerializer();

class _$IndicatorInputCredibilityEnumSerializer
    implements PrimitiveSerializer<IndicatorInputCredibilityEnum> {
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
  final Iterable<Type> types = const <Type>[IndicatorInputCredibilityEnum];
  @override
  final String wireName = 'IndicatorInputCredibilityEnum';

  @override
  Object serialize(
          Serializers serializers, IndicatorInputCredibilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IndicatorInputCredibilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IndicatorInputCredibilityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IndicatorInputRelevanceEnumSerializer
    implements PrimitiveSerializer<IndicatorInputRelevanceEnum> {
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
  final Iterable<Type> types = const <Type>[IndicatorInputRelevanceEnum];
  @override
  final String wireName = 'IndicatorInputRelevanceEnum';

  @override
  Object serialize(Serializers serializers, IndicatorInputRelevanceEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IndicatorInputRelevanceEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IndicatorInputRelevanceEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IndicatorInput extends IndicatorInput {
  @override
  final String description;
  @override
  final IndicatorSignal signal;
  @override
  final String signalFamily;
  @override
  final IndicatorInputCredibilityEnum credibility;
  @override
  final IndicatorInputRelevanceEnum relevance;
  @override
  final DateTime? expectedBy;
  @override
  final BuiltMap<String, IndicatorLikelihood> lr;
  @override
  final BuiltMap<String, num>? absenceLr;

  factory _$IndicatorInput([void Function(IndicatorInputBuilder)? updates]) =>
      (IndicatorInputBuilder()..update(updates))._build();

  _$IndicatorInput._(
      {required this.description,
      required this.signal,
      required this.signalFamily,
      required this.credibility,
      required this.relevance,
      this.expectedBy,
      required this.lr,
      this.absenceLr})
      : super._();
  @override
  IndicatorInput rebuild(void Function(IndicatorInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndicatorInputBuilder toBuilder() => IndicatorInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndicatorInput &&
        description == other.description &&
        signal == other.signal &&
        signalFamily == other.signalFamily &&
        credibility == other.credibility &&
        relevance == other.relevance &&
        expectedBy == other.expectedBy &&
        lr == other.lr &&
        absenceLr == other.absenceLr;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndicatorInput')
          ..add('description', description)
          ..add('signal', signal)
          ..add('signalFamily', signalFamily)
          ..add('credibility', credibility)
          ..add('relevance', relevance)
          ..add('expectedBy', expectedBy)
          ..add('lr', lr)
          ..add('absenceLr', absenceLr))
        .toString();
  }
}

class IndicatorInputBuilder
    implements Builder<IndicatorInput, IndicatorInputBuilder> {
  _$IndicatorInput? _$v;

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

  IndicatorInputCredibilityEnum? _credibility;
  IndicatorInputCredibilityEnum? get credibility => _$this._credibility;
  set credibility(IndicatorInputCredibilityEnum? credibility) =>
      _$this._credibility = credibility;

  IndicatorInputRelevanceEnum? _relevance;
  IndicatorInputRelevanceEnum? get relevance => _$this._relevance;
  set relevance(IndicatorInputRelevanceEnum? relevance) =>
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

  IndicatorInputBuilder() {
    IndicatorInput._defaults(this);
  }

  IndicatorInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _signal = $v.signal.toBuilder();
      _signalFamily = $v.signalFamily;
      _credibility = $v.credibility;
      _relevance = $v.relevance;
      _expectedBy = $v.expectedBy;
      _lr = $v.lr.toBuilder();
      _absenceLr = $v.absenceLr?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndicatorInput other) {
    _$v = other as _$IndicatorInput;
  }

  @override
  void update(void Function(IndicatorInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndicatorInput build() => _build();

  _$IndicatorInput _build() {
    _$IndicatorInput _$result;
    try {
      _$result = _$v ??
          _$IndicatorInput._(
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'IndicatorInput', 'description'),
            signal: signal.build(),
            signalFamily: BuiltValueNullFieldError.checkNotNull(
                signalFamily, r'IndicatorInput', 'signalFamily'),
            credibility: BuiltValueNullFieldError.checkNotNull(
                credibility, r'IndicatorInput', 'credibility'),
            relevance: BuiltValueNullFieldError.checkNotNull(
                relevance, r'IndicatorInput', 'relevance'),
            expectedBy: expectedBy,
            lr: lr.build(),
            absenceLr: _absenceLr?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signal';
        signal.build();

        _$failedField = 'lr';
        lr.build();
        _$failedField = 'absenceLr';
        _absenceLr?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'IndicatorInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

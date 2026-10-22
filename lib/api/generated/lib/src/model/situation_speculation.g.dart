// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_speculation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SituationSpeculationLabelEnum
    _$situationSpeculationLabelEnum_speculation =
    const SituationSpeculationLabelEnum._('speculation');

SituationSpeculationLabelEnum _$situationSpeculationLabelEnumValueOf(
    String name) {
  switch (name) {
    case 'speculation':
      return _$situationSpeculationLabelEnum_speculation;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SituationSpeculationLabelEnum>
    _$situationSpeculationLabelEnumValues = BuiltSet<
        SituationSpeculationLabelEnum>(const <SituationSpeculationLabelEnum>[
  _$situationSpeculationLabelEnum_speculation,
]);

const SituationSpeculationTextOriginEnum
    _$situationSpeculationTextOriginEnum_llm =
    const SituationSpeculationTextOriginEnum._('llm');

SituationSpeculationTextOriginEnum _$situationSpeculationTextOriginEnumValueOf(
    String name) {
  switch (name) {
    case 'llm':
      return _$situationSpeculationTextOriginEnum_llm;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SituationSpeculationTextOriginEnum>
    _$situationSpeculationTextOriginEnumValues = BuiltSet<
        SituationSpeculationTextOriginEnum>(const <SituationSpeculationTextOriginEnum>[
  _$situationSpeculationTextOriginEnum_llm,
]);

Serializer<SituationSpeculationLabelEnum>
    _$situationSpeculationLabelEnumSerializer =
    _$SituationSpeculationLabelEnumSerializer();
Serializer<SituationSpeculationTextOriginEnum>
    _$situationSpeculationTextOriginEnumSerializer =
    _$SituationSpeculationTextOriginEnumSerializer();

class _$SituationSpeculationLabelEnumSerializer
    implements PrimitiveSerializer<SituationSpeculationLabelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'speculation': 'speculation',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'speculation': 'speculation',
  };

  @override
  final Iterable<Type> types = const <Type>[SituationSpeculationLabelEnum];
  @override
  final String wireName = 'SituationSpeculationLabelEnum';

  @override
  Object serialize(
          Serializers serializers, SituationSpeculationLabelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SituationSpeculationLabelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SituationSpeculationLabelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SituationSpeculationTextOriginEnumSerializer
    implements PrimitiveSerializer<SituationSpeculationTextOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'llm': 'llm',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'llm': 'llm',
  };

  @override
  final Iterable<Type> types = const <Type>[SituationSpeculationTextOriginEnum];
  @override
  final String wireName = 'SituationSpeculationTextOriginEnum';

  @override
  Object serialize(
          Serializers serializers, SituationSpeculationTextOriginEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SituationSpeculationTextOriginEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SituationSpeculationTextOriginEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SituationSpeculation extends SituationSpeculation {
  @override
  final SituationSpeculationLabelEnum label;
  @override
  final SituationSpeculationTextOriginEnum? textOrigin;
  @override
  final String? brief;
  @override
  final DateTime? briefGeneratedAt;
  @override
  final String? briefModel;
  @override
  final String? manifestId;

  factory _$SituationSpeculation(
          [void Function(SituationSpeculationBuilder)? updates]) =>
      (SituationSpeculationBuilder()..update(updates))._build();

  _$SituationSpeculation._(
      {required this.label,
      this.textOrigin,
      this.brief,
      this.briefGeneratedAt,
      this.briefModel,
      this.manifestId})
      : super._();
  @override
  SituationSpeculation rebuild(
          void Function(SituationSpeculationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationSpeculationBuilder toBuilder() =>
      SituationSpeculationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationSpeculation &&
        label == other.label &&
        textOrigin == other.textOrigin &&
        brief == other.brief &&
        briefGeneratedAt == other.briefGeneratedAt &&
        briefModel == other.briefModel &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, textOrigin.hashCode);
    _$hash = $jc(_$hash, brief.hashCode);
    _$hash = $jc(_$hash, briefGeneratedAt.hashCode);
    _$hash = $jc(_$hash, briefModel.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationSpeculation')
          ..add('label', label)
          ..add('textOrigin', textOrigin)
          ..add('brief', brief)
          ..add('briefGeneratedAt', briefGeneratedAt)
          ..add('briefModel', briefModel)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class SituationSpeculationBuilder
    implements Builder<SituationSpeculation, SituationSpeculationBuilder> {
  _$SituationSpeculation? _$v;

  SituationSpeculationLabelEnum? _label;
  SituationSpeculationLabelEnum? get label => _$this._label;
  set label(SituationSpeculationLabelEnum? label) => _$this._label = label;

  SituationSpeculationTextOriginEnum? _textOrigin;
  SituationSpeculationTextOriginEnum? get textOrigin => _$this._textOrigin;
  set textOrigin(SituationSpeculationTextOriginEnum? textOrigin) =>
      _$this._textOrigin = textOrigin;

  String? _brief;
  String? get brief => _$this._brief;
  set brief(String? brief) => _$this._brief = brief;

  DateTime? _briefGeneratedAt;
  DateTime? get briefGeneratedAt => _$this._briefGeneratedAt;
  set briefGeneratedAt(DateTime? briefGeneratedAt) =>
      _$this._briefGeneratedAt = briefGeneratedAt;

  String? _briefModel;
  String? get briefModel => _$this._briefModel;
  set briefModel(String? briefModel) => _$this._briefModel = briefModel;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  SituationSpeculationBuilder() {
    SituationSpeculation._defaults(this);
  }

  SituationSpeculationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _label = $v.label;
      _textOrigin = $v.textOrigin;
      _brief = $v.brief;
      _briefGeneratedAt = $v.briefGeneratedAt;
      _briefModel = $v.briefModel;
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationSpeculation other) {
    _$v = other as _$SituationSpeculation;
  }

  @override
  void update(void Function(SituationSpeculationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationSpeculation build() => _build();

  _$SituationSpeculation _build() {
    final _$result = _$v ??
        _$SituationSpeculation._(
          label: BuiltValueNullFieldError.checkNotNull(
              label, r'SituationSpeculation', 'label'),
          textOrigin: textOrigin,
          brief: brief,
          briefGeneratedAt: briefGeneratedAt,
          briefModel: briefModel,
          manifestId: manifestId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

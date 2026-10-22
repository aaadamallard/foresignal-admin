// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intelligence_event_speculation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IntelligenceEventSpeculationLabelEnum
    _$intelligenceEventSpeculationLabelEnum_speculation =
    const IntelligenceEventSpeculationLabelEnum._('speculation');

IntelligenceEventSpeculationLabelEnum
    _$intelligenceEventSpeculationLabelEnumValueOf(String name) {
  switch (name) {
    case 'speculation':
      return _$intelligenceEventSpeculationLabelEnum_speculation;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntelligenceEventSpeculationLabelEnum>
    _$intelligenceEventSpeculationLabelEnumValues = BuiltSet<
        IntelligenceEventSpeculationLabelEnum>(const <IntelligenceEventSpeculationLabelEnum>[
  _$intelligenceEventSpeculationLabelEnum_speculation,
]);

const IntelligenceEventSpeculationNarrativeOriginEnum
    _$intelligenceEventSpeculationNarrativeOriginEnum_llm =
    const IntelligenceEventSpeculationNarrativeOriginEnum._('llm');

IntelligenceEventSpeculationNarrativeOriginEnum
    _$intelligenceEventSpeculationNarrativeOriginEnumValueOf(String name) {
  switch (name) {
    case 'llm':
      return _$intelligenceEventSpeculationNarrativeOriginEnum_llm;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntelligenceEventSpeculationNarrativeOriginEnum>
    _$intelligenceEventSpeculationNarrativeOriginEnumValues = BuiltSet<
        IntelligenceEventSpeculationNarrativeOriginEnum>(const <IntelligenceEventSpeculationNarrativeOriginEnum>[
  _$intelligenceEventSpeculationNarrativeOriginEnum_llm,
]);

Serializer<IntelligenceEventSpeculationLabelEnum>
    _$intelligenceEventSpeculationLabelEnumSerializer =
    _$IntelligenceEventSpeculationLabelEnumSerializer();
Serializer<IntelligenceEventSpeculationNarrativeOriginEnum>
    _$intelligenceEventSpeculationNarrativeOriginEnumSerializer =
    _$IntelligenceEventSpeculationNarrativeOriginEnumSerializer();

class _$IntelligenceEventSpeculationLabelEnumSerializer
    implements PrimitiveSerializer<IntelligenceEventSpeculationLabelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'speculation': 'speculation',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'speculation': 'speculation',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IntelligenceEventSpeculationLabelEnum
  ];
  @override
  final String wireName = 'IntelligenceEventSpeculationLabelEnum';

  @override
  Object serialize(
          Serializers serializers, IntelligenceEventSpeculationLabelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IntelligenceEventSpeculationLabelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IntelligenceEventSpeculationLabelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IntelligenceEventSpeculationNarrativeOriginEnumSerializer
    implements
        PrimitiveSerializer<IntelligenceEventSpeculationNarrativeOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'llm': 'llm',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'llm': 'llm',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IntelligenceEventSpeculationNarrativeOriginEnum
  ];
  @override
  final String wireName = 'IntelligenceEventSpeculationNarrativeOriginEnum';

  @override
  Object serialize(Serializers serializers,
          IntelligenceEventSpeculationNarrativeOriginEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IntelligenceEventSpeculationNarrativeOriginEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IntelligenceEventSpeculationNarrativeOriginEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IntelligenceEventSpeculation extends IntelligenceEventSpeculation {
  @override
  final IntelligenceEventSpeculationLabelEnum label;
  @override
  final BuiltList<IntelEventAlternative> alternatives;
  @override
  final String? narrative;
  @override
  final IntelligenceEventSpeculationNarrativeOriginEnum? narrativeOrigin;

  factory _$IntelligenceEventSpeculation(
          [void Function(IntelligenceEventSpeculationBuilder)? updates]) =>
      (IntelligenceEventSpeculationBuilder()..update(updates))._build();

  _$IntelligenceEventSpeculation._(
      {required this.label,
      required this.alternatives,
      this.narrative,
      this.narrativeOrigin})
      : super._();
  @override
  IntelligenceEventSpeculation rebuild(
          void Function(IntelligenceEventSpeculationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntelligenceEventSpeculationBuilder toBuilder() =>
      IntelligenceEventSpeculationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelligenceEventSpeculation &&
        label == other.label &&
        alternatives == other.alternatives &&
        narrative == other.narrative &&
        narrativeOrigin == other.narrativeOrigin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, alternatives.hashCode);
    _$hash = $jc(_$hash, narrative.hashCode);
    _$hash = $jc(_$hash, narrativeOrigin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelligenceEventSpeculation')
          ..add('label', label)
          ..add('alternatives', alternatives)
          ..add('narrative', narrative)
          ..add('narrativeOrigin', narrativeOrigin))
        .toString();
  }
}

class IntelligenceEventSpeculationBuilder
    implements
        Builder<IntelligenceEventSpeculation,
            IntelligenceEventSpeculationBuilder> {
  _$IntelligenceEventSpeculation? _$v;

  IntelligenceEventSpeculationLabelEnum? _label;
  IntelligenceEventSpeculationLabelEnum? get label => _$this._label;
  set label(IntelligenceEventSpeculationLabelEnum? label) =>
      _$this._label = label;

  ListBuilder<IntelEventAlternative>? _alternatives;
  ListBuilder<IntelEventAlternative> get alternatives =>
      _$this._alternatives ??= ListBuilder<IntelEventAlternative>();
  set alternatives(ListBuilder<IntelEventAlternative>? alternatives) =>
      _$this._alternatives = alternatives;

  String? _narrative;
  String? get narrative => _$this._narrative;
  set narrative(String? narrative) => _$this._narrative = narrative;

  IntelligenceEventSpeculationNarrativeOriginEnum? _narrativeOrigin;
  IntelligenceEventSpeculationNarrativeOriginEnum? get narrativeOrigin =>
      _$this._narrativeOrigin;
  set narrativeOrigin(
          IntelligenceEventSpeculationNarrativeOriginEnum? narrativeOrigin) =>
      _$this._narrativeOrigin = narrativeOrigin;

  IntelligenceEventSpeculationBuilder() {
    IntelligenceEventSpeculation._defaults(this);
  }

  IntelligenceEventSpeculationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _label = $v.label;
      _alternatives = $v.alternatives.toBuilder();
      _narrative = $v.narrative;
      _narrativeOrigin = $v.narrativeOrigin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelligenceEventSpeculation other) {
    _$v = other as _$IntelligenceEventSpeculation;
  }

  @override
  void update(void Function(IntelligenceEventSpeculationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelligenceEventSpeculation build() => _build();

  _$IntelligenceEventSpeculation _build() {
    _$IntelligenceEventSpeculation _$result;
    try {
      _$result = _$v ??
          _$IntelligenceEventSpeculation._(
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'IntelligenceEventSpeculation', 'label'),
            alternatives: alternatives.build(),
            narrative: narrative,
            narrativeOrigin: narrativeOrigin,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alternatives';
        alternatives.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'IntelligenceEventSpeculation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

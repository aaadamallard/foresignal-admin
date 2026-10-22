// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HypothesisInputTypeEnum _$hypothesisInputTypeEnum_outcome =
    const HypothesisInputTypeEnum._('outcome');
const HypothesisInputTypeEnum _$hypothesisInputTypeEnum_explanation =
    const HypothesisInputTypeEnum._('explanation');
const HypothesisInputTypeEnum _$hypothesisInputTypeEnum_speculativeLink =
    const HypothesisInputTypeEnum._('speculativeLink');
const HypothesisInputTypeEnum _$hypothesisInputTypeEnum_other =
    const HypothesisInputTypeEnum._('other');

HypothesisInputTypeEnum _$hypothesisInputTypeEnumValueOf(String name) {
  switch (name) {
    case 'outcome':
      return _$hypothesisInputTypeEnum_outcome;
    case 'explanation':
      return _$hypothesisInputTypeEnum_explanation;
    case 'speculativeLink':
      return _$hypothesisInputTypeEnum_speculativeLink;
    case 'other':
      return _$hypothesisInputTypeEnum_other;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HypothesisInputTypeEnum> _$hypothesisInputTypeEnumValues =
    BuiltSet<HypothesisInputTypeEnum>(const <HypothesisInputTypeEnum>[
      _$hypothesisInputTypeEnum_outcome,
      _$hypothesisInputTypeEnum_explanation,
      _$hypothesisInputTypeEnum_speculativeLink,
      _$hypothesisInputTypeEnum_other,
    ]);

Serializer<HypothesisInputTypeEnum> _$hypothesisInputTypeEnumSerializer =
    _$HypothesisInputTypeEnumSerializer();

class _$HypothesisInputTypeEnumSerializer
    implements PrimitiveSerializer<HypothesisInputTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'outcome': 'outcome',
    'explanation': 'explanation',
    'speculativeLink': 'speculative-link',
    'other': 'other',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'outcome': 'outcome',
    'explanation': 'explanation',
    'speculative-link': 'speculativeLink',
    'other': 'other',
  };

  @override
  final Iterable<Type> types = const <Type>[HypothesisInputTypeEnum];
  @override
  final String wireName = 'HypothesisInputTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    HypothesisInputTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HypothesisInputTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HypothesisInputTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HypothesisInput extends HypothesisInput {
  @override
  final String label;
  @override
  final String statement;
  @override
  final HypothesisInputTypeEnum type;
  @override
  final num prior;
  @override
  final HypothesisInputPriorBasis priorBasis;
  @override
  final String? ledgerOutcome;
  @override
  final BuiltList<String>? linkedFindingIds;
  @override
  final HypothesisCoincidenceBaseline? coincidenceBaseline;
  @override
  final BuiltList<String>? alternatives;

  factory _$HypothesisInput([void Function(HypothesisInputBuilder)? updates]) =>
      (HypothesisInputBuilder()..update(updates))._build();

  _$HypothesisInput._({
    required this.label,
    required this.statement,
    required this.type,
    required this.prior,
    required this.priorBasis,
    this.ledgerOutcome,
    this.linkedFindingIds,
    this.coincidenceBaseline,
    this.alternatives,
  }) : super._();
  @override
  HypothesisInput rebuild(void Function(HypothesisInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HypothesisInputBuilder toBuilder() => HypothesisInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisInput &&
        label == other.label &&
        statement == other.statement &&
        type == other.type &&
        prior == other.prior &&
        priorBasis == other.priorBasis &&
        ledgerOutcome == other.ledgerOutcome &&
        linkedFindingIds == other.linkedFindingIds &&
        coincidenceBaseline == other.coincidenceBaseline &&
        alternatives == other.alternatives;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, prior.hashCode);
    _$hash = $jc(_$hash, priorBasis.hashCode);
    _$hash = $jc(_$hash, ledgerOutcome.hashCode);
    _$hash = $jc(_$hash, linkedFindingIds.hashCode);
    _$hash = $jc(_$hash, coincidenceBaseline.hashCode);
    _$hash = $jc(_$hash, alternatives.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisInput')
          ..add('label', label)
          ..add('statement', statement)
          ..add('type', type)
          ..add('prior', prior)
          ..add('priorBasis', priorBasis)
          ..add('ledgerOutcome', ledgerOutcome)
          ..add('linkedFindingIds', linkedFindingIds)
          ..add('coincidenceBaseline', coincidenceBaseline)
          ..add('alternatives', alternatives))
        .toString();
  }
}

class HypothesisInputBuilder
    implements Builder<HypothesisInput, HypothesisInputBuilder> {
  _$HypothesisInput? _$v;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  HypothesisInputTypeEnum? _type;
  HypothesisInputTypeEnum? get type => _$this._type;
  set type(HypothesisInputTypeEnum? type) => _$this._type = type;

  num? _prior;
  num? get prior => _$this._prior;
  set prior(num? prior) => _$this._prior = prior;

  HypothesisInputPriorBasisBuilder? _priorBasis;
  HypothesisInputPriorBasisBuilder get priorBasis =>
      _$this._priorBasis ??= HypothesisInputPriorBasisBuilder();
  set priorBasis(HypothesisInputPriorBasisBuilder? priorBasis) =>
      _$this._priorBasis = priorBasis;

  String? _ledgerOutcome;
  String? get ledgerOutcome => _$this._ledgerOutcome;
  set ledgerOutcome(String? ledgerOutcome) =>
      _$this._ledgerOutcome = ledgerOutcome;

  ListBuilder<String>? _linkedFindingIds;
  ListBuilder<String> get linkedFindingIds =>
      _$this._linkedFindingIds ??= ListBuilder<String>();
  set linkedFindingIds(ListBuilder<String>? linkedFindingIds) =>
      _$this._linkedFindingIds = linkedFindingIds;

  HypothesisCoincidenceBaselineBuilder? _coincidenceBaseline;
  HypothesisCoincidenceBaselineBuilder get coincidenceBaseline =>
      _$this._coincidenceBaseline ??= HypothesisCoincidenceBaselineBuilder();
  set coincidenceBaseline(
    HypothesisCoincidenceBaselineBuilder? coincidenceBaseline,
  ) => _$this._coincidenceBaseline = coincidenceBaseline;

  ListBuilder<String>? _alternatives;
  ListBuilder<String> get alternatives =>
      _$this._alternatives ??= ListBuilder<String>();
  set alternatives(ListBuilder<String>? alternatives) =>
      _$this._alternatives = alternatives;

  HypothesisInputBuilder() {
    HypothesisInput._defaults(this);
  }

  HypothesisInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _label = $v.label;
      _statement = $v.statement;
      _type = $v.type;
      _prior = $v.prior;
      _priorBasis = $v.priorBasis.toBuilder();
      _ledgerOutcome = $v.ledgerOutcome;
      _linkedFindingIds = $v.linkedFindingIds?.toBuilder();
      _coincidenceBaseline = $v.coincidenceBaseline?.toBuilder();
      _alternatives = $v.alternatives?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisInput other) {
    _$v = other as _$HypothesisInput;
  }

  @override
  void update(void Function(HypothesisInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisInput build() => _build();

  _$HypothesisInput _build() {
    _$HypothesisInput _$result;
    try {
      _$result =
          _$v ??
          _$HypothesisInput._(
            label: BuiltValueNullFieldError.checkNotNull(
              label,
              r'HypothesisInput',
              'label',
            ),
            statement: BuiltValueNullFieldError.checkNotNull(
              statement,
              r'HypothesisInput',
              'statement',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'HypothesisInput',
              'type',
            ),
            prior: BuiltValueNullFieldError.checkNotNull(
              prior,
              r'HypothesisInput',
              'prior',
            ),
            priorBasis: priorBasis.build(),
            ledgerOutcome: ledgerOutcome,
            linkedFindingIds: _linkedFindingIds?.build(),
            coincidenceBaseline: _coincidenceBaseline?.build(),
            alternatives: _alternatives?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'priorBasis';
        priorBasis.build();

        _$failedField = 'linkedFindingIds';
        _linkedFindingIds?.build();
        _$failedField = 'coincidenceBaseline';
        _coincidenceBaseline?.build();
        _$failedField = 'alternatives';
        _alternatives?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HypothesisInput',
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

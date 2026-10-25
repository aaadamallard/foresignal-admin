// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_review_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HypothesisReviewInputCauseEnum _$hypothesisReviewInputCauseEnum_review =
    const HypothesisReviewInputCauseEnum._('review');
const HypothesisReviewInputCauseEnum
_$hypothesisReviewInputCauseEnum_operator_ =
    const HypothesisReviewInputCauseEnum._('operator_');
const HypothesisReviewInputCauseEnum
_$hypothesisReviewInputCauseEnum_unknownDefaultOpenApi =
    const HypothesisReviewInputCauseEnum._('unknownDefaultOpenApi');

HypothesisReviewInputCauseEnum _$hypothesisReviewInputCauseEnumValueOf(
  String name,
) {
  switch (name) {
    case 'review':
      return _$hypothesisReviewInputCauseEnum_review;
    case 'operator_':
      return _$hypothesisReviewInputCauseEnum_operator_;
    case 'unknownDefaultOpenApi':
      return _$hypothesisReviewInputCauseEnum_unknownDefaultOpenApi;
    default:
      return _$hypothesisReviewInputCauseEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<HypothesisReviewInputCauseEnum>
_$hypothesisReviewInputCauseEnumValues =
    BuiltSet<HypothesisReviewInputCauseEnum>(
      const <HypothesisReviewInputCauseEnum>[
        _$hypothesisReviewInputCauseEnum_review,
        _$hypothesisReviewInputCauseEnum_operator_,
        _$hypothesisReviewInputCauseEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<HypothesisReviewInputCauseEnum>
_$hypothesisReviewInputCauseEnumSerializer =
    _$HypothesisReviewInputCauseEnumSerializer();

class _$HypothesisReviewInputCauseEnumSerializer
    implements PrimitiveSerializer<HypothesisReviewInputCauseEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'review': 'review',
    'operator_': 'operator',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'review': 'review',
    'operator': 'operator_',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[HypothesisReviewInputCauseEnum];
  @override
  final String wireName = 'HypothesisReviewInputCauseEnum';

  @override
  Object serialize(
    Serializers serializers,
    HypothesisReviewInputCauseEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HypothesisReviewInputCauseEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HypothesisReviewInputCauseEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HypothesisReviewInput extends HypothesisReviewInput {
  @override
  final HypothesisReviewInputCauseEnum? cause;
  @override
  final String rationale;
  @override
  final String? proposalId;
  @override
  final JsonObject? probabilities;
  @override
  final BuiltList<HypothesisReviewInputLrInner>? lr;
  @override
  final BuiltList<HypothesisReviewInputAssumptionsInner>? assumptions;
  @override
  final bool? exceedCap;
  @override
  final BuiltList<String>? citations;
  @override
  final int? version;

  factory _$HypothesisReviewInput([
    void Function(HypothesisReviewInputBuilder)? updates,
  ]) => (HypothesisReviewInputBuilder()..update(updates))._build();

  _$HypothesisReviewInput._({
    this.cause,
    required this.rationale,
    this.proposalId,
    this.probabilities,
    this.lr,
    this.assumptions,
    this.exceedCap,
    this.citations,
    this.version,
  }) : super._();
  @override
  HypothesisReviewInput rebuild(
    void Function(HypothesisReviewInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HypothesisReviewInputBuilder toBuilder() =>
      HypothesisReviewInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisReviewInput &&
        cause == other.cause &&
        rationale == other.rationale &&
        proposalId == other.proposalId &&
        probabilities == other.probabilities &&
        lr == other.lr &&
        assumptions == other.assumptions &&
        exceedCap == other.exceedCap &&
        citations == other.citations &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cause.hashCode);
    _$hash = $jc(_$hash, rationale.hashCode);
    _$hash = $jc(_$hash, proposalId.hashCode);
    _$hash = $jc(_$hash, probabilities.hashCode);
    _$hash = $jc(_$hash, lr.hashCode);
    _$hash = $jc(_$hash, assumptions.hashCode);
    _$hash = $jc(_$hash, exceedCap.hashCode);
    _$hash = $jc(_$hash, citations.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisReviewInput')
          ..add('cause', cause)
          ..add('rationale', rationale)
          ..add('proposalId', proposalId)
          ..add('probabilities', probabilities)
          ..add('lr', lr)
          ..add('assumptions', assumptions)
          ..add('exceedCap', exceedCap)
          ..add('citations', citations)
          ..add('version', version))
        .toString();
  }
}

class HypothesisReviewInputBuilder
    implements Builder<HypothesisReviewInput, HypothesisReviewInputBuilder> {
  _$HypothesisReviewInput? _$v;

  HypothesisReviewInputCauseEnum? _cause;
  HypothesisReviewInputCauseEnum? get cause => _$this._cause;
  set cause(HypothesisReviewInputCauseEnum? cause) => _$this._cause = cause;

  String? _rationale;
  String? get rationale => _$this._rationale;
  set rationale(String? rationale) => _$this._rationale = rationale;

  String? _proposalId;
  String? get proposalId => _$this._proposalId;
  set proposalId(String? proposalId) => _$this._proposalId = proposalId;

  JsonObject? _probabilities;
  JsonObject? get probabilities => _$this._probabilities;
  set probabilities(JsonObject? probabilities) =>
      _$this._probabilities = probabilities;

  ListBuilder<HypothesisReviewInputLrInner>? _lr;
  ListBuilder<HypothesisReviewInputLrInner> get lr =>
      _$this._lr ??= ListBuilder<HypothesisReviewInputLrInner>();
  set lr(ListBuilder<HypothesisReviewInputLrInner>? lr) => _$this._lr = lr;

  ListBuilder<HypothesisReviewInputAssumptionsInner>? _assumptions;
  ListBuilder<HypothesisReviewInputAssumptionsInner> get assumptions =>
      _$this._assumptions ??=
          ListBuilder<HypothesisReviewInputAssumptionsInner>();
  set assumptions(
    ListBuilder<HypothesisReviewInputAssumptionsInner>? assumptions,
  ) => _$this._assumptions = assumptions;

  bool? _exceedCap;
  bool? get exceedCap => _$this._exceedCap;
  set exceedCap(bool? exceedCap) => _$this._exceedCap = exceedCap;

  ListBuilder<String>? _citations;
  ListBuilder<String> get citations =>
      _$this._citations ??= ListBuilder<String>();
  set citations(ListBuilder<String>? citations) =>
      _$this._citations = citations;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  HypothesisReviewInputBuilder() {
    HypothesisReviewInput._defaults(this);
  }

  HypothesisReviewInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cause = $v.cause;
      _rationale = $v.rationale;
      _proposalId = $v.proposalId;
      _probabilities = $v.probabilities;
      _lr = $v.lr?.toBuilder();
      _assumptions = $v.assumptions?.toBuilder();
      _exceedCap = $v.exceedCap;
      _citations = $v.citations?.toBuilder();
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisReviewInput other) {
    _$v = other as _$HypothesisReviewInput;
  }

  @override
  void update(void Function(HypothesisReviewInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisReviewInput build() => _build();

  _$HypothesisReviewInput _build() {
    _$HypothesisReviewInput _$result;
    try {
      _$result =
          _$v ??
          _$HypothesisReviewInput._(
            cause: cause,
            rationale: BuiltValueNullFieldError.checkNotNull(
              rationale,
              r'HypothesisReviewInput',
              'rationale',
            ),
            proposalId: proposalId,
            probabilities: probabilities,
            lr: _lr?.build(),
            assumptions: _assumptions?.build(),
            exceedCap: exceedCap,
            citations: _citations?.build(),
            version: version,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lr';
        _lr?.build();
        _$failedField = 'assumptions';
        _assumptions?.build();

        _$failedField = 'citations';
        _citations?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HypothesisReviewInput',
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

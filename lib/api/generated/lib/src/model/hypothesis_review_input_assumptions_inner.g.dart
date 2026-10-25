// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_review_input_assumptions_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HypothesisReviewInputAssumptionsInnerStatusEnum
_$hypothesisReviewInputAssumptionsInnerStatusEnum_solid =
    const HypothesisReviewInputAssumptionsInnerStatusEnum._('solid');
const HypothesisReviewInputAssumptionsInnerStatusEnum
_$hypothesisReviewInputAssumptionsInnerStatusEnum_caveated =
    const HypothesisReviewInputAssumptionsInnerStatusEnum._('caveated');
const HypothesisReviewInputAssumptionsInnerStatusEnum
_$hypothesisReviewInputAssumptionsInnerStatusEnum_unsupported =
    const HypothesisReviewInputAssumptionsInnerStatusEnum._('unsupported');
const HypothesisReviewInputAssumptionsInnerStatusEnum
_$hypothesisReviewInputAssumptionsInnerStatusEnum_broken =
    const HypothesisReviewInputAssumptionsInnerStatusEnum._('broken');
const HypothesisReviewInputAssumptionsInnerStatusEnum
_$hypothesisReviewInputAssumptionsInnerStatusEnum_unknownDefaultOpenApi =
    const HypothesisReviewInputAssumptionsInnerStatusEnum._(
      'unknownDefaultOpenApi',
    );

HypothesisReviewInputAssumptionsInnerStatusEnum
_$hypothesisReviewInputAssumptionsInnerStatusEnumValueOf(String name) {
  switch (name) {
    case 'solid':
      return _$hypothesisReviewInputAssumptionsInnerStatusEnum_solid;
    case 'caveated':
      return _$hypothesisReviewInputAssumptionsInnerStatusEnum_caveated;
    case 'unsupported':
      return _$hypothesisReviewInputAssumptionsInnerStatusEnum_unsupported;
    case 'broken':
      return _$hypothesisReviewInputAssumptionsInnerStatusEnum_broken;
    case 'unknownDefaultOpenApi':
      return _$hypothesisReviewInputAssumptionsInnerStatusEnum_unknownDefaultOpenApi;
    default:
      return _$hypothesisReviewInputAssumptionsInnerStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<HypothesisReviewInputAssumptionsInnerStatusEnum>
_$hypothesisReviewInputAssumptionsInnerStatusEnumValues =
    BuiltSet<HypothesisReviewInputAssumptionsInnerStatusEnum>(
      const <HypothesisReviewInputAssumptionsInnerStatusEnum>[
        _$hypothesisReviewInputAssumptionsInnerStatusEnum_solid,
        _$hypothesisReviewInputAssumptionsInnerStatusEnum_caveated,
        _$hypothesisReviewInputAssumptionsInnerStatusEnum_unsupported,
        _$hypothesisReviewInputAssumptionsInnerStatusEnum_broken,
        _$hypothesisReviewInputAssumptionsInnerStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<HypothesisReviewInputAssumptionsInnerStatusEnum>
_$hypothesisReviewInputAssumptionsInnerStatusEnumSerializer =
    _$HypothesisReviewInputAssumptionsInnerStatusEnumSerializer();

class _$HypothesisReviewInputAssumptionsInnerStatusEnumSerializer
    implements
        PrimitiveSerializer<HypothesisReviewInputAssumptionsInnerStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'solid': 'solid',
    'caveated': 'caveated',
    'unsupported': 'unsupported',
    'broken': 'broken',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'solid': 'solid',
    'caveated': 'caveated',
    'unsupported': 'unsupported',
    'broken': 'broken',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    HypothesisReviewInputAssumptionsInnerStatusEnum,
  ];
  @override
  final String wireName = 'HypothesisReviewInputAssumptionsInnerStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    HypothesisReviewInputAssumptionsInnerStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HypothesisReviewInputAssumptionsInnerStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HypothesisReviewInputAssumptionsInnerStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HypothesisReviewInputAssumptionsInner
    extends HypothesisReviewInputAssumptionsInner {
  @override
  final String assumptionId;
  @override
  final HypothesisReviewInputAssumptionsInnerStatusEnum status;
  @override
  final String? rationale;

  factory _$HypothesisReviewInputAssumptionsInner([
    void Function(HypothesisReviewInputAssumptionsInnerBuilder)? updates,
  ]) => (HypothesisReviewInputAssumptionsInnerBuilder()..update(updates))
      ._build();

  _$HypothesisReviewInputAssumptionsInner._({
    required this.assumptionId,
    required this.status,
    this.rationale,
  }) : super._();
  @override
  HypothesisReviewInputAssumptionsInner rebuild(
    void Function(HypothesisReviewInputAssumptionsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HypothesisReviewInputAssumptionsInnerBuilder toBuilder() =>
      HypothesisReviewInputAssumptionsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisReviewInputAssumptionsInner &&
        assumptionId == other.assumptionId &&
        status == other.status &&
        rationale == other.rationale;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assumptionId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, rationale.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'HypothesisReviewInputAssumptionsInner',
          )
          ..add('assumptionId', assumptionId)
          ..add('status', status)
          ..add('rationale', rationale))
        .toString();
  }
}

class HypothesisReviewInputAssumptionsInnerBuilder
    implements
        Builder<
          HypothesisReviewInputAssumptionsInner,
          HypothesisReviewInputAssumptionsInnerBuilder
        > {
  _$HypothesisReviewInputAssumptionsInner? _$v;

  String? _assumptionId;
  String? get assumptionId => _$this._assumptionId;
  set assumptionId(String? assumptionId) => _$this._assumptionId = assumptionId;

  HypothesisReviewInputAssumptionsInnerStatusEnum? _status;
  HypothesisReviewInputAssumptionsInnerStatusEnum? get status => _$this._status;
  set status(HypothesisReviewInputAssumptionsInnerStatusEnum? status) =>
      _$this._status = status;

  String? _rationale;
  String? get rationale => _$this._rationale;
  set rationale(String? rationale) => _$this._rationale = rationale;

  HypothesisReviewInputAssumptionsInnerBuilder() {
    HypothesisReviewInputAssumptionsInner._defaults(this);
  }

  HypothesisReviewInputAssumptionsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assumptionId = $v.assumptionId;
      _status = $v.status;
      _rationale = $v.rationale;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisReviewInputAssumptionsInner other) {
    _$v = other as _$HypothesisReviewInputAssumptionsInner;
  }

  @override
  void update(
    void Function(HypothesisReviewInputAssumptionsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisReviewInputAssumptionsInner build() => _build();

  _$HypothesisReviewInputAssumptionsInner _build() {
    final _$result =
        _$v ??
        _$HypothesisReviewInputAssumptionsInner._(
          assumptionId: BuiltValueNullFieldError.checkNotNull(
            assumptionId,
            r'HypothesisReviewInputAssumptionsInner',
            'assumptionId',
          ),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'HypothesisReviewInputAssumptionsInner',
            'status',
          ),
          rationale: rationale,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

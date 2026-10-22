// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_backtest_result_samples_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RuleBacktestResultSamplesInnerEdgeEnum
    _$ruleBacktestResultSamplesInnerEdgeEnum_match =
    const RuleBacktestResultSamplesInnerEdgeEnum._('match');
const RuleBacktestResultSamplesInnerEdgeEnum
    _$ruleBacktestResultSamplesInnerEdgeEnum_enter =
    const RuleBacktestResultSamplesInnerEdgeEnum._('enter');
const RuleBacktestResultSamplesInnerEdgeEnum
    _$ruleBacktestResultSamplesInnerEdgeEnum_exit =
    const RuleBacktestResultSamplesInnerEdgeEnum._('exit');
const RuleBacktestResultSamplesInnerEdgeEnum
    _$ruleBacktestResultSamplesInnerEdgeEnum_window =
    const RuleBacktestResultSamplesInnerEdgeEnum._('window');

RuleBacktestResultSamplesInnerEdgeEnum
    _$ruleBacktestResultSamplesInnerEdgeEnumValueOf(String name) {
  switch (name) {
    case 'match':
      return _$ruleBacktestResultSamplesInnerEdgeEnum_match;
    case 'enter':
      return _$ruleBacktestResultSamplesInnerEdgeEnum_enter;
    case 'exit':
      return _$ruleBacktestResultSamplesInnerEdgeEnum_exit;
    case 'window':
      return _$ruleBacktestResultSamplesInnerEdgeEnum_window;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RuleBacktestResultSamplesInnerEdgeEnum>
    _$ruleBacktestResultSamplesInnerEdgeEnumValues = BuiltSet<
        RuleBacktestResultSamplesInnerEdgeEnum>(const <RuleBacktestResultSamplesInnerEdgeEnum>[
  _$ruleBacktestResultSamplesInnerEdgeEnum_match,
  _$ruleBacktestResultSamplesInnerEdgeEnum_enter,
  _$ruleBacktestResultSamplesInnerEdgeEnum_exit,
  _$ruleBacktestResultSamplesInnerEdgeEnum_window,
]);

Serializer<RuleBacktestResultSamplesInnerEdgeEnum>
    _$ruleBacktestResultSamplesInnerEdgeEnumSerializer =
    _$RuleBacktestResultSamplesInnerEdgeEnumSerializer();

class _$RuleBacktestResultSamplesInnerEdgeEnumSerializer
    implements PrimitiveSerializer<RuleBacktestResultSamplesInnerEdgeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'match': 'match',
    'enter': 'enter',
    'exit': 'exit',
    'window': 'window',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'match': 'match',
    'enter': 'enter',
    'exit': 'exit',
    'window': 'window',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RuleBacktestResultSamplesInnerEdgeEnum
  ];
  @override
  final String wireName = 'RuleBacktestResultSamplesInnerEdgeEnum';

  @override
  Object serialize(Serializers serializers,
          RuleBacktestResultSamplesInnerEdgeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RuleBacktestResultSamplesInnerEdgeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RuleBacktestResultSamplesInnerEdgeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RuleBacktestResultSamplesInner extends RuleBacktestResultSamplesInner {
  @override
  final int seq;
  @override
  final String source_;
  @override
  final String externalId;
  @override
  final DateTime observedAt;
  @override
  final RuleBacktestResultSamplesInnerEdgeEnum? edge;

  factory _$RuleBacktestResultSamplesInner(
          [void Function(RuleBacktestResultSamplesInnerBuilder)? updates]) =>
      (RuleBacktestResultSamplesInnerBuilder()..update(updates))._build();

  _$RuleBacktestResultSamplesInner._(
      {required this.seq,
      required this.source_,
      required this.externalId,
      required this.observedAt,
      this.edge})
      : super._();
  @override
  RuleBacktestResultSamplesInner rebuild(
          void Function(RuleBacktestResultSamplesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleBacktestResultSamplesInnerBuilder toBuilder() =>
      RuleBacktestResultSamplesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleBacktestResultSamplesInner &&
        seq == other.seq &&
        source_ == other.source_ &&
        externalId == other.externalId &&
        observedAt == other.observedAt &&
        edge == other.edge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, edge.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleBacktestResultSamplesInner')
          ..add('seq', seq)
          ..add('source_', source_)
          ..add('externalId', externalId)
          ..add('observedAt', observedAt)
          ..add('edge', edge))
        .toString();
  }
}

class RuleBacktestResultSamplesInnerBuilder
    implements
        Builder<RuleBacktestResultSamplesInner,
            RuleBacktestResultSamplesInnerBuilder> {
  _$RuleBacktestResultSamplesInner? _$v;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  RuleBacktestResultSamplesInnerEdgeEnum? _edge;
  RuleBacktestResultSamplesInnerEdgeEnum? get edge => _$this._edge;
  set edge(RuleBacktestResultSamplesInnerEdgeEnum? edge) => _$this._edge = edge;

  RuleBacktestResultSamplesInnerBuilder() {
    RuleBacktestResultSamplesInner._defaults(this);
  }

  RuleBacktestResultSamplesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _source_ = $v.source_;
      _externalId = $v.externalId;
      _observedAt = $v.observedAt;
      _edge = $v.edge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleBacktestResultSamplesInner other) {
    _$v = other as _$RuleBacktestResultSamplesInner;
  }

  @override
  void update(void Function(RuleBacktestResultSamplesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleBacktestResultSamplesInner build() => _build();

  _$RuleBacktestResultSamplesInner _build() {
    final _$result = _$v ??
        _$RuleBacktestResultSamplesInner._(
          seq: BuiltValueNullFieldError.checkNotNull(
              seq, r'RuleBacktestResultSamplesInner', 'seq'),
          source_: BuiltValueNullFieldError.checkNotNull(
              source_, r'RuleBacktestResultSamplesInner', 'source_'),
          externalId: BuiltValueNullFieldError.checkNotNull(
              externalId, r'RuleBacktestResultSamplesInner', 'externalId'),
          observedAt: BuiltValueNullFieldError.checkNotNull(
              observedAt, r'RuleBacktestResultSamplesInner', 'observedAt'),
          edge: edge,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

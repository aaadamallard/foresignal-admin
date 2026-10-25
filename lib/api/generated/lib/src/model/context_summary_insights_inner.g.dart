// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context_summary_insights_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ContextSummaryInsightsInnerKindEnum
_$contextSummaryInsightsInnerKindEnum_finding =
    const ContextSummaryInsightsInnerKindEnum._('finding');
const ContextSummaryInsightsInnerKindEnum
_$contextSummaryInsightsInnerKindEnum_forecast =
    const ContextSummaryInsightsInnerKindEnum._('forecast');
const ContextSummaryInsightsInnerKindEnum
_$contextSummaryInsightsInnerKindEnum_bandChange =
    const ContextSummaryInsightsInnerKindEnum._('bandChange');
const ContextSummaryInsightsInnerKindEnum
_$contextSummaryInsightsInnerKindEnum_unknownDefaultOpenApi =
    const ContextSummaryInsightsInnerKindEnum._('unknownDefaultOpenApi');

ContextSummaryInsightsInnerKindEnum
_$contextSummaryInsightsInnerKindEnumValueOf(String name) {
  switch (name) {
    case 'finding':
      return _$contextSummaryInsightsInnerKindEnum_finding;
    case 'forecast':
      return _$contextSummaryInsightsInnerKindEnum_forecast;
    case 'bandChange':
      return _$contextSummaryInsightsInnerKindEnum_bandChange;
    case 'unknownDefaultOpenApi':
      return _$contextSummaryInsightsInnerKindEnum_unknownDefaultOpenApi;
    default:
      return _$contextSummaryInsightsInnerKindEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ContextSummaryInsightsInnerKindEnum>
_$contextSummaryInsightsInnerKindEnumValues =
    BuiltSet<ContextSummaryInsightsInnerKindEnum>(
      const <ContextSummaryInsightsInnerKindEnum>[
        _$contextSummaryInsightsInnerKindEnum_finding,
        _$contextSummaryInsightsInnerKindEnum_forecast,
        _$contextSummaryInsightsInnerKindEnum_bandChange,
        _$contextSummaryInsightsInnerKindEnum_unknownDefaultOpenApi,
      ],
    );

const ContextSummaryInsightsInnerTextOriginEnum
_$contextSummaryInsightsInnerTextOriginEnum_deterministic =
    const ContextSummaryInsightsInnerTextOriginEnum._('deterministic');
const ContextSummaryInsightsInnerTextOriginEnum
_$contextSummaryInsightsInnerTextOriginEnum_llm =
    const ContextSummaryInsightsInnerTextOriginEnum._('llm');
const ContextSummaryInsightsInnerTextOriginEnum
_$contextSummaryInsightsInnerTextOriginEnum_unknownDefaultOpenApi =
    const ContextSummaryInsightsInnerTextOriginEnum._('unknownDefaultOpenApi');

ContextSummaryInsightsInnerTextOriginEnum
_$contextSummaryInsightsInnerTextOriginEnumValueOf(String name) {
  switch (name) {
    case 'deterministic':
      return _$contextSummaryInsightsInnerTextOriginEnum_deterministic;
    case 'llm':
      return _$contextSummaryInsightsInnerTextOriginEnum_llm;
    case 'unknownDefaultOpenApi':
      return _$contextSummaryInsightsInnerTextOriginEnum_unknownDefaultOpenApi;
    default:
      return _$contextSummaryInsightsInnerTextOriginEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ContextSummaryInsightsInnerTextOriginEnum>
_$contextSummaryInsightsInnerTextOriginEnumValues =
    BuiltSet<ContextSummaryInsightsInnerTextOriginEnum>(
      const <ContextSummaryInsightsInnerTextOriginEnum>[
        _$contextSummaryInsightsInnerTextOriginEnum_deterministic,
        _$contextSummaryInsightsInnerTextOriginEnum_llm,
        _$contextSummaryInsightsInnerTextOriginEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ContextSummaryInsightsInnerKindEnum>
_$contextSummaryInsightsInnerKindEnumSerializer =
    _$ContextSummaryInsightsInnerKindEnumSerializer();
Serializer<ContextSummaryInsightsInnerTextOriginEnum>
_$contextSummaryInsightsInnerTextOriginEnumSerializer =
    _$ContextSummaryInsightsInnerTextOriginEnumSerializer();

class _$ContextSummaryInsightsInnerKindEnumSerializer
    implements PrimitiveSerializer<ContextSummaryInsightsInnerKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'finding': 'finding',
    'forecast': 'forecast',
    'bandChange': 'band-change',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'finding': 'finding',
    'forecast': 'forecast',
    'band-change': 'bandChange',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ContextSummaryInsightsInnerKindEnum,
  ];
  @override
  final String wireName = 'ContextSummaryInsightsInnerKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    ContextSummaryInsightsInnerKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ContextSummaryInsightsInnerKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ContextSummaryInsightsInnerKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ContextSummaryInsightsInnerTextOriginEnumSerializer
    implements PrimitiveSerializer<ContextSummaryInsightsInnerTextOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'deterministic': 'deterministic',
    'llm': 'llm',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'deterministic': 'deterministic',
    'llm': 'llm',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ContextSummaryInsightsInnerTextOriginEnum,
  ];
  @override
  final String wireName = 'ContextSummaryInsightsInnerTextOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    ContextSummaryInsightsInnerTextOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ContextSummaryInsightsInnerTextOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ContextSummaryInsightsInnerTextOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ContextSummaryInsightsInner extends ContextSummaryInsightsInner {
  @override
  final String ref;
  @override
  final ContextSummaryInsightsInnerKindEnum kind;
  @override
  final String title;
  @override
  final num? probability;
  @override
  final IcdTerm? estimativeTerm;
  @override
  final String? issuer;
  @override
  final num? baseRate;
  @override
  final Date? knowledgeCutoff;
  @override
  final DateTime? at;
  @override
  final ContextSummaryInsightsInnerTextOriginEnum? textOrigin;

  factory _$ContextSummaryInsightsInner([
    void Function(ContextSummaryInsightsInnerBuilder)? updates,
  ]) => (ContextSummaryInsightsInnerBuilder()..update(updates))._build();

  _$ContextSummaryInsightsInner._({
    required this.ref,
    required this.kind,
    required this.title,
    this.probability,
    this.estimativeTerm,
    this.issuer,
    this.baseRate,
    this.knowledgeCutoff,
    this.at,
    this.textOrigin,
  }) : super._();
  @override
  ContextSummaryInsightsInner rebuild(
    void Function(ContextSummaryInsightsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ContextSummaryInsightsInnerBuilder toBuilder() =>
      ContextSummaryInsightsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContextSummaryInsightsInner &&
        ref == other.ref &&
        kind == other.kind &&
        title == other.title &&
        probability == other.probability &&
        estimativeTerm == other.estimativeTerm &&
        issuer == other.issuer &&
        baseRate == other.baseRate &&
        knowledgeCutoff == other.knowledgeCutoff &&
        at == other.at &&
        textOrigin == other.textOrigin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, estimativeTerm.hashCode);
    _$hash = $jc(_$hash, issuer.hashCode);
    _$hash = $jc(_$hash, baseRate.hashCode);
    _$hash = $jc(_$hash, knowledgeCutoff.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, textOrigin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContextSummaryInsightsInner')
          ..add('ref', ref)
          ..add('kind', kind)
          ..add('title', title)
          ..add('probability', probability)
          ..add('estimativeTerm', estimativeTerm)
          ..add('issuer', issuer)
          ..add('baseRate', baseRate)
          ..add('knowledgeCutoff', knowledgeCutoff)
          ..add('at', at)
          ..add('textOrigin', textOrigin))
        .toString();
  }
}

class ContextSummaryInsightsInnerBuilder
    implements
        Builder<
          ContextSummaryInsightsInner,
          ContextSummaryInsightsInnerBuilder
        > {
  _$ContextSummaryInsightsInner? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  ContextSummaryInsightsInnerKindEnum? _kind;
  ContextSummaryInsightsInnerKindEnum? get kind => _$this._kind;
  set kind(ContextSummaryInsightsInnerKindEnum? kind) => _$this._kind = kind;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  num? _probability;
  num? get probability => _$this._probability;
  set probability(num? probability) => _$this._probability = probability;

  IcdTerm? _estimativeTerm;
  IcdTerm? get estimativeTerm => _$this._estimativeTerm;
  set estimativeTerm(IcdTerm? estimativeTerm) =>
      _$this._estimativeTerm = estimativeTerm;

  String? _issuer;
  String? get issuer => _$this._issuer;
  set issuer(String? issuer) => _$this._issuer = issuer;

  num? _baseRate;
  num? get baseRate => _$this._baseRate;
  set baseRate(num? baseRate) => _$this._baseRate = baseRate;

  Date? _knowledgeCutoff;
  Date? get knowledgeCutoff => _$this._knowledgeCutoff;
  set knowledgeCutoff(Date? knowledgeCutoff) =>
      _$this._knowledgeCutoff = knowledgeCutoff;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ContextSummaryInsightsInnerTextOriginEnum? _textOrigin;
  ContextSummaryInsightsInnerTextOriginEnum? get textOrigin =>
      _$this._textOrigin;
  set textOrigin(ContextSummaryInsightsInnerTextOriginEnum? textOrigin) =>
      _$this._textOrigin = textOrigin;

  ContextSummaryInsightsInnerBuilder() {
    ContextSummaryInsightsInner._defaults(this);
  }

  ContextSummaryInsightsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _kind = $v.kind;
      _title = $v.title;
      _probability = $v.probability;
      _estimativeTerm = $v.estimativeTerm;
      _issuer = $v.issuer;
      _baseRate = $v.baseRate;
      _knowledgeCutoff = $v.knowledgeCutoff;
      _at = $v.at;
      _textOrigin = $v.textOrigin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContextSummaryInsightsInner other) {
    _$v = other as _$ContextSummaryInsightsInner;
  }

  @override
  void update(void Function(ContextSummaryInsightsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContextSummaryInsightsInner build() => _build();

  _$ContextSummaryInsightsInner _build() {
    final _$result =
        _$v ??
        _$ContextSummaryInsightsInner._(
          ref: BuiltValueNullFieldError.checkNotNull(
            ref,
            r'ContextSummaryInsightsInner',
            'ref',
          ),
          kind: BuiltValueNullFieldError.checkNotNull(
            kind,
            r'ContextSummaryInsightsInner',
            'kind',
          ),
          title: BuiltValueNullFieldError.checkNotNull(
            title,
            r'ContextSummaryInsightsInner',
            'title',
          ),
          probability: probability,
          estimativeTerm: estimativeTerm,
          issuer: issuer,
          baseRate: baseRate,
          knowledgeCutoff: knowledgeCutoff,
          at: at,
          textOrigin: textOrigin,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

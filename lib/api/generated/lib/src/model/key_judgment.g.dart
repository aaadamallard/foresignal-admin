// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_judgment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const KeyJudgmentTextOriginEnum _$keyJudgmentTextOriginEnum_deterministic =
    const KeyJudgmentTextOriginEnum._('deterministic');
const KeyJudgmentTextOriginEnum _$keyJudgmentTextOriginEnum_llm =
    const KeyJudgmentTextOriginEnum._('llm');

KeyJudgmentTextOriginEnum _$keyJudgmentTextOriginEnumValueOf(String name) {
  switch (name) {
    case 'deterministic':
      return _$keyJudgmentTextOriginEnum_deterministic;
    case 'llm':
      return _$keyJudgmentTextOriginEnum_llm;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<KeyJudgmentTextOriginEnum> _$keyJudgmentTextOriginEnumValues =
    BuiltSet<KeyJudgmentTextOriginEnum>(const <KeyJudgmentTextOriginEnum>[
  _$keyJudgmentTextOriginEnum_deterministic,
  _$keyJudgmentTextOriginEnum_llm,
]);

Serializer<KeyJudgmentTextOriginEnum> _$keyJudgmentTextOriginEnumSerializer =
    _$KeyJudgmentTextOriginEnumSerializer();

class _$KeyJudgmentTextOriginEnumSerializer
    implements PrimitiveSerializer<KeyJudgmentTextOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'deterministic': 'deterministic',
    'llm': 'llm',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'deterministic': 'deterministic',
    'llm': 'llm',
  };

  @override
  final Iterable<Type> types = const <Type>[KeyJudgmentTextOriginEnum];
  @override
  final String wireName = 'KeyJudgmentTextOriginEnum';

  @override
  Object serialize(Serializers serializers, KeyJudgmentTextOriginEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  KeyJudgmentTextOriginEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      KeyJudgmentTextOriginEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$KeyJudgment extends KeyJudgment {
  @override
  final String? id;
  @override
  final String text;
  @override
  final num? probability;
  @override
  final IcdTerm? estimativeTerm;
  @override
  final ConfidenceLevel? confidence;
  @override
  final String? confidenceStatement;
  @override
  final BuiltList<String> citations;
  @override
  final String? hypothesisSetId;
  @override
  final String? questionId;
  @override
  final KeyJudgmentTextOriginEnum textOrigin;
  @override
  final KeyJudgmentChange? change;
  @override
  final bool? downgraded;
  @override
  final BuiltList<String>? warnings;

  factory _$KeyJudgment([void Function(KeyJudgmentBuilder)? updates]) =>
      (KeyJudgmentBuilder()..update(updates))._build();

  _$KeyJudgment._(
      {this.id,
      required this.text,
      this.probability,
      this.estimativeTerm,
      this.confidence,
      this.confidenceStatement,
      required this.citations,
      this.hypothesisSetId,
      this.questionId,
      required this.textOrigin,
      this.change,
      this.downgraded,
      this.warnings})
      : super._();
  @override
  KeyJudgment rebuild(void Function(KeyJudgmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeyJudgmentBuilder toBuilder() => KeyJudgmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeyJudgment &&
        id == other.id &&
        text == other.text &&
        probability == other.probability &&
        estimativeTerm == other.estimativeTerm &&
        confidence == other.confidence &&
        confidenceStatement == other.confidenceStatement &&
        citations == other.citations &&
        hypothesisSetId == other.hypothesisSetId &&
        questionId == other.questionId &&
        textOrigin == other.textOrigin &&
        change == other.change &&
        downgraded == other.downgraded &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, estimativeTerm.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, confidenceStatement.hashCode);
    _$hash = $jc(_$hash, citations.hashCode);
    _$hash = $jc(_$hash, hypothesisSetId.hashCode);
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, textOrigin.hashCode);
    _$hash = $jc(_$hash, change.hashCode);
    _$hash = $jc(_$hash, downgraded.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KeyJudgment')
          ..add('id', id)
          ..add('text', text)
          ..add('probability', probability)
          ..add('estimativeTerm', estimativeTerm)
          ..add('confidence', confidence)
          ..add('confidenceStatement', confidenceStatement)
          ..add('citations', citations)
          ..add('hypothesisSetId', hypothesisSetId)
          ..add('questionId', questionId)
          ..add('textOrigin', textOrigin)
          ..add('change', change)
          ..add('downgraded', downgraded)
          ..add('warnings', warnings))
        .toString();
  }
}

class KeyJudgmentBuilder implements Builder<KeyJudgment, KeyJudgmentBuilder> {
  _$KeyJudgment? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  num? _probability;
  num? get probability => _$this._probability;
  set probability(num? probability) => _$this._probability = probability;

  IcdTerm? _estimativeTerm;
  IcdTerm? get estimativeTerm => _$this._estimativeTerm;
  set estimativeTerm(IcdTerm? estimativeTerm) =>
      _$this._estimativeTerm = estimativeTerm;

  ConfidenceLevel? _confidence;
  ConfidenceLevel? get confidence => _$this._confidence;
  set confidence(ConfidenceLevel? confidence) =>
      _$this._confidence = confidence;

  String? _confidenceStatement;
  String? get confidenceStatement => _$this._confidenceStatement;
  set confidenceStatement(String? confidenceStatement) =>
      _$this._confidenceStatement = confidenceStatement;

  ListBuilder<String>? _citations;
  ListBuilder<String> get citations =>
      _$this._citations ??= ListBuilder<String>();
  set citations(ListBuilder<String>? citations) =>
      _$this._citations = citations;

  String? _hypothesisSetId;
  String? get hypothesisSetId => _$this._hypothesisSetId;
  set hypothesisSetId(String? hypothesisSetId) =>
      _$this._hypothesisSetId = hypothesisSetId;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  KeyJudgmentTextOriginEnum? _textOrigin;
  KeyJudgmentTextOriginEnum? get textOrigin => _$this._textOrigin;
  set textOrigin(KeyJudgmentTextOriginEnum? textOrigin) =>
      _$this._textOrigin = textOrigin;

  KeyJudgmentChangeBuilder? _change;
  KeyJudgmentChangeBuilder get change =>
      _$this._change ??= KeyJudgmentChangeBuilder();
  set change(KeyJudgmentChangeBuilder? change) => _$this._change = change;

  bool? _downgraded;
  bool? get downgraded => _$this._downgraded;
  set downgraded(bool? downgraded) => _$this._downgraded = downgraded;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  KeyJudgmentBuilder() {
    KeyJudgment._defaults(this);
  }

  KeyJudgmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _text = $v.text;
      _probability = $v.probability;
      _estimativeTerm = $v.estimativeTerm;
      _confidence = $v.confidence;
      _confidenceStatement = $v.confidenceStatement;
      _citations = $v.citations.toBuilder();
      _hypothesisSetId = $v.hypothesisSetId;
      _questionId = $v.questionId;
      _textOrigin = $v.textOrigin;
      _change = $v.change?.toBuilder();
      _downgraded = $v.downgraded;
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeyJudgment other) {
    _$v = other as _$KeyJudgment;
  }

  @override
  void update(void Function(KeyJudgmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeyJudgment build() => _build();

  _$KeyJudgment _build() {
    _$KeyJudgment _$result;
    try {
      _$result = _$v ??
          _$KeyJudgment._(
            id: id,
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'KeyJudgment', 'text'),
            probability: probability,
            estimativeTerm: estimativeTerm,
            confidence: confidence,
            confidenceStatement: confidenceStatement,
            citations: citations.build(),
            hypothesisSetId: hypothesisSetId,
            questionId: questionId,
            textOrigin: BuiltValueNullFieldError.checkNotNull(
                textOrigin, r'KeyJudgment', 'textOrigin'),
            change: _change?.build(),
            downgraded: downgraded,
            warnings: _warnings?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'citations';
        citations.build();

        _$failedField = 'change';
        _change?.build();

        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'KeyJudgment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

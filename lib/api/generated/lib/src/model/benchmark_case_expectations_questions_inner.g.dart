// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'benchmark_case_expectations_questions_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BenchmarkCaseExpectationsQuestionsInnerTypeEnum
_$benchmarkCaseExpectationsQuestionsInnerTypeEnum_binary =
    const BenchmarkCaseExpectationsQuestionsInnerTypeEnum._('binary');
const BenchmarkCaseExpectationsQuestionsInnerTypeEnum
_$benchmarkCaseExpectationsQuestionsInnerTypeEnum_numeric =
    const BenchmarkCaseExpectationsQuestionsInnerTypeEnum._('numeric');
const BenchmarkCaseExpectationsQuestionsInnerTypeEnum
_$benchmarkCaseExpectationsQuestionsInnerTypeEnum_unknownDefaultOpenApi =
    const BenchmarkCaseExpectationsQuestionsInnerTypeEnum._(
      'unknownDefaultOpenApi',
    );

BenchmarkCaseExpectationsQuestionsInnerTypeEnum
_$benchmarkCaseExpectationsQuestionsInnerTypeEnumValueOf(String name) {
  switch (name) {
    case 'binary':
      return _$benchmarkCaseExpectationsQuestionsInnerTypeEnum_binary;
    case 'numeric':
      return _$benchmarkCaseExpectationsQuestionsInnerTypeEnum_numeric;
    case 'unknownDefaultOpenApi':
      return _$benchmarkCaseExpectationsQuestionsInnerTypeEnum_unknownDefaultOpenApi;
    default:
      return _$benchmarkCaseExpectationsQuestionsInnerTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BenchmarkCaseExpectationsQuestionsInnerTypeEnum>
_$benchmarkCaseExpectationsQuestionsInnerTypeEnumValues =
    BuiltSet<BenchmarkCaseExpectationsQuestionsInnerTypeEnum>(
      const <BenchmarkCaseExpectationsQuestionsInnerTypeEnum>[
        _$benchmarkCaseExpectationsQuestionsInnerTypeEnum_binary,
        _$benchmarkCaseExpectationsQuestionsInnerTypeEnum_numeric,
        _$benchmarkCaseExpectationsQuestionsInnerTypeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<BenchmarkCaseExpectationsQuestionsInnerTypeEnum>
_$benchmarkCaseExpectationsQuestionsInnerTypeEnumSerializer =
    _$BenchmarkCaseExpectationsQuestionsInnerTypeEnumSerializer();

class _$BenchmarkCaseExpectationsQuestionsInnerTypeEnumSerializer
    implements
        PrimitiveSerializer<BenchmarkCaseExpectationsQuestionsInnerTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'binary': 'binary',
    'numeric': 'numeric',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'binary': 'binary',
    'numeric': 'numeric',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    BenchmarkCaseExpectationsQuestionsInnerTypeEnum,
  ];
  @override
  final String wireName = 'BenchmarkCaseExpectationsQuestionsInnerTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkCaseExpectationsQuestionsInnerTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BenchmarkCaseExpectationsQuestionsInnerTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BenchmarkCaseExpectationsQuestionsInnerTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BenchmarkCaseExpectationsQuestionsInner
    extends BenchmarkCaseExpectationsQuestionsInner {
  @override
  final String text;
  @override
  final BenchmarkCaseExpectationsQuestionsInnerTypeEnum type;
  @override
  final JsonObject? outcome;
  @override
  final DateTime? resolvedAt;

  factory _$BenchmarkCaseExpectationsQuestionsInner([
    void Function(BenchmarkCaseExpectationsQuestionsInnerBuilder)? updates,
  ]) => (BenchmarkCaseExpectationsQuestionsInnerBuilder()..update(updates))
      ._build();

  _$BenchmarkCaseExpectationsQuestionsInner._({
    required this.text,
    required this.type,
    this.outcome,
    this.resolvedAt,
  }) : super._();
  @override
  BenchmarkCaseExpectationsQuestionsInner rebuild(
    void Function(BenchmarkCaseExpectationsQuestionsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BenchmarkCaseExpectationsQuestionsInnerBuilder toBuilder() =>
      BenchmarkCaseExpectationsQuestionsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BenchmarkCaseExpectationsQuestionsInner &&
        text == other.text &&
        type == other.type &&
        outcome == other.outcome &&
        resolvedAt == other.resolvedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, outcome.hashCode);
    _$hash = $jc(_$hash, resolvedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BenchmarkCaseExpectationsQuestionsInner',
          )
          ..add('text', text)
          ..add('type', type)
          ..add('outcome', outcome)
          ..add('resolvedAt', resolvedAt))
        .toString();
  }
}

class BenchmarkCaseExpectationsQuestionsInnerBuilder
    implements
        Builder<
          BenchmarkCaseExpectationsQuestionsInner,
          BenchmarkCaseExpectationsQuestionsInnerBuilder
        > {
  _$BenchmarkCaseExpectationsQuestionsInner? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  BenchmarkCaseExpectationsQuestionsInnerTypeEnum? _type;
  BenchmarkCaseExpectationsQuestionsInnerTypeEnum? get type => _$this._type;
  set type(BenchmarkCaseExpectationsQuestionsInnerTypeEnum? type) =>
      _$this._type = type;

  JsonObject? _outcome;
  JsonObject? get outcome => _$this._outcome;
  set outcome(JsonObject? outcome) => _$this._outcome = outcome;

  DateTime? _resolvedAt;
  DateTime? get resolvedAt => _$this._resolvedAt;
  set resolvedAt(DateTime? resolvedAt) => _$this._resolvedAt = resolvedAt;

  BenchmarkCaseExpectationsQuestionsInnerBuilder() {
    BenchmarkCaseExpectationsQuestionsInner._defaults(this);
  }

  BenchmarkCaseExpectationsQuestionsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _type = $v.type;
      _outcome = $v.outcome;
      _resolvedAt = $v.resolvedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BenchmarkCaseExpectationsQuestionsInner other) {
    _$v = other as _$BenchmarkCaseExpectationsQuestionsInner;
  }

  @override
  void update(
    void Function(BenchmarkCaseExpectationsQuestionsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  BenchmarkCaseExpectationsQuestionsInner build() => _build();

  _$BenchmarkCaseExpectationsQuestionsInner _build() {
    final _$result =
        _$v ??
        _$BenchmarkCaseExpectationsQuestionsInner._(
          text: BuiltValueNullFieldError.checkNotNull(
            text,
            r'BenchmarkCaseExpectationsQuestionsInner',
            'text',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'BenchmarkCaseExpectationsQuestionsInner',
            'type',
          ),
          outcome: outcome,
          resolvedAt: resolvedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

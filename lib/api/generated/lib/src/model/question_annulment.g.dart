// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_annulment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QuestionAnnulmentCodeEnum _$questionAnnulmentCodeEnum_LOW_DETECTABILITY =
    const QuestionAnnulmentCodeEnum._('LOW_DETECTABILITY');
const QuestionAnnulmentCodeEnum _$questionAnnulmentCodeEnum_COVERAGE_GAP =
    const QuestionAnnulmentCodeEnum._('COVERAGE_GAP');
const QuestionAnnulmentCodeEnum _$questionAnnulmentCodeEnum_OPERATOR =
    const QuestionAnnulmentCodeEnum._('OPERATOR');
const QuestionAnnulmentCodeEnum
_$questionAnnulmentCodeEnum_unknownDefaultOpenApi =
    const QuestionAnnulmentCodeEnum._('unknownDefaultOpenApi');

QuestionAnnulmentCodeEnum _$questionAnnulmentCodeEnumValueOf(String name) {
  switch (name) {
    case 'LOW_DETECTABILITY':
      return _$questionAnnulmentCodeEnum_LOW_DETECTABILITY;
    case 'COVERAGE_GAP':
      return _$questionAnnulmentCodeEnum_COVERAGE_GAP;
    case 'OPERATOR':
      return _$questionAnnulmentCodeEnum_OPERATOR;
    case 'unknownDefaultOpenApi':
      return _$questionAnnulmentCodeEnum_unknownDefaultOpenApi;
    default:
      return _$questionAnnulmentCodeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<QuestionAnnulmentCodeEnum> _$questionAnnulmentCodeEnumValues =
    BuiltSet<QuestionAnnulmentCodeEnum>(const <QuestionAnnulmentCodeEnum>[
      _$questionAnnulmentCodeEnum_LOW_DETECTABILITY,
      _$questionAnnulmentCodeEnum_COVERAGE_GAP,
      _$questionAnnulmentCodeEnum_OPERATOR,
      _$questionAnnulmentCodeEnum_unknownDefaultOpenApi,
    ]);

Serializer<QuestionAnnulmentCodeEnum> _$questionAnnulmentCodeEnumSerializer =
    _$QuestionAnnulmentCodeEnumSerializer();

class _$QuestionAnnulmentCodeEnumSerializer
    implements PrimitiveSerializer<QuestionAnnulmentCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LOW_DETECTABILITY': 'LOW_DETECTABILITY',
    'COVERAGE_GAP': 'COVERAGE_GAP',
    'OPERATOR': 'OPERATOR',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LOW_DETECTABILITY': 'LOW_DETECTABILITY',
    'COVERAGE_GAP': 'COVERAGE_GAP',
    'OPERATOR': 'OPERATOR',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[QuestionAnnulmentCodeEnum];
  @override
  final String wireName = 'QuestionAnnulmentCodeEnum';

  @override
  Object serialize(
    Serializers serializers,
    QuestionAnnulmentCodeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  QuestionAnnulmentCodeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => QuestionAnnulmentCodeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$QuestionAnnulment extends QuestionAnnulment {
  @override
  final QuestionAnnulmentCodeEnum code;
  @override
  final String reason;
  @override
  final DateTime at;
  @override
  final String by;

  factory _$QuestionAnnulment([
    void Function(QuestionAnnulmentBuilder)? updates,
  ]) => (QuestionAnnulmentBuilder()..update(updates))._build();

  _$QuestionAnnulment._({
    required this.code,
    required this.reason,
    required this.at,
    required this.by,
  }) : super._();
  @override
  QuestionAnnulment rebuild(void Function(QuestionAnnulmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionAnnulmentBuilder toBuilder() =>
      QuestionAnnulmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionAnnulment &&
        code == other.code &&
        reason == other.reason &&
        at == other.at &&
        by == other.by;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, by.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionAnnulment')
          ..add('code', code)
          ..add('reason', reason)
          ..add('at', at)
          ..add('by', by))
        .toString();
  }
}

class QuestionAnnulmentBuilder
    implements Builder<QuestionAnnulment, QuestionAnnulmentBuilder> {
  _$QuestionAnnulment? _$v;

  QuestionAnnulmentCodeEnum? _code;
  QuestionAnnulmentCodeEnum? get code => _$this._code;
  set code(QuestionAnnulmentCodeEnum? code) => _$this._code = code;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  String? _by;
  String? get by => _$this._by;
  set by(String? by) => _$this._by = by;

  QuestionAnnulmentBuilder() {
    QuestionAnnulment._defaults(this);
  }

  QuestionAnnulmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _reason = $v.reason;
      _at = $v.at;
      _by = $v.by;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionAnnulment other) {
    _$v = other as _$QuestionAnnulment;
  }

  @override
  void update(void Function(QuestionAnnulmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionAnnulment build() => _build();

  _$QuestionAnnulment _build() {
    final _$result =
        _$v ??
        _$QuestionAnnulment._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'QuestionAnnulment',
            'code',
          ),
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'QuestionAnnulment',
            'reason',
          ),
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'QuestionAnnulment',
            'at',
          ),
          by: BuiltValueNullFieldError.checkNotNull(
            by,
            r'QuestionAnnulment',
            'by',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

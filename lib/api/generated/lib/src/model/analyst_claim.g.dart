// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_claim.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnalystClaimBasisEnum _$analystClaimBasisEnum_evidence =
    const AnalystClaimBasisEnum._('evidence');
const AnalystClaimBasisEnum _$analystClaimBasisEnum_inference =
    const AnalystClaimBasisEnum._('inference');
const AnalystClaimBasisEnum _$analystClaimBasisEnum_speculation =
    const AnalystClaimBasisEnum._('speculation');
const AnalystClaimBasisEnum _$analystClaimBasisEnum_unknownDefaultOpenApi =
    const AnalystClaimBasisEnum._('unknownDefaultOpenApi');

AnalystClaimBasisEnum _$analystClaimBasisEnumValueOf(String name) {
  switch (name) {
    case 'evidence':
      return _$analystClaimBasisEnum_evidence;
    case 'inference':
      return _$analystClaimBasisEnum_inference;
    case 'speculation':
      return _$analystClaimBasisEnum_speculation;
    case 'unknownDefaultOpenApi':
      return _$analystClaimBasisEnum_unknownDefaultOpenApi;
    default:
      return _$analystClaimBasisEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnalystClaimBasisEnum> _$analystClaimBasisEnumValues =
    BuiltSet<AnalystClaimBasisEnum>(const <AnalystClaimBasisEnum>[
      _$analystClaimBasisEnum_evidence,
      _$analystClaimBasisEnum_inference,
      _$analystClaimBasisEnum_speculation,
      _$analystClaimBasisEnum_unknownDefaultOpenApi,
    ]);

Serializer<AnalystClaimBasisEnum> _$analystClaimBasisEnumSerializer =
    _$AnalystClaimBasisEnumSerializer();

class _$AnalystClaimBasisEnumSerializer
    implements PrimitiveSerializer<AnalystClaimBasisEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'evidence': 'evidence',
    'inference': 'inference',
    'speculation': 'speculation',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'evidence': 'evidence',
    'inference': 'inference',
    'speculation': 'speculation',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalystClaimBasisEnum];
  @override
  final String wireName = 'AnalystClaimBasisEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnalystClaimBasisEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnalystClaimBasisEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnalystClaimBasisEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnalystClaim extends AnalystClaim {
  @override
  final String text;
  @override
  final AnalystClaimBasisEnum basis;
  @override
  final BuiltList<String> citations;
  @override
  final bool? downgraded;
  @override
  final String? warning;

  factory _$AnalystClaim([void Function(AnalystClaimBuilder)? updates]) =>
      (AnalystClaimBuilder()..update(updates))._build();

  _$AnalystClaim._({
    required this.text,
    required this.basis,
    required this.citations,
    this.downgraded,
    this.warning,
  }) : super._();
  @override
  AnalystClaim rebuild(void Function(AnalystClaimBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalystClaimBuilder toBuilder() => AnalystClaimBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystClaim &&
        text == other.text &&
        basis == other.basis &&
        citations == other.citations &&
        downgraded == other.downgraded &&
        warning == other.warning;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, basis.hashCode);
    _$hash = $jc(_$hash, citations.hashCode);
    _$hash = $jc(_$hash, downgraded.hashCode);
    _$hash = $jc(_$hash, warning.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalystClaim')
          ..add('text', text)
          ..add('basis', basis)
          ..add('citations', citations)
          ..add('downgraded', downgraded)
          ..add('warning', warning))
        .toString();
  }
}

class AnalystClaimBuilder
    implements Builder<AnalystClaim, AnalystClaimBuilder> {
  _$AnalystClaim? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  AnalystClaimBasisEnum? _basis;
  AnalystClaimBasisEnum? get basis => _$this._basis;
  set basis(AnalystClaimBasisEnum? basis) => _$this._basis = basis;

  ListBuilder<String>? _citations;
  ListBuilder<String> get citations =>
      _$this._citations ??= ListBuilder<String>();
  set citations(ListBuilder<String>? citations) =>
      _$this._citations = citations;

  bool? _downgraded;
  bool? get downgraded => _$this._downgraded;
  set downgraded(bool? downgraded) => _$this._downgraded = downgraded;

  String? _warning;
  String? get warning => _$this._warning;
  set warning(String? warning) => _$this._warning = warning;

  AnalystClaimBuilder() {
    AnalystClaim._defaults(this);
  }

  AnalystClaimBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _basis = $v.basis;
      _citations = $v.citations.toBuilder();
      _downgraded = $v.downgraded;
      _warning = $v.warning;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystClaim other) {
    _$v = other as _$AnalystClaim;
  }

  @override
  void update(void Function(AnalystClaimBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystClaim build() => _build();

  _$AnalystClaim _build() {
    _$AnalystClaim _$result;
    try {
      _$result =
          _$v ??
          _$AnalystClaim._(
            text: BuiltValueNullFieldError.checkNotNull(
              text,
              r'AnalystClaim',
              'text',
            ),
            basis: BuiltValueNullFieldError.checkNotNull(
              basis,
              r'AnalystClaim',
              'basis',
            ),
            citations: citations.build(),
            downgraded: downgraded,
            warning: warning,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'citations';
        citations.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnalystClaim',
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

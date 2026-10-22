// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_suggestion.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChronicleSuggestionTextOriginEnum
_$chronicleSuggestionTextOriginEnum_deterministic =
    const ChronicleSuggestionTextOriginEnum._('deterministic');
const ChronicleSuggestionTextOriginEnum
_$chronicleSuggestionTextOriginEnum_llm =
    const ChronicleSuggestionTextOriginEnum._('llm');

ChronicleSuggestionTextOriginEnum _$chronicleSuggestionTextOriginEnumValueOf(
  String name,
) {
  switch (name) {
    case 'deterministic':
      return _$chronicleSuggestionTextOriginEnum_deterministic;
    case 'llm':
      return _$chronicleSuggestionTextOriginEnum_llm;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChronicleSuggestionTextOriginEnum>
_$chronicleSuggestionTextOriginEnumValues =
    BuiltSet<ChronicleSuggestionTextOriginEnum>(
      const <ChronicleSuggestionTextOriginEnum>[
        _$chronicleSuggestionTextOriginEnum_deterministic,
        _$chronicleSuggestionTextOriginEnum_llm,
      ],
    );

Serializer<ChronicleSuggestionTextOriginEnum>
_$chronicleSuggestionTextOriginEnumSerializer =
    _$ChronicleSuggestionTextOriginEnumSerializer();

class _$ChronicleSuggestionTextOriginEnumSerializer
    implements PrimitiveSerializer<ChronicleSuggestionTextOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'deterministic': 'deterministic',
    'llm': 'llm',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'deterministic': 'deterministic',
    'llm': 'llm',
  };

  @override
  final Iterable<Type> types = const <Type>[ChronicleSuggestionTextOriginEnum];
  @override
  final String wireName = 'ChronicleSuggestionTextOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSuggestionTextOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChronicleSuggestionTextOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChronicleSuggestionTextOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChronicleSuggestion extends ChronicleSuggestion {
  @override
  final ChronicleInput draft;
  @override
  final ChronicleSuggestionEstimate? estimate;
  @override
  final BuiltList<String>? rationale;
  @override
  final ChronicleSuggestionTextOriginEnum? textOrigin;

  factory _$ChronicleSuggestion([
    void Function(ChronicleSuggestionBuilder)? updates,
  ]) => (ChronicleSuggestionBuilder()..update(updates))._build();

  _$ChronicleSuggestion._({
    required this.draft,
    this.estimate,
    this.rationale,
    this.textOrigin,
  }) : super._();
  @override
  ChronicleSuggestion rebuild(
    void Function(ChronicleSuggestionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleSuggestionBuilder toBuilder() =>
      ChronicleSuggestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSuggestion &&
        draft == other.draft &&
        estimate == other.estimate &&
        rationale == other.rationale &&
        textOrigin == other.textOrigin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, draft.hashCode);
    _$hash = $jc(_$hash, estimate.hashCode);
    _$hash = $jc(_$hash, rationale.hashCode);
    _$hash = $jc(_$hash, textOrigin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleSuggestion')
          ..add('draft', draft)
          ..add('estimate', estimate)
          ..add('rationale', rationale)
          ..add('textOrigin', textOrigin))
        .toString();
  }
}

class ChronicleSuggestionBuilder
    implements Builder<ChronicleSuggestion, ChronicleSuggestionBuilder> {
  _$ChronicleSuggestion? _$v;

  ChronicleInputBuilder? _draft;
  ChronicleInputBuilder get draft => _$this._draft ??= ChronicleInputBuilder();
  set draft(ChronicleInputBuilder? draft) => _$this._draft = draft;

  ChronicleSuggestionEstimateBuilder? _estimate;
  ChronicleSuggestionEstimateBuilder get estimate =>
      _$this._estimate ??= ChronicleSuggestionEstimateBuilder();
  set estimate(ChronicleSuggestionEstimateBuilder? estimate) =>
      _$this._estimate = estimate;

  ListBuilder<String>? _rationale;
  ListBuilder<String> get rationale =>
      _$this._rationale ??= ListBuilder<String>();
  set rationale(ListBuilder<String>? rationale) =>
      _$this._rationale = rationale;

  ChronicleSuggestionTextOriginEnum? _textOrigin;
  ChronicleSuggestionTextOriginEnum? get textOrigin => _$this._textOrigin;
  set textOrigin(ChronicleSuggestionTextOriginEnum? textOrigin) =>
      _$this._textOrigin = textOrigin;

  ChronicleSuggestionBuilder() {
    ChronicleSuggestion._defaults(this);
  }

  ChronicleSuggestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _draft = $v.draft.toBuilder();
      _estimate = $v.estimate?.toBuilder();
      _rationale = $v.rationale?.toBuilder();
      _textOrigin = $v.textOrigin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSuggestion other) {
    _$v = other as _$ChronicleSuggestion;
  }

  @override
  void update(void Function(ChronicleSuggestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSuggestion build() => _build();

  _$ChronicleSuggestion _build() {
    _$ChronicleSuggestion _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleSuggestion._(
            draft: draft.build(),
            estimate: _estimate?.build(),
            rationale: _rationale?.build(),
            textOrigin: textOrigin,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'draft';
        draft.build();
        _$failedField = 'estimate';
        _estimate?.build();
        _$failedField = 'rationale';
        _rationale?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleSuggestion',
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

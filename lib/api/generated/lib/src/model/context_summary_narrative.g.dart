// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context_summary_narrative.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ContextSummaryNarrativeTextOriginEnum
_$contextSummaryNarrativeTextOriginEnum_llm =
    const ContextSummaryNarrativeTextOriginEnum._('llm');
const ContextSummaryNarrativeTextOriginEnum
_$contextSummaryNarrativeTextOriginEnum_unknownDefaultOpenApi =
    const ContextSummaryNarrativeTextOriginEnum._('unknownDefaultOpenApi');

ContextSummaryNarrativeTextOriginEnum
_$contextSummaryNarrativeTextOriginEnumValueOf(String name) {
  switch (name) {
    case 'llm':
      return _$contextSummaryNarrativeTextOriginEnum_llm;
    case 'unknownDefaultOpenApi':
      return _$contextSummaryNarrativeTextOriginEnum_unknownDefaultOpenApi;
    default:
      return _$contextSummaryNarrativeTextOriginEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ContextSummaryNarrativeTextOriginEnum>
_$contextSummaryNarrativeTextOriginEnumValues =
    BuiltSet<ContextSummaryNarrativeTextOriginEnum>(
      const <ContextSummaryNarrativeTextOriginEnum>[
        _$contextSummaryNarrativeTextOriginEnum_llm,
        _$contextSummaryNarrativeTextOriginEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ContextSummaryNarrativeTextOriginEnum>
_$contextSummaryNarrativeTextOriginEnumSerializer =
    _$ContextSummaryNarrativeTextOriginEnumSerializer();

class _$ContextSummaryNarrativeTextOriginEnumSerializer
    implements PrimitiveSerializer<ContextSummaryNarrativeTextOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'llm': 'llm',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'llm': 'llm',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ContextSummaryNarrativeTextOriginEnum,
  ];
  @override
  final String wireName = 'ContextSummaryNarrativeTextOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    ContextSummaryNarrativeTextOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ContextSummaryNarrativeTextOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ContextSummaryNarrativeTextOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ContextSummaryNarrative extends ContextSummaryNarrative {
  @override
  final String text;
  @override
  final ContextSummaryNarrativeTextOriginEnum textOrigin;

  factory _$ContextSummaryNarrative([
    void Function(ContextSummaryNarrativeBuilder)? updates,
  ]) => (ContextSummaryNarrativeBuilder()..update(updates))._build();

  _$ContextSummaryNarrative._({required this.text, required this.textOrigin})
    : super._();
  @override
  ContextSummaryNarrative rebuild(
    void Function(ContextSummaryNarrativeBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ContextSummaryNarrativeBuilder toBuilder() =>
      ContextSummaryNarrativeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContextSummaryNarrative &&
        text == other.text &&
        textOrigin == other.textOrigin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, textOrigin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContextSummaryNarrative')
          ..add('text', text)
          ..add('textOrigin', textOrigin))
        .toString();
  }
}

class ContextSummaryNarrativeBuilder
    implements
        Builder<ContextSummaryNarrative, ContextSummaryNarrativeBuilder> {
  _$ContextSummaryNarrative? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  ContextSummaryNarrativeTextOriginEnum? _textOrigin;
  ContextSummaryNarrativeTextOriginEnum? get textOrigin => _$this._textOrigin;
  set textOrigin(ContextSummaryNarrativeTextOriginEnum? textOrigin) =>
      _$this._textOrigin = textOrigin;

  ContextSummaryNarrativeBuilder() {
    ContextSummaryNarrative._defaults(this);
  }

  ContextSummaryNarrativeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _textOrigin = $v.textOrigin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContextSummaryNarrative other) {
    _$v = other as _$ContextSummaryNarrative;
  }

  @override
  void update(void Function(ContextSummaryNarrativeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContextSummaryNarrative build() => _build();

  _$ContextSummaryNarrative _build() {
    final _$result =
        _$v ??
        _$ContextSummaryNarrative._(
          text: BuiltValueNullFieldError.checkNotNull(
            text,
            r'ContextSummaryNarrative',
            'text',
          ),
          textOrigin: BuiltValueNullFieldError.checkNotNull(
            textOrigin,
            r'ContextSummaryNarrative',
            'textOrigin',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

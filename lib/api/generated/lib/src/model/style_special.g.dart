// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style_special.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StyleSpecialKindEnum _$styleSpecialKindEnum_noCoverage =
    const StyleSpecialKindEnum._('noCoverage');
const StyleSpecialKindEnum _$styleSpecialKindEnum_noEcho =
    const StyleSpecialKindEnum._('noEcho');
const StyleSpecialKindEnum _$styleSpecialKindEnum_noData =
    const StyleSpecialKindEnum._('noData');
const StyleSpecialKindEnum _$styleSpecialKindEnum_unknownDefaultOpenApi =
    const StyleSpecialKindEnum._('unknownDefaultOpenApi');

StyleSpecialKindEnum _$styleSpecialKindEnumValueOf(String name) {
  switch (name) {
    case 'noCoverage':
      return _$styleSpecialKindEnum_noCoverage;
    case 'noEcho':
      return _$styleSpecialKindEnum_noEcho;
    case 'noData':
      return _$styleSpecialKindEnum_noData;
    case 'unknownDefaultOpenApi':
      return _$styleSpecialKindEnum_unknownDefaultOpenApi;
    default:
      return _$styleSpecialKindEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<StyleSpecialKindEnum> _$styleSpecialKindEnumValues =
    BuiltSet<StyleSpecialKindEnum>(const <StyleSpecialKindEnum>[
      _$styleSpecialKindEnum_noCoverage,
      _$styleSpecialKindEnum_noEcho,
      _$styleSpecialKindEnum_noData,
      _$styleSpecialKindEnum_unknownDefaultOpenApi,
    ]);

Serializer<StyleSpecialKindEnum> _$styleSpecialKindEnumSerializer =
    _$StyleSpecialKindEnumSerializer();

class _$StyleSpecialKindEnumSerializer
    implements PrimitiveSerializer<StyleSpecialKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'noCoverage': 'noCoverage',
    'noEcho': 'noEcho',
    'noData': 'noData',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'noCoverage': 'noCoverage',
    'noEcho': 'noEcho',
    'noData': 'noData',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[StyleSpecialKindEnum];
  @override
  final String wireName = 'StyleSpecialKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    StyleSpecialKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StyleSpecialKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StyleSpecialKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StyleSpecial extends StyleSpecial {
  @override
  final StyleSpecialKindEnum kind;
  @override
  final String color;
  @override
  final String label;

  factory _$StyleSpecial([void Function(StyleSpecialBuilder)? updates]) =>
      (StyleSpecialBuilder()..update(updates))._build();

  _$StyleSpecial._({
    required this.kind,
    required this.color,
    required this.label,
  }) : super._();
  @override
  StyleSpecial rebuild(void Function(StyleSpecialBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StyleSpecialBuilder toBuilder() => StyleSpecialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StyleSpecial &&
        kind == other.kind &&
        color == other.color &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StyleSpecial')
          ..add('kind', kind)
          ..add('color', color)
          ..add('label', label))
        .toString();
  }
}

class StyleSpecialBuilder
    implements Builder<StyleSpecial, StyleSpecialBuilder> {
  _$StyleSpecial? _$v;

  StyleSpecialKindEnum? _kind;
  StyleSpecialKindEnum? get kind => _$this._kind;
  set kind(StyleSpecialKindEnum? kind) => _$this._kind = kind;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  StyleSpecialBuilder() {
    StyleSpecial._defaults(this);
  }

  StyleSpecialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _color = $v.color;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StyleSpecial other) {
    _$v = other as _$StyleSpecial;
  }

  @override
  void update(void Function(StyleSpecialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StyleSpecial build() => _build();

  _$StyleSpecial _build() {
    final _$result =
        _$v ??
        _$StyleSpecial._(
          kind: BuiltValueNullFieldError.checkNotNull(
            kind,
            r'StyleSpecial',
            'kind',
          ),
          color: BuiltValueNullFieldError.checkNotNull(
            color,
            r'StyleSpecial',
            'color',
          ),
          label: BuiltValueNullFieldError.checkNotNull(
            label,
            r'StyleSpecial',
            'label',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

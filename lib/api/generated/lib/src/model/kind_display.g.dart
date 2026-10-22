// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kind_display.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KindDisplay extends KindDisplay {
  @override
  final String? titleTemplate;
  @override
  final String? icon;
  @override
  final String? colour;
  @override
  final String? sidc;
  @override
  final String? rotateField;
  @override
  final String? sizeField;
  @override
  final String? colorField;
  @override
  final String? iconField;
  @override
  final BuiltMap<String, String>? iconCases;
  @override
  final BuiltMap<String, String>? colorCases;

  factory _$KindDisplay([void Function(KindDisplayBuilder)? updates]) =>
      (KindDisplayBuilder()..update(updates))._build();

  _$KindDisplay._(
      {this.titleTemplate,
      this.icon,
      this.colour,
      this.sidc,
      this.rotateField,
      this.sizeField,
      this.colorField,
      this.iconField,
      this.iconCases,
      this.colorCases})
      : super._();
  @override
  KindDisplay rebuild(void Function(KindDisplayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KindDisplayBuilder toBuilder() => KindDisplayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KindDisplay &&
        titleTemplate == other.titleTemplate &&
        icon == other.icon &&
        colour == other.colour &&
        sidc == other.sidc &&
        rotateField == other.rotateField &&
        sizeField == other.sizeField &&
        colorField == other.colorField &&
        iconField == other.iconField &&
        iconCases == other.iconCases &&
        colorCases == other.colorCases;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, titleTemplate.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, colour.hashCode);
    _$hash = $jc(_$hash, sidc.hashCode);
    _$hash = $jc(_$hash, rotateField.hashCode);
    _$hash = $jc(_$hash, sizeField.hashCode);
    _$hash = $jc(_$hash, colorField.hashCode);
    _$hash = $jc(_$hash, iconField.hashCode);
    _$hash = $jc(_$hash, iconCases.hashCode);
    _$hash = $jc(_$hash, colorCases.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KindDisplay')
          ..add('titleTemplate', titleTemplate)
          ..add('icon', icon)
          ..add('colour', colour)
          ..add('sidc', sidc)
          ..add('rotateField', rotateField)
          ..add('sizeField', sizeField)
          ..add('colorField', colorField)
          ..add('iconField', iconField)
          ..add('iconCases', iconCases)
          ..add('colorCases', colorCases))
        .toString();
  }
}

class KindDisplayBuilder implements Builder<KindDisplay, KindDisplayBuilder> {
  _$KindDisplay? _$v;

  String? _titleTemplate;
  String? get titleTemplate => _$this._titleTemplate;
  set titleTemplate(String? titleTemplate) =>
      _$this._titleTemplate = titleTemplate;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _colour;
  String? get colour => _$this._colour;
  set colour(String? colour) => _$this._colour = colour;

  String? _sidc;
  String? get sidc => _$this._sidc;
  set sidc(String? sidc) => _$this._sidc = sidc;

  String? _rotateField;
  String? get rotateField => _$this._rotateField;
  set rotateField(String? rotateField) => _$this._rotateField = rotateField;

  String? _sizeField;
  String? get sizeField => _$this._sizeField;
  set sizeField(String? sizeField) => _$this._sizeField = sizeField;

  String? _colorField;
  String? get colorField => _$this._colorField;
  set colorField(String? colorField) => _$this._colorField = colorField;

  String? _iconField;
  String? get iconField => _$this._iconField;
  set iconField(String? iconField) => _$this._iconField = iconField;

  MapBuilder<String, String>? _iconCases;
  MapBuilder<String, String> get iconCases =>
      _$this._iconCases ??= MapBuilder<String, String>();
  set iconCases(MapBuilder<String, String>? iconCases) =>
      _$this._iconCases = iconCases;

  MapBuilder<String, String>? _colorCases;
  MapBuilder<String, String> get colorCases =>
      _$this._colorCases ??= MapBuilder<String, String>();
  set colorCases(MapBuilder<String, String>? colorCases) =>
      _$this._colorCases = colorCases;

  KindDisplayBuilder() {
    KindDisplay._defaults(this);
  }

  KindDisplayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _titleTemplate = $v.titleTemplate;
      _icon = $v.icon;
      _colour = $v.colour;
      _sidc = $v.sidc;
      _rotateField = $v.rotateField;
      _sizeField = $v.sizeField;
      _colorField = $v.colorField;
      _iconField = $v.iconField;
      _iconCases = $v.iconCases?.toBuilder();
      _colorCases = $v.colorCases?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KindDisplay other) {
    _$v = other as _$KindDisplay;
  }

  @override
  void update(void Function(KindDisplayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KindDisplay build() => _build();

  _$KindDisplay _build() {
    _$KindDisplay _$result;
    try {
      _$result = _$v ??
          _$KindDisplay._(
            titleTemplate: titleTemplate,
            icon: icon,
            colour: colour,
            sidc: sidc,
            rotateField: rotateField,
            sizeField: sizeField,
            colorField: colorField,
            iconField: iconField,
            iconCases: _iconCases?.build(),
            colorCases: _colorCases?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'iconCases';
        _iconCases?.build();
        _$failedField = 'colorCases';
        _colorCases?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'KindDisplay', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

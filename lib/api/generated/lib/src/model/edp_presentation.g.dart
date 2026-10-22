// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_presentation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdpPresentation extends EdpPresentation {
  @override
  final String? color;
  @override
  final String? icon;
  @override
  final String? labelField;
  @override
  final int? minZoom;
  @override
  final int? maxZoom;
  @override
  final BuiltList<String>? tileProperties;

  factory _$EdpPresentation([void Function(EdpPresentationBuilder)? updates]) =>
      (EdpPresentationBuilder()..update(updates))._build();

  _$EdpPresentation._({
    this.color,
    this.icon,
    this.labelField,
    this.minZoom,
    this.maxZoom,
    this.tileProperties,
  }) : super._();
  @override
  EdpPresentation rebuild(void Function(EdpPresentationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpPresentationBuilder toBuilder() => EdpPresentationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpPresentation &&
        color == other.color &&
        icon == other.icon &&
        labelField == other.labelField &&
        minZoom == other.minZoom &&
        maxZoom == other.maxZoom &&
        tileProperties == other.tileProperties;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, labelField.hashCode);
    _$hash = $jc(_$hash, minZoom.hashCode);
    _$hash = $jc(_$hash, maxZoom.hashCode);
    _$hash = $jc(_$hash, tileProperties.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpPresentation')
          ..add('color', color)
          ..add('icon', icon)
          ..add('labelField', labelField)
          ..add('minZoom', minZoom)
          ..add('maxZoom', maxZoom)
          ..add('tileProperties', tileProperties))
        .toString();
  }
}

class EdpPresentationBuilder
    implements Builder<EdpPresentation, EdpPresentationBuilder> {
  _$EdpPresentation? _$v;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _labelField;
  String? get labelField => _$this._labelField;
  set labelField(String? labelField) => _$this._labelField = labelField;

  int? _minZoom;
  int? get minZoom => _$this._minZoom;
  set minZoom(int? minZoom) => _$this._minZoom = minZoom;

  int? _maxZoom;
  int? get maxZoom => _$this._maxZoom;
  set maxZoom(int? maxZoom) => _$this._maxZoom = maxZoom;

  ListBuilder<String>? _tileProperties;
  ListBuilder<String> get tileProperties =>
      _$this._tileProperties ??= ListBuilder<String>();
  set tileProperties(ListBuilder<String>? tileProperties) =>
      _$this._tileProperties = tileProperties;

  EdpPresentationBuilder() {
    EdpPresentation._defaults(this);
  }

  EdpPresentationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _color = $v.color;
      _icon = $v.icon;
      _labelField = $v.labelField;
      _minZoom = $v.minZoom;
      _maxZoom = $v.maxZoom;
      _tileProperties = $v.tileProperties?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpPresentation other) {
    _$v = other as _$EdpPresentation;
  }

  @override
  void update(void Function(EdpPresentationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpPresentation build() => _build();

  _$EdpPresentation _build() {
    _$EdpPresentation _$result;
    try {
      _$result =
          _$v ??
          _$EdpPresentation._(
            color: color,
            icon: icon,
            labelField: labelField,
            minZoom: minZoom,
            maxZoom: maxZoom,
            tileProperties: _tileProperties?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tileProperties';
        _tileProperties?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdpPresentation',
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

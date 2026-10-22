// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kind_schema.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KindSchema extends KindSchema {
  @override
  final String? dollarSchema;
  @override
  final String? title;
  @override
  final String? type;
  @override
  final BuiltMap<String, JsonObject?>? properties;
  @override
  final KindDisplay? xDisplay;
  @override
  final BuiltList<String>? xConflicts;

  factory _$KindSchema([void Function(KindSchemaBuilder)? updates]) =>
      (KindSchemaBuilder()..update(updates))._build();

  _$KindSchema._({
    this.dollarSchema,
    this.title,
    this.type,
    this.properties,
    this.xDisplay,
    this.xConflicts,
  }) : super._();
  @override
  KindSchema rebuild(void Function(KindSchemaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KindSchemaBuilder toBuilder() => KindSchemaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KindSchema &&
        dollarSchema == other.dollarSchema &&
        title == other.title &&
        type == other.type &&
        properties == other.properties &&
        xDisplay == other.xDisplay &&
        xConflicts == other.xConflicts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dollarSchema.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jc(_$hash, xDisplay.hashCode);
    _$hash = $jc(_$hash, xConflicts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KindSchema')
          ..add('dollarSchema', dollarSchema)
          ..add('title', title)
          ..add('type', type)
          ..add('properties', properties)
          ..add('xDisplay', xDisplay)
          ..add('xConflicts', xConflicts))
        .toString();
  }
}

class KindSchemaBuilder implements Builder<KindSchema, KindSchemaBuilder> {
  _$KindSchema? _$v;

  String? _dollarSchema;
  String? get dollarSchema => _$this._dollarSchema;
  set dollarSchema(String? dollarSchema) => _$this._dollarSchema = dollarSchema;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  MapBuilder<String, JsonObject?>? _properties;
  MapBuilder<String, JsonObject?> get properties =>
      _$this._properties ??= MapBuilder<String, JsonObject?>();
  set properties(MapBuilder<String, JsonObject?>? properties) =>
      _$this._properties = properties;

  KindDisplayBuilder? _xDisplay;
  KindDisplayBuilder get xDisplay => _$this._xDisplay ??= KindDisplayBuilder();
  set xDisplay(KindDisplayBuilder? xDisplay) => _$this._xDisplay = xDisplay;

  ListBuilder<String>? _xConflicts;
  ListBuilder<String> get xConflicts =>
      _$this._xConflicts ??= ListBuilder<String>();
  set xConflicts(ListBuilder<String>? xConflicts) =>
      _$this._xConflicts = xConflicts;

  KindSchemaBuilder() {
    KindSchema._defaults(this);
  }

  KindSchemaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dollarSchema = $v.dollarSchema;
      _title = $v.title;
      _type = $v.type;
      _properties = $v.properties?.toBuilder();
      _xDisplay = $v.xDisplay?.toBuilder();
      _xConflicts = $v.xConflicts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KindSchema other) {
    _$v = other as _$KindSchema;
  }

  @override
  void update(void Function(KindSchemaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KindSchema build() => _build();

  _$KindSchema _build() {
    _$KindSchema _$result;
    try {
      _$result =
          _$v ??
          _$KindSchema._(
            dollarSchema: dollarSchema,
            title: title,
            type: type,
            properties: _properties?.build(),
            xDisplay: _xDisplay?.build(),
            xConflicts: _xConflicts?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'properties';
        _properties?.build();
        _$failedField = 'xDisplay';
        _xDisplay?.build();
        _$failedField = 'xConflicts';
        _xConflicts?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'KindSchema',
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

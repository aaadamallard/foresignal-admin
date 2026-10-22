// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_spec.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FieldSpecTypeEnum _$fieldSpecTypeEnum_STRING =
    const FieldSpecTypeEnum._('STRING');
const FieldSpecTypeEnum _$fieldSpecTypeEnum_INTEGER =
    const FieldSpecTypeEnum._('INTEGER');
const FieldSpecTypeEnum _$fieldSpecTypeEnum_NUMBER =
    const FieldSpecTypeEnum._('NUMBER');
const FieldSpecTypeEnum _$fieldSpecTypeEnum_BOOLEAN =
    const FieldSpecTypeEnum._('BOOLEAN');
const FieldSpecTypeEnum _$fieldSpecTypeEnum_TIMESTAMP =
    const FieldSpecTypeEnum._('TIMESTAMP');
const FieldSpecTypeEnum _$fieldSpecTypeEnum_OBJECT =
    const FieldSpecTypeEnum._('OBJECT');
const FieldSpecTypeEnum _$fieldSpecTypeEnum_ARRAY =
    const FieldSpecTypeEnum._('ARRAY');

FieldSpecTypeEnum _$fieldSpecTypeEnumValueOf(String name) {
  switch (name) {
    case 'STRING':
      return _$fieldSpecTypeEnum_STRING;
    case 'INTEGER':
      return _$fieldSpecTypeEnum_INTEGER;
    case 'NUMBER':
      return _$fieldSpecTypeEnum_NUMBER;
    case 'BOOLEAN':
      return _$fieldSpecTypeEnum_BOOLEAN;
    case 'TIMESTAMP':
      return _$fieldSpecTypeEnum_TIMESTAMP;
    case 'OBJECT':
      return _$fieldSpecTypeEnum_OBJECT;
    case 'ARRAY':
      return _$fieldSpecTypeEnum_ARRAY;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FieldSpecTypeEnum> _$fieldSpecTypeEnumValues =
    BuiltSet<FieldSpecTypeEnum>(const <FieldSpecTypeEnum>[
  _$fieldSpecTypeEnum_STRING,
  _$fieldSpecTypeEnum_INTEGER,
  _$fieldSpecTypeEnum_NUMBER,
  _$fieldSpecTypeEnum_BOOLEAN,
  _$fieldSpecTypeEnum_TIMESTAMP,
  _$fieldSpecTypeEnum_OBJECT,
  _$fieldSpecTypeEnum_ARRAY,
]);

Serializer<FieldSpecTypeEnum> _$fieldSpecTypeEnumSerializer =
    _$FieldSpecTypeEnumSerializer();

class _$FieldSpecTypeEnumSerializer
    implements PrimitiveSerializer<FieldSpecTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'STRING': 'STRING',
    'INTEGER': 'INTEGER',
    'NUMBER': 'NUMBER',
    'BOOLEAN': 'BOOLEAN',
    'TIMESTAMP': 'TIMESTAMP',
    'OBJECT': 'OBJECT',
    'ARRAY': 'ARRAY',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'STRING': 'STRING',
    'INTEGER': 'INTEGER',
    'NUMBER': 'NUMBER',
    'BOOLEAN': 'BOOLEAN',
    'TIMESTAMP': 'TIMESTAMP',
    'OBJECT': 'OBJECT',
    'ARRAY': 'ARRAY',
  };

  @override
  final Iterable<Type> types = const <Type>[FieldSpecTypeEnum];
  @override
  final String wireName = 'FieldSpecTypeEnum';

  @override
  Object serialize(Serializers serializers, FieldSpecTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FieldSpecTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FieldSpecTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FieldSpec extends FieldSpec {
  @override
  final FieldSpecTypeEnum type;
  @override
  final String? unit;
  @override
  final String? unitLabel;
  @override
  final String? label;
  @override
  final String? description;
  @override
  final String? datum;
  @override
  final String? format;
  @override
  final BuiltMap<String, String>? enumLabels;
  @override
  final BuiltList<String>? kinds;
  @override
  final bool? noLink;

  factory _$FieldSpec([void Function(FieldSpecBuilder)? updates]) =>
      (FieldSpecBuilder()..update(updates))._build();

  _$FieldSpec._(
      {required this.type,
      this.unit,
      this.unitLabel,
      this.label,
      this.description,
      this.datum,
      this.format,
      this.enumLabels,
      this.kinds,
      this.noLink})
      : super._();
  @override
  FieldSpec rebuild(void Function(FieldSpecBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldSpecBuilder toBuilder() => FieldSpecBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldSpec &&
        type == other.type &&
        unit == other.unit &&
        unitLabel == other.unitLabel &&
        label == other.label &&
        description == other.description &&
        datum == other.datum &&
        format == other.format &&
        enumLabels == other.enumLabels &&
        kinds == other.kinds &&
        noLink == other.noLink;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, unitLabel.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, datum.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, enumLabels.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, noLink.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FieldSpec')
          ..add('type', type)
          ..add('unit', unit)
          ..add('unitLabel', unitLabel)
          ..add('label', label)
          ..add('description', description)
          ..add('datum', datum)
          ..add('format', format)
          ..add('enumLabels', enumLabels)
          ..add('kinds', kinds)
          ..add('noLink', noLink))
        .toString();
  }
}

class FieldSpecBuilder implements Builder<FieldSpec, FieldSpecBuilder> {
  _$FieldSpec? _$v;

  FieldSpecTypeEnum? _type;
  FieldSpecTypeEnum? get type => _$this._type;
  set type(FieldSpecTypeEnum? type) => _$this._type = type;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  String? _unitLabel;
  String? get unitLabel => _$this._unitLabel;
  set unitLabel(String? unitLabel) => _$this._unitLabel = unitLabel;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _datum;
  String? get datum => _$this._datum;
  set datum(String? datum) => _$this._datum = datum;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  MapBuilder<String, String>? _enumLabels;
  MapBuilder<String, String> get enumLabels =>
      _$this._enumLabels ??= MapBuilder<String, String>();
  set enumLabels(MapBuilder<String, String>? enumLabels) =>
      _$this._enumLabels = enumLabels;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  bool? _noLink;
  bool? get noLink => _$this._noLink;
  set noLink(bool? noLink) => _$this._noLink = noLink;

  FieldSpecBuilder() {
    FieldSpec._defaults(this);
  }

  FieldSpecBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _unit = $v.unit;
      _unitLabel = $v.unitLabel;
      _label = $v.label;
      _description = $v.description;
      _datum = $v.datum;
      _format = $v.format;
      _enumLabels = $v.enumLabels?.toBuilder();
      _kinds = $v.kinds?.toBuilder();
      _noLink = $v.noLink;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldSpec other) {
    _$v = other as _$FieldSpec;
  }

  @override
  void update(void Function(FieldSpecBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FieldSpec build() => _build();

  _$FieldSpec _build() {
    _$FieldSpec _$result;
    try {
      _$result = _$v ??
          _$FieldSpec._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'FieldSpec', 'type'),
            unit: unit,
            unitLabel: unitLabel,
            label: label,
            description: description,
            datum: datum,
            format: format,
            enumLabels: _enumLabels?.build(),
            kinds: _kinds?.build(),
            noLink: noLink,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enumLabels';
        _enumLabels?.build();
        _$failedField = 'kinds';
        _kinds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FieldSpec', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

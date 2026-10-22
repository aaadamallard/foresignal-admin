// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_disagreement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ModelDisagreementFieldsEnum _$modelDisagreementFieldsEnum_gust =
    const ModelDisagreementFieldsEnum._('gust');
const ModelDisagreementFieldsEnum _$modelDisagreementFieldsEnum_precip24h =
    const ModelDisagreementFieldsEnum._('precip24h');
const ModelDisagreementFieldsEnum _$modelDisagreementFieldsEnum_t2mMax =
    const ModelDisagreementFieldsEnum._('t2mMax');

ModelDisagreementFieldsEnum _$modelDisagreementFieldsEnumValueOf(String name) {
  switch (name) {
    case 'gust':
      return _$modelDisagreementFieldsEnum_gust;
    case 'precip24h':
      return _$modelDisagreementFieldsEnum_precip24h;
    case 't2mMax':
      return _$modelDisagreementFieldsEnum_t2mMax;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ModelDisagreementFieldsEnum>
    _$modelDisagreementFieldsEnumValues =
    BuiltSet<ModelDisagreementFieldsEnum>(const <ModelDisagreementFieldsEnum>[
  _$modelDisagreementFieldsEnum_gust,
  _$modelDisagreementFieldsEnum_precip24h,
  _$modelDisagreementFieldsEnum_t2mMax,
]);

Serializer<ModelDisagreementFieldsEnum>
    _$modelDisagreementFieldsEnumSerializer =
    _$ModelDisagreementFieldsEnumSerializer();

class _$ModelDisagreementFieldsEnumSerializer
    implements PrimitiveSerializer<ModelDisagreementFieldsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'gust': 'gust',
    'precip24h': 'precip24h',
    't2mMax': 't2mMax',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'gust': 'gust',
    'precip24h': 'precip24h',
    't2mMax': 't2mMax',
  };

  @override
  final Iterable<Type> types = const <Type>[ModelDisagreementFieldsEnum];
  @override
  final String wireName = 'ModelDisagreementFieldsEnum';

  @override
  Object serialize(Serializers serializers, ModelDisagreementFieldsEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ModelDisagreementFieldsEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ModelDisagreementFieldsEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ModelDisagreement extends ModelDisagreement {
  @override
  final BuiltList<ModelDisagreementFieldsEnum> fields;
  @override
  final BuiltMap<String, num> spread;
  @override
  final BuiltList<String> models;

  factory _$ModelDisagreement(
          [void Function(ModelDisagreementBuilder)? updates]) =>
      (ModelDisagreementBuilder()..update(updates))._build();

  _$ModelDisagreement._(
      {required this.fields, required this.spread, required this.models})
      : super._();
  @override
  ModelDisagreement rebuild(void Function(ModelDisagreementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModelDisagreementBuilder toBuilder() =>
      ModelDisagreementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelDisagreement &&
        fields == other.fields &&
        spread == other.spread &&
        models == other.models;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jc(_$hash, spread.hashCode);
    _$hash = $jc(_$hash, models.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ModelDisagreement')
          ..add('fields', fields)
          ..add('spread', spread)
          ..add('models', models))
        .toString();
  }
}

class ModelDisagreementBuilder
    implements Builder<ModelDisagreement, ModelDisagreementBuilder> {
  _$ModelDisagreement? _$v;

  ListBuilder<ModelDisagreementFieldsEnum>? _fields;
  ListBuilder<ModelDisagreementFieldsEnum> get fields =>
      _$this._fields ??= ListBuilder<ModelDisagreementFieldsEnum>();
  set fields(ListBuilder<ModelDisagreementFieldsEnum>? fields) =>
      _$this._fields = fields;

  MapBuilder<String, num>? _spread;
  MapBuilder<String, num> get spread =>
      _$this._spread ??= MapBuilder<String, num>();
  set spread(MapBuilder<String, num>? spread) => _$this._spread = spread;

  ListBuilder<String>? _models;
  ListBuilder<String> get models => _$this._models ??= ListBuilder<String>();
  set models(ListBuilder<String>? models) => _$this._models = models;

  ModelDisagreementBuilder() {
    ModelDisagreement._defaults(this);
  }

  ModelDisagreementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fields = $v.fields.toBuilder();
      _spread = $v.spread.toBuilder();
      _models = $v.models.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModelDisagreement other) {
    _$v = other as _$ModelDisagreement;
  }

  @override
  void update(void Function(ModelDisagreementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModelDisagreement build() => _build();

  _$ModelDisagreement _build() {
    _$ModelDisagreement _$result;
    try {
      _$result = _$v ??
          _$ModelDisagreement._(
            fields: fields.build(),
            spread: spread.build(),
            models: models.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fields';
        fields.build();
        _$failedField = 'spread';
        spread.build();
        _$failedField = 'models';
        models.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ModelDisagreement', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

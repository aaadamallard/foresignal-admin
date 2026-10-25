// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapping_preset.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MappingPresetObservedAtModeEnum
_$mappingPresetObservedAtModeEnum_UPSTREAM =
    const MappingPresetObservedAtModeEnum._('UPSTREAM');
const MappingPresetObservedAtModeEnum
_$mappingPresetObservedAtModeEnum_RECEIVED =
    const MappingPresetObservedAtModeEnum._('RECEIVED');
const MappingPresetObservedAtModeEnum
_$mappingPresetObservedAtModeEnum_unknownDefaultOpenApi =
    const MappingPresetObservedAtModeEnum._('unknownDefaultOpenApi');

MappingPresetObservedAtModeEnum _$mappingPresetObservedAtModeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'UPSTREAM':
      return _$mappingPresetObservedAtModeEnum_UPSTREAM;
    case 'RECEIVED':
      return _$mappingPresetObservedAtModeEnum_RECEIVED;
    case 'unknownDefaultOpenApi':
      return _$mappingPresetObservedAtModeEnum_unknownDefaultOpenApi;
    default:
      return _$mappingPresetObservedAtModeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<MappingPresetObservedAtModeEnum>
_$mappingPresetObservedAtModeEnumValues =
    BuiltSet<MappingPresetObservedAtModeEnum>(
      const <MappingPresetObservedAtModeEnum>[
        _$mappingPresetObservedAtModeEnum_UPSTREAM,
        _$mappingPresetObservedAtModeEnum_RECEIVED,
        _$mappingPresetObservedAtModeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<MappingPresetObservedAtModeEnum>
_$mappingPresetObservedAtModeEnumSerializer =
    _$MappingPresetObservedAtModeEnumSerializer();

class _$MappingPresetObservedAtModeEnumSerializer
    implements PrimitiveSerializer<MappingPresetObservedAtModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UPSTREAM': 'UPSTREAM',
    'RECEIVED': 'RECEIVED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UPSTREAM': 'UPSTREAM',
    'RECEIVED': 'RECEIVED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MappingPresetObservedAtModeEnum];
  @override
  final String wireName = 'MappingPresetObservedAtModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    MappingPresetObservedAtModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MappingPresetObservedAtModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MappingPresetObservedAtModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MappingPreset extends MappingPreset {
  @override
  final String id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String format;
  @override
  final RecordMapping? mapping;
  @override
  final BuiltList<String> kinds;
  @override
  final BuiltMap<String, FieldSpec>? fieldSpecs;
  @override
  final MappingPresetObservedAtModeEnum observedAtMode;
  @override
  final String? ttl;
  @override
  final IngestPolicy? ingestPolicy;
  @override
  final BuiltList<String>? significantFields;
  @override
  final BuiltList<String>? volatileFields;
  @override
  final bool? private;
  @override
  final bool? allowPathKey;
  @override
  final bool? allowsGet;
  @override
  final BuiltList<ParamSpec> params;
  @override
  final MappingPresetSetup setup;

  factory _$MappingPreset([void Function(MappingPresetBuilder)? updates]) =>
      (MappingPresetBuilder()..update(updates))._build();

  _$MappingPreset._({
    required this.id,
    required this.title,
    this.description,
    required this.format,
    this.mapping,
    required this.kinds,
    this.fieldSpecs,
    required this.observedAtMode,
    this.ttl,
    this.ingestPolicy,
    this.significantFields,
    this.volatileFields,
    this.private,
    this.allowPathKey,
    this.allowsGet,
    required this.params,
    required this.setup,
  }) : super._();
  @override
  MappingPreset rebuild(void Function(MappingPresetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MappingPresetBuilder toBuilder() => MappingPresetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MappingPreset &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        format == other.format &&
        mapping == other.mapping &&
        kinds == other.kinds &&
        fieldSpecs == other.fieldSpecs &&
        observedAtMode == other.observedAtMode &&
        ttl == other.ttl &&
        ingestPolicy == other.ingestPolicy &&
        significantFields == other.significantFields &&
        volatileFields == other.volatileFields &&
        private == other.private &&
        allowPathKey == other.allowPathKey &&
        allowsGet == other.allowsGet &&
        params == other.params &&
        setup == other.setup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, mapping.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, fieldSpecs.hashCode);
    _$hash = $jc(_$hash, observedAtMode.hashCode);
    _$hash = $jc(_$hash, ttl.hashCode);
    _$hash = $jc(_$hash, ingestPolicy.hashCode);
    _$hash = $jc(_$hash, significantFields.hashCode);
    _$hash = $jc(_$hash, volatileFields.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, allowPathKey.hashCode);
    _$hash = $jc(_$hash, allowsGet.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, setup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MappingPreset')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('format', format)
          ..add('mapping', mapping)
          ..add('kinds', kinds)
          ..add('fieldSpecs', fieldSpecs)
          ..add('observedAtMode', observedAtMode)
          ..add('ttl', ttl)
          ..add('ingestPolicy', ingestPolicy)
          ..add('significantFields', significantFields)
          ..add('volatileFields', volatileFields)
          ..add('private', private)
          ..add('allowPathKey', allowPathKey)
          ..add('allowsGet', allowsGet)
          ..add('params', params)
          ..add('setup', setup))
        .toString();
  }
}

class MappingPresetBuilder
    implements Builder<MappingPreset, MappingPresetBuilder> {
  _$MappingPreset? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  RecordMappingBuilder? _mapping;
  RecordMappingBuilder get mapping =>
      _$this._mapping ??= RecordMappingBuilder();
  set mapping(RecordMappingBuilder? mapping) => _$this._mapping = mapping;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  MapBuilder<String, FieldSpec>? _fieldSpecs;
  MapBuilder<String, FieldSpec> get fieldSpecs =>
      _$this._fieldSpecs ??= MapBuilder<String, FieldSpec>();
  set fieldSpecs(MapBuilder<String, FieldSpec>? fieldSpecs) =>
      _$this._fieldSpecs = fieldSpecs;

  MappingPresetObservedAtModeEnum? _observedAtMode;
  MappingPresetObservedAtModeEnum? get observedAtMode => _$this._observedAtMode;
  set observedAtMode(MappingPresetObservedAtModeEnum? observedAtMode) =>
      _$this._observedAtMode = observedAtMode;

  String? _ttl;
  String? get ttl => _$this._ttl;
  set ttl(String? ttl) => _$this._ttl = ttl;

  IngestPolicyBuilder? _ingestPolicy;
  IngestPolicyBuilder get ingestPolicy =>
      _$this._ingestPolicy ??= IngestPolicyBuilder();
  set ingestPolicy(IngestPolicyBuilder? ingestPolicy) =>
      _$this._ingestPolicy = ingestPolicy;

  ListBuilder<String>? _significantFields;
  ListBuilder<String> get significantFields =>
      _$this._significantFields ??= ListBuilder<String>();
  set significantFields(ListBuilder<String>? significantFields) =>
      _$this._significantFields = significantFields;

  ListBuilder<String>? _volatileFields;
  ListBuilder<String> get volatileFields =>
      _$this._volatileFields ??= ListBuilder<String>();
  set volatileFields(ListBuilder<String>? volatileFields) =>
      _$this._volatileFields = volatileFields;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  bool? _allowPathKey;
  bool? get allowPathKey => _$this._allowPathKey;
  set allowPathKey(bool? allowPathKey) => _$this._allowPathKey = allowPathKey;

  bool? _allowsGet;
  bool? get allowsGet => _$this._allowsGet;
  set allowsGet(bool? allowsGet) => _$this._allowsGet = allowsGet;

  ListBuilder<ParamSpec>? _params;
  ListBuilder<ParamSpec> get params =>
      _$this._params ??= ListBuilder<ParamSpec>();
  set params(ListBuilder<ParamSpec>? params) => _$this._params = params;

  MappingPresetSetupBuilder? _setup;
  MappingPresetSetupBuilder get setup =>
      _$this._setup ??= MappingPresetSetupBuilder();
  set setup(MappingPresetSetupBuilder? setup) => _$this._setup = setup;

  MappingPresetBuilder() {
    MappingPreset._defaults(this);
  }

  MappingPresetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _format = $v.format;
      _mapping = $v.mapping?.toBuilder();
      _kinds = $v.kinds.toBuilder();
      _fieldSpecs = $v.fieldSpecs?.toBuilder();
      _observedAtMode = $v.observedAtMode;
      _ttl = $v.ttl;
      _ingestPolicy = $v.ingestPolicy?.toBuilder();
      _significantFields = $v.significantFields?.toBuilder();
      _volatileFields = $v.volatileFields?.toBuilder();
      _private = $v.private;
      _allowPathKey = $v.allowPathKey;
      _allowsGet = $v.allowsGet;
      _params = $v.params.toBuilder();
      _setup = $v.setup.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MappingPreset other) {
    _$v = other as _$MappingPreset;
  }

  @override
  void update(void Function(MappingPresetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MappingPreset build() => _build();

  _$MappingPreset _build() {
    _$MappingPreset _$result;
    try {
      _$result =
          _$v ??
          _$MappingPreset._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'MappingPreset',
              'id',
            ),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'MappingPreset',
              'title',
            ),
            description: description,
            format: BuiltValueNullFieldError.checkNotNull(
              format,
              r'MappingPreset',
              'format',
            ),
            mapping: _mapping?.build(),
            kinds: kinds.build(),
            fieldSpecs: _fieldSpecs?.build(),
            observedAtMode: BuiltValueNullFieldError.checkNotNull(
              observedAtMode,
              r'MappingPreset',
              'observedAtMode',
            ),
            ttl: ttl,
            ingestPolicy: _ingestPolicy?.build(),
            significantFields: _significantFields?.build(),
            volatileFields: _volatileFields?.build(),
            private: private,
            allowPathKey: allowPathKey,
            allowsGet: allowsGet,
            params: params.build(),
            setup: setup.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mapping';
        _mapping?.build();
        _$failedField = 'kinds';
        kinds.build();
        _$failedField = 'fieldSpecs';
        _fieldSpecs?.build();

        _$failedField = 'ingestPolicy';
        _ingestPolicy?.build();
        _$failedField = 'significantFields';
        _significantFields?.build();
        _$failedField = 'volatileFields';
        _volatileFields?.build();

        _$failedField = 'params';
        params.build();
        _$failedField = 'setup';
        setup.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MappingPreset',
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

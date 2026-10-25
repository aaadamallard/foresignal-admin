// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_source_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CustomSourceCreatedObservedAtModeEnum
_$customSourceCreatedObservedAtModeEnum_UPSTREAM =
    const CustomSourceCreatedObservedAtModeEnum._('UPSTREAM');
const CustomSourceCreatedObservedAtModeEnum
_$customSourceCreatedObservedAtModeEnum_RECEIVED =
    const CustomSourceCreatedObservedAtModeEnum._('RECEIVED');
const CustomSourceCreatedObservedAtModeEnum
_$customSourceCreatedObservedAtModeEnum_unknownDefaultOpenApi =
    const CustomSourceCreatedObservedAtModeEnum._('unknownDefaultOpenApi');

CustomSourceCreatedObservedAtModeEnum
_$customSourceCreatedObservedAtModeEnumValueOf(String name) {
  switch (name) {
    case 'UPSTREAM':
      return _$customSourceCreatedObservedAtModeEnum_UPSTREAM;
    case 'RECEIVED':
      return _$customSourceCreatedObservedAtModeEnum_RECEIVED;
    case 'unknownDefaultOpenApi':
      return _$customSourceCreatedObservedAtModeEnum_unknownDefaultOpenApi;
    default:
      return _$customSourceCreatedObservedAtModeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CustomSourceCreatedObservedAtModeEnum>
_$customSourceCreatedObservedAtModeEnumValues =
    BuiltSet<CustomSourceCreatedObservedAtModeEnum>(
      const <CustomSourceCreatedObservedAtModeEnum>[
        _$customSourceCreatedObservedAtModeEnum_UPSTREAM,
        _$customSourceCreatedObservedAtModeEnum_RECEIVED,
        _$customSourceCreatedObservedAtModeEnum_unknownDefaultOpenApi,
      ],
    );

const CustomSourceCreatedTtlAnchorEnum
_$customSourceCreatedTtlAnchorEnum_RECEIVED =
    const CustomSourceCreatedTtlAnchorEnum._('RECEIVED');
const CustomSourceCreatedTtlAnchorEnum
_$customSourceCreatedTtlAnchorEnum_OBSERVED =
    const CustomSourceCreatedTtlAnchorEnum._('OBSERVED');
const CustomSourceCreatedTtlAnchorEnum
_$customSourceCreatedTtlAnchorEnum_unknownDefaultOpenApi =
    const CustomSourceCreatedTtlAnchorEnum._('unknownDefaultOpenApi');

CustomSourceCreatedTtlAnchorEnum _$customSourceCreatedTtlAnchorEnumValueOf(
  String name,
) {
  switch (name) {
    case 'RECEIVED':
      return _$customSourceCreatedTtlAnchorEnum_RECEIVED;
    case 'OBSERVED':
      return _$customSourceCreatedTtlAnchorEnum_OBSERVED;
    case 'unknownDefaultOpenApi':
      return _$customSourceCreatedTtlAnchorEnum_unknownDefaultOpenApi;
    default:
      return _$customSourceCreatedTtlAnchorEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CustomSourceCreatedTtlAnchorEnum>
_$customSourceCreatedTtlAnchorEnumValues =
    BuiltSet<CustomSourceCreatedTtlAnchorEnum>(
      const <CustomSourceCreatedTtlAnchorEnum>[
        _$customSourceCreatedTtlAnchorEnum_RECEIVED,
        _$customSourceCreatedTtlAnchorEnum_OBSERVED,
        _$customSourceCreatedTtlAnchorEnum_unknownDefaultOpenApi,
      ],
    );

const CustomSourceCreatedProfileEnum
_$customSourceCreatedProfileEnum_personalLocation =
    const CustomSourceCreatedProfileEnum._('personalLocation');
const CustomSourceCreatedProfileEnum
_$customSourceCreatedProfileEnum_unknownDefaultOpenApi =
    const CustomSourceCreatedProfileEnum._('unknownDefaultOpenApi');

CustomSourceCreatedProfileEnum _$customSourceCreatedProfileEnumValueOf(
  String name,
) {
  switch (name) {
    case 'personalLocation':
      return _$customSourceCreatedProfileEnum_personalLocation;
    case 'unknownDefaultOpenApi':
      return _$customSourceCreatedProfileEnum_unknownDefaultOpenApi;
    default:
      return _$customSourceCreatedProfileEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CustomSourceCreatedProfileEnum>
_$customSourceCreatedProfileEnumValues =
    BuiltSet<CustomSourceCreatedProfileEnum>(
      const <CustomSourceCreatedProfileEnum>[
        _$customSourceCreatedProfileEnum_personalLocation,
        _$customSourceCreatedProfileEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<CustomSourceCreatedObservedAtModeEnum>
_$customSourceCreatedObservedAtModeEnumSerializer =
    _$CustomSourceCreatedObservedAtModeEnumSerializer();
Serializer<CustomSourceCreatedTtlAnchorEnum>
_$customSourceCreatedTtlAnchorEnumSerializer =
    _$CustomSourceCreatedTtlAnchorEnumSerializer();
Serializer<CustomSourceCreatedProfileEnum>
_$customSourceCreatedProfileEnumSerializer =
    _$CustomSourceCreatedProfileEnumSerializer();

class _$CustomSourceCreatedObservedAtModeEnumSerializer
    implements PrimitiveSerializer<CustomSourceCreatedObservedAtModeEnum> {
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
  final Iterable<Type> types = const <Type>[
    CustomSourceCreatedObservedAtModeEnum,
  ];
  @override
  final String wireName = 'CustomSourceCreatedObservedAtModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    CustomSourceCreatedObservedAtModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CustomSourceCreatedObservedAtModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CustomSourceCreatedObservedAtModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CustomSourceCreatedTtlAnchorEnumSerializer
    implements PrimitiveSerializer<CustomSourceCreatedTtlAnchorEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'RECEIVED': 'RECEIVED',
    'OBSERVED': 'OBSERVED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RECEIVED': 'RECEIVED',
    'OBSERVED': 'OBSERVED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[CustomSourceCreatedTtlAnchorEnum];
  @override
  final String wireName = 'CustomSourceCreatedTtlAnchorEnum';

  @override
  Object serialize(
    Serializers serializers,
    CustomSourceCreatedTtlAnchorEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CustomSourceCreatedTtlAnchorEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CustomSourceCreatedTtlAnchorEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CustomSourceCreatedProfileEnumSerializer
    implements PrimitiveSerializer<CustomSourceCreatedProfileEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'personalLocation': 'personal-location',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'personal-location': 'personalLocation',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[CustomSourceCreatedProfileEnum];
  @override
  final String wireName = 'CustomSourceCreatedProfileEnum';

  @override
  Object serialize(
    Serializers serializers,
    CustomSourceCreatedProfileEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CustomSourceCreatedProfileEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CustomSourceCreatedProfileEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CustomSourceCreated extends CustomSourceCreated {
  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final BuiltList<String> kinds;
  @override
  final String? attribution;
  @override
  final String? recordTtl;
  @override
  final BuiltList<String>? tileProperties;
  @override
  final BuiltList<String>? searchFields;
  @override
  final BuiltList<String>? embedFields;
  @override
  final String? rankField;
  @override
  final int? rateLimitPerMinute;
  @override
  final CustomSourceCreatedObservedAtModeEnum? observedAtMode;
  @override
  final CustomSourceCreatedTtlAnchorEnum? ttlAnchor;
  @override
  final BuiltList<String>? volatileFields;
  @override
  final BuiltList<String>? significantFields;
  @override
  final String? titleField;
  @override
  final BuiltMap<String, FieldSpec>? fieldSpecs;
  @override
  final bool? private;
  @override
  final String? licence;
  @override
  final int? recordsPerMinute;
  @override
  final BuiltMap<String, BuiltMap<String, JsonObject?>>? formats;
  @override
  final BuiltMap<String, SignatureVerifierConfig>? verifiers;
  @override
  final CustomSourceCreatedProfileEnum? profile;
  @override
  final RecordMapping? mapping;
  @override
  final String? preset;
  @override
  final BuiltMap<String, JsonObject?>? presetParams;
  @override
  final bool? allowPathKey;
  @override
  final BuiltList<String>? ingestAllowCidrs;
  @override
  final bool? captureSamples;
  @override
  final LicenceTerms? licenceTerms;
  @override
  final DateTime createdAt;
  @override
  final DateTime? lastIngestAt;
  @override
  final String? ingestKeyPrefix;
  @override
  final String ingestKey;
  @override
  final MappingPresetSetup? setup;

  factory _$CustomSourceCreated([
    void Function(CustomSourceCreatedBuilder)? updates,
  ]) => (CustomSourceCreatedBuilder()..update(updates))._build();

  _$CustomSourceCreated._({
    required this.id,
    required this.name,
    this.description,
    required this.kinds,
    this.attribution,
    this.recordTtl,
    this.tileProperties,
    this.searchFields,
    this.embedFields,
    this.rankField,
    this.rateLimitPerMinute,
    this.observedAtMode,
    this.ttlAnchor,
    this.volatileFields,
    this.significantFields,
    this.titleField,
    this.fieldSpecs,
    this.private,
    this.licence,
    this.recordsPerMinute,
    this.formats,
    this.verifiers,
    this.profile,
    this.mapping,
    this.preset,
    this.presetParams,
    this.allowPathKey,
    this.ingestAllowCidrs,
    this.captureSamples,
    this.licenceTerms,
    required this.createdAt,
    this.lastIngestAt,
    this.ingestKeyPrefix,
    required this.ingestKey,
    this.setup,
  }) : super._();
  @override
  CustomSourceCreated rebuild(
    void Function(CustomSourceCreatedBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CustomSourceCreatedBuilder toBuilder() =>
      CustomSourceCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomSourceCreated &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        kinds == other.kinds &&
        attribution == other.attribution &&
        recordTtl == other.recordTtl &&
        tileProperties == other.tileProperties &&
        searchFields == other.searchFields &&
        embedFields == other.embedFields &&
        rankField == other.rankField &&
        rateLimitPerMinute == other.rateLimitPerMinute &&
        observedAtMode == other.observedAtMode &&
        ttlAnchor == other.ttlAnchor &&
        volatileFields == other.volatileFields &&
        significantFields == other.significantFields &&
        titleField == other.titleField &&
        fieldSpecs == other.fieldSpecs &&
        private == other.private &&
        licence == other.licence &&
        recordsPerMinute == other.recordsPerMinute &&
        formats == other.formats &&
        verifiers == other.verifiers &&
        profile == other.profile &&
        mapping == other.mapping &&
        preset == other.preset &&
        presetParams == other.presetParams &&
        allowPathKey == other.allowPathKey &&
        ingestAllowCidrs == other.ingestAllowCidrs &&
        captureSamples == other.captureSamples &&
        licenceTerms == other.licenceTerms &&
        createdAt == other.createdAt &&
        lastIngestAt == other.lastIngestAt &&
        ingestKeyPrefix == other.ingestKeyPrefix &&
        ingestKey == other.ingestKey &&
        setup == other.setup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, recordTtl.hashCode);
    _$hash = $jc(_$hash, tileProperties.hashCode);
    _$hash = $jc(_$hash, searchFields.hashCode);
    _$hash = $jc(_$hash, embedFields.hashCode);
    _$hash = $jc(_$hash, rankField.hashCode);
    _$hash = $jc(_$hash, rateLimitPerMinute.hashCode);
    _$hash = $jc(_$hash, observedAtMode.hashCode);
    _$hash = $jc(_$hash, ttlAnchor.hashCode);
    _$hash = $jc(_$hash, volatileFields.hashCode);
    _$hash = $jc(_$hash, significantFields.hashCode);
    _$hash = $jc(_$hash, titleField.hashCode);
    _$hash = $jc(_$hash, fieldSpecs.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, recordsPerMinute.hashCode);
    _$hash = $jc(_$hash, formats.hashCode);
    _$hash = $jc(_$hash, verifiers.hashCode);
    _$hash = $jc(_$hash, profile.hashCode);
    _$hash = $jc(_$hash, mapping.hashCode);
    _$hash = $jc(_$hash, preset.hashCode);
    _$hash = $jc(_$hash, presetParams.hashCode);
    _$hash = $jc(_$hash, allowPathKey.hashCode);
    _$hash = $jc(_$hash, ingestAllowCidrs.hashCode);
    _$hash = $jc(_$hash, captureSamples.hashCode);
    _$hash = $jc(_$hash, licenceTerms.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastIngestAt.hashCode);
    _$hash = $jc(_$hash, ingestKeyPrefix.hashCode);
    _$hash = $jc(_$hash, ingestKey.hashCode);
    _$hash = $jc(_$hash, setup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomSourceCreated')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('kinds', kinds)
          ..add('attribution', attribution)
          ..add('recordTtl', recordTtl)
          ..add('tileProperties', tileProperties)
          ..add('searchFields', searchFields)
          ..add('embedFields', embedFields)
          ..add('rankField', rankField)
          ..add('rateLimitPerMinute', rateLimitPerMinute)
          ..add('observedAtMode', observedAtMode)
          ..add('ttlAnchor', ttlAnchor)
          ..add('volatileFields', volatileFields)
          ..add('significantFields', significantFields)
          ..add('titleField', titleField)
          ..add('fieldSpecs', fieldSpecs)
          ..add('private', private)
          ..add('licence', licence)
          ..add('recordsPerMinute', recordsPerMinute)
          ..add('formats', formats)
          ..add('verifiers', verifiers)
          ..add('profile', profile)
          ..add('mapping', mapping)
          ..add('preset', preset)
          ..add('presetParams', presetParams)
          ..add('allowPathKey', allowPathKey)
          ..add('ingestAllowCidrs', ingestAllowCidrs)
          ..add('captureSamples', captureSamples)
          ..add('licenceTerms', licenceTerms)
          ..add('createdAt', createdAt)
          ..add('lastIngestAt', lastIngestAt)
          ..add('ingestKeyPrefix', ingestKeyPrefix)
          ..add('ingestKey', ingestKey)
          ..add('setup', setup))
        .toString();
  }
}

class CustomSourceCreatedBuilder
    implements Builder<CustomSourceCreated, CustomSourceCreatedBuilder> {
  _$CustomSourceCreated? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  String? _attribution;
  String? get attribution => _$this._attribution;
  set attribution(String? attribution) => _$this._attribution = attribution;

  String? _recordTtl;
  String? get recordTtl => _$this._recordTtl;
  set recordTtl(String? recordTtl) => _$this._recordTtl = recordTtl;

  ListBuilder<String>? _tileProperties;
  ListBuilder<String> get tileProperties =>
      _$this._tileProperties ??= ListBuilder<String>();
  set tileProperties(ListBuilder<String>? tileProperties) =>
      _$this._tileProperties = tileProperties;

  ListBuilder<String>? _searchFields;
  ListBuilder<String> get searchFields =>
      _$this._searchFields ??= ListBuilder<String>();
  set searchFields(ListBuilder<String>? searchFields) =>
      _$this._searchFields = searchFields;

  ListBuilder<String>? _embedFields;
  ListBuilder<String> get embedFields =>
      _$this._embedFields ??= ListBuilder<String>();
  set embedFields(ListBuilder<String>? embedFields) =>
      _$this._embedFields = embedFields;

  String? _rankField;
  String? get rankField => _$this._rankField;
  set rankField(String? rankField) => _$this._rankField = rankField;

  int? _rateLimitPerMinute;
  int? get rateLimitPerMinute => _$this._rateLimitPerMinute;
  set rateLimitPerMinute(int? rateLimitPerMinute) =>
      _$this._rateLimitPerMinute = rateLimitPerMinute;

  CustomSourceCreatedObservedAtModeEnum? _observedAtMode;
  CustomSourceCreatedObservedAtModeEnum? get observedAtMode =>
      _$this._observedAtMode;
  set observedAtMode(CustomSourceCreatedObservedAtModeEnum? observedAtMode) =>
      _$this._observedAtMode = observedAtMode;

  CustomSourceCreatedTtlAnchorEnum? _ttlAnchor;
  CustomSourceCreatedTtlAnchorEnum? get ttlAnchor => _$this._ttlAnchor;
  set ttlAnchor(CustomSourceCreatedTtlAnchorEnum? ttlAnchor) =>
      _$this._ttlAnchor = ttlAnchor;

  ListBuilder<String>? _volatileFields;
  ListBuilder<String> get volatileFields =>
      _$this._volatileFields ??= ListBuilder<String>();
  set volatileFields(ListBuilder<String>? volatileFields) =>
      _$this._volatileFields = volatileFields;

  ListBuilder<String>? _significantFields;
  ListBuilder<String> get significantFields =>
      _$this._significantFields ??= ListBuilder<String>();
  set significantFields(ListBuilder<String>? significantFields) =>
      _$this._significantFields = significantFields;

  String? _titleField;
  String? get titleField => _$this._titleField;
  set titleField(String? titleField) => _$this._titleField = titleField;

  MapBuilder<String, FieldSpec>? _fieldSpecs;
  MapBuilder<String, FieldSpec> get fieldSpecs =>
      _$this._fieldSpecs ??= MapBuilder<String, FieldSpec>();
  set fieldSpecs(MapBuilder<String, FieldSpec>? fieldSpecs) =>
      _$this._fieldSpecs = fieldSpecs;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  String? _licence;
  String? get licence => _$this._licence;
  set licence(String? licence) => _$this._licence = licence;

  int? _recordsPerMinute;
  int? get recordsPerMinute => _$this._recordsPerMinute;
  set recordsPerMinute(int? recordsPerMinute) =>
      _$this._recordsPerMinute = recordsPerMinute;

  MapBuilder<String, BuiltMap<String, JsonObject?>>? _formats;
  MapBuilder<String, BuiltMap<String, JsonObject?>> get formats =>
      _$this._formats ??= MapBuilder<String, BuiltMap<String, JsonObject?>>();
  set formats(MapBuilder<String, BuiltMap<String, JsonObject?>>? formats) =>
      _$this._formats = formats;

  MapBuilder<String, SignatureVerifierConfig>? _verifiers;
  MapBuilder<String, SignatureVerifierConfig> get verifiers =>
      _$this._verifiers ??= MapBuilder<String, SignatureVerifierConfig>();
  set verifiers(MapBuilder<String, SignatureVerifierConfig>? verifiers) =>
      _$this._verifiers = verifiers;

  CustomSourceCreatedProfileEnum? _profile;
  CustomSourceCreatedProfileEnum? get profile => _$this._profile;
  set profile(CustomSourceCreatedProfileEnum? profile) =>
      _$this._profile = profile;

  RecordMappingBuilder? _mapping;
  RecordMappingBuilder get mapping =>
      _$this._mapping ??= RecordMappingBuilder();
  set mapping(RecordMappingBuilder? mapping) => _$this._mapping = mapping;

  String? _preset;
  String? get preset => _$this._preset;
  set preset(String? preset) => _$this._preset = preset;

  MapBuilder<String, JsonObject?>? _presetParams;
  MapBuilder<String, JsonObject?> get presetParams =>
      _$this._presetParams ??= MapBuilder<String, JsonObject?>();
  set presetParams(MapBuilder<String, JsonObject?>? presetParams) =>
      _$this._presetParams = presetParams;

  bool? _allowPathKey;
  bool? get allowPathKey => _$this._allowPathKey;
  set allowPathKey(bool? allowPathKey) => _$this._allowPathKey = allowPathKey;

  ListBuilder<String>? _ingestAllowCidrs;
  ListBuilder<String> get ingestAllowCidrs =>
      _$this._ingestAllowCidrs ??= ListBuilder<String>();
  set ingestAllowCidrs(ListBuilder<String>? ingestAllowCidrs) =>
      _$this._ingestAllowCidrs = ingestAllowCidrs;

  bool? _captureSamples;
  bool? get captureSamples => _$this._captureSamples;
  set captureSamples(bool? captureSamples) =>
      _$this._captureSamples = captureSamples;

  LicenceTermsBuilder? _licenceTerms;
  LicenceTermsBuilder get licenceTerms =>
      _$this._licenceTerms ??= LicenceTermsBuilder();
  set licenceTerms(LicenceTermsBuilder? licenceTerms) =>
      _$this._licenceTerms = licenceTerms;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _lastIngestAt;
  DateTime? get lastIngestAt => _$this._lastIngestAt;
  set lastIngestAt(DateTime? lastIngestAt) =>
      _$this._lastIngestAt = lastIngestAt;

  String? _ingestKeyPrefix;
  String? get ingestKeyPrefix => _$this._ingestKeyPrefix;
  set ingestKeyPrefix(String? ingestKeyPrefix) =>
      _$this._ingestKeyPrefix = ingestKeyPrefix;

  String? _ingestKey;
  String? get ingestKey => _$this._ingestKey;
  set ingestKey(String? ingestKey) => _$this._ingestKey = ingestKey;

  MappingPresetSetupBuilder? _setup;
  MappingPresetSetupBuilder get setup =>
      _$this._setup ??= MappingPresetSetupBuilder();
  set setup(MappingPresetSetupBuilder? setup) => _$this._setup = setup;

  CustomSourceCreatedBuilder() {
    CustomSourceCreated._defaults(this);
  }

  CustomSourceCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _kinds = $v.kinds.toBuilder();
      _attribution = $v.attribution;
      _recordTtl = $v.recordTtl;
      _tileProperties = $v.tileProperties?.toBuilder();
      _searchFields = $v.searchFields?.toBuilder();
      _embedFields = $v.embedFields?.toBuilder();
      _rankField = $v.rankField;
      _rateLimitPerMinute = $v.rateLimitPerMinute;
      _observedAtMode = $v.observedAtMode;
      _ttlAnchor = $v.ttlAnchor;
      _volatileFields = $v.volatileFields?.toBuilder();
      _significantFields = $v.significantFields?.toBuilder();
      _titleField = $v.titleField;
      _fieldSpecs = $v.fieldSpecs?.toBuilder();
      _private = $v.private;
      _licence = $v.licence;
      _recordsPerMinute = $v.recordsPerMinute;
      _formats = $v.formats?.toBuilder();
      _verifiers = $v.verifiers?.toBuilder();
      _profile = $v.profile;
      _mapping = $v.mapping?.toBuilder();
      _preset = $v.preset;
      _presetParams = $v.presetParams?.toBuilder();
      _allowPathKey = $v.allowPathKey;
      _ingestAllowCidrs = $v.ingestAllowCidrs?.toBuilder();
      _captureSamples = $v.captureSamples;
      _licenceTerms = $v.licenceTerms?.toBuilder();
      _createdAt = $v.createdAt;
      _lastIngestAt = $v.lastIngestAt;
      _ingestKeyPrefix = $v.ingestKeyPrefix;
      _ingestKey = $v.ingestKey;
      _setup = $v.setup?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomSourceCreated other) {
    _$v = other as _$CustomSourceCreated;
  }

  @override
  void update(void Function(CustomSourceCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomSourceCreated build() => _build();

  _$CustomSourceCreated _build() {
    _$CustomSourceCreated _$result;
    try {
      _$result =
          _$v ??
          _$CustomSourceCreated._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'CustomSourceCreated',
              'id',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'CustomSourceCreated',
              'name',
            ),
            description: description,
            kinds: kinds.build(),
            attribution: attribution,
            recordTtl: recordTtl,
            tileProperties: _tileProperties?.build(),
            searchFields: _searchFields?.build(),
            embedFields: _embedFields?.build(),
            rankField: rankField,
            rateLimitPerMinute: rateLimitPerMinute,
            observedAtMode: observedAtMode,
            ttlAnchor: ttlAnchor,
            volatileFields: _volatileFields?.build(),
            significantFields: _significantFields?.build(),
            titleField: titleField,
            fieldSpecs: _fieldSpecs?.build(),
            private: private,
            licence: licence,
            recordsPerMinute: recordsPerMinute,
            formats: _formats?.build(),
            verifiers: _verifiers?.build(),
            profile: profile,
            mapping: _mapping?.build(),
            preset: preset,
            presetParams: _presetParams?.build(),
            allowPathKey: allowPathKey,
            ingestAllowCidrs: _ingestAllowCidrs?.build(),
            captureSamples: captureSamples,
            licenceTerms: _licenceTerms?.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'CustomSourceCreated',
              'createdAt',
            ),
            lastIngestAt: lastIngestAt,
            ingestKeyPrefix: ingestKeyPrefix,
            ingestKey: BuiltValueNullFieldError.checkNotNull(
              ingestKey,
              r'CustomSourceCreated',
              'ingestKey',
            ),
            setup: _setup?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'kinds';
        kinds.build();

        _$failedField = 'tileProperties';
        _tileProperties?.build();
        _$failedField = 'searchFields';
        _searchFields?.build();
        _$failedField = 'embedFields';
        _embedFields?.build();

        _$failedField = 'volatileFields';
        _volatileFields?.build();
        _$failedField = 'significantFields';
        _significantFields?.build();

        _$failedField = 'fieldSpecs';
        _fieldSpecs?.build();

        _$failedField = 'formats';
        _formats?.build();
        _$failedField = 'verifiers';
        _verifiers?.build();

        _$failedField = 'mapping';
        _mapping?.build();

        _$failedField = 'presetParams';
        _presetParams?.build();

        _$failedField = 'ingestAllowCidrs';
        _ingestAllowCidrs?.build();

        _$failedField = 'licenceTerms';
        _licenceTerms?.build();

        _$failedField = 'setup';
        _setup?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CustomSourceCreated',
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

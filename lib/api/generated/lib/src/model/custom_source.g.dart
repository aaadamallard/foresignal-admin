// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CustomSourceObservedAtModeEnum _$customSourceObservedAtModeEnum_UPSTREAM =
    const CustomSourceObservedAtModeEnum._('UPSTREAM');
const CustomSourceObservedAtModeEnum _$customSourceObservedAtModeEnum_RECEIVED =
    const CustomSourceObservedAtModeEnum._('RECEIVED');

CustomSourceObservedAtModeEnum _$customSourceObservedAtModeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'UPSTREAM':
      return _$customSourceObservedAtModeEnum_UPSTREAM;
    case 'RECEIVED':
      return _$customSourceObservedAtModeEnum_RECEIVED;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CustomSourceObservedAtModeEnum>
_$customSourceObservedAtModeEnumValues =
    BuiltSet<CustomSourceObservedAtModeEnum>(
      const <CustomSourceObservedAtModeEnum>[
        _$customSourceObservedAtModeEnum_UPSTREAM,
        _$customSourceObservedAtModeEnum_RECEIVED,
      ],
    );

const CustomSourceTtlAnchorEnum _$customSourceTtlAnchorEnum_RECEIVED =
    const CustomSourceTtlAnchorEnum._('RECEIVED');
const CustomSourceTtlAnchorEnum _$customSourceTtlAnchorEnum_OBSERVED =
    const CustomSourceTtlAnchorEnum._('OBSERVED');

CustomSourceTtlAnchorEnum _$customSourceTtlAnchorEnumValueOf(String name) {
  switch (name) {
    case 'RECEIVED':
      return _$customSourceTtlAnchorEnum_RECEIVED;
    case 'OBSERVED':
      return _$customSourceTtlAnchorEnum_OBSERVED;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CustomSourceTtlAnchorEnum> _$customSourceTtlAnchorEnumValues =
    BuiltSet<CustomSourceTtlAnchorEnum>(const <CustomSourceTtlAnchorEnum>[
      _$customSourceTtlAnchorEnum_RECEIVED,
      _$customSourceTtlAnchorEnum_OBSERVED,
    ]);

const CustomSourceProfileEnum _$customSourceProfileEnum_personalLocation =
    const CustomSourceProfileEnum._('personalLocation');

CustomSourceProfileEnum _$customSourceProfileEnumValueOf(String name) {
  switch (name) {
    case 'personalLocation':
      return _$customSourceProfileEnum_personalLocation;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CustomSourceProfileEnum> _$customSourceProfileEnumValues =
    BuiltSet<CustomSourceProfileEnum>(const <CustomSourceProfileEnum>[
      _$customSourceProfileEnum_personalLocation,
    ]);

Serializer<CustomSourceObservedAtModeEnum>
_$customSourceObservedAtModeEnumSerializer =
    _$CustomSourceObservedAtModeEnumSerializer();
Serializer<CustomSourceTtlAnchorEnum> _$customSourceTtlAnchorEnumSerializer =
    _$CustomSourceTtlAnchorEnumSerializer();
Serializer<CustomSourceProfileEnum> _$customSourceProfileEnumSerializer =
    _$CustomSourceProfileEnumSerializer();

class _$CustomSourceObservedAtModeEnumSerializer
    implements PrimitiveSerializer<CustomSourceObservedAtModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UPSTREAM': 'UPSTREAM',
    'RECEIVED': 'RECEIVED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UPSTREAM': 'UPSTREAM',
    'RECEIVED': 'RECEIVED',
  };

  @override
  final Iterable<Type> types = const <Type>[CustomSourceObservedAtModeEnum];
  @override
  final String wireName = 'CustomSourceObservedAtModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    CustomSourceObservedAtModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CustomSourceObservedAtModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CustomSourceObservedAtModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CustomSourceTtlAnchorEnumSerializer
    implements PrimitiveSerializer<CustomSourceTtlAnchorEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'RECEIVED': 'RECEIVED',
    'OBSERVED': 'OBSERVED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RECEIVED': 'RECEIVED',
    'OBSERVED': 'OBSERVED',
  };

  @override
  final Iterable<Type> types = const <Type>[CustomSourceTtlAnchorEnum];
  @override
  final String wireName = 'CustomSourceTtlAnchorEnum';

  @override
  Object serialize(
    Serializers serializers,
    CustomSourceTtlAnchorEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CustomSourceTtlAnchorEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CustomSourceTtlAnchorEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CustomSourceProfileEnumSerializer
    implements PrimitiveSerializer<CustomSourceProfileEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'personalLocation': 'personal-location',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'personal-location': 'personalLocation',
  };

  @override
  final Iterable<Type> types = const <Type>[CustomSourceProfileEnum];
  @override
  final String wireName = 'CustomSourceProfileEnum';

  @override
  Object serialize(
    Serializers serializers,
    CustomSourceProfileEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CustomSourceProfileEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CustomSourceProfileEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CustomSource extends CustomSource {
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
  final CustomSourceObservedAtModeEnum? observedAtMode;
  @override
  final CustomSourceTtlAnchorEnum? ttlAnchor;
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
  final CustomSourceProfileEnum? profile;
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

  factory _$CustomSource([void Function(CustomSourceBuilder)? updates]) =>
      (CustomSourceBuilder()..update(updates))._build();

  _$CustomSource._({
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
  }) : super._();
  @override
  CustomSource rebuild(void Function(CustomSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomSourceBuilder toBuilder() => CustomSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomSource &&
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
        ingestKeyPrefix == other.ingestKeyPrefix;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomSource')
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
          ..add('ingestKeyPrefix', ingestKeyPrefix))
        .toString();
  }
}

class CustomSourceBuilder
    implements Builder<CustomSource, CustomSourceBuilder> {
  _$CustomSource? _$v;

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

  CustomSourceObservedAtModeEnum? _observedAtMode;
  CustomSourceObservedAtModeEnum? get observedAtMode => _$this._observedAtMode;
  set observedAtMode(CustomSourceObservedAtModeEnum? observedAtMode) =>
      _$this._observedAtMode = observedAtMode;

  CustomSourceTtlAnchorEnum? _ttlAnchor;
  CustomSourceTtlAnchorEnum? get ttlAnchor => _$this._ttlAnchor;
  set ttlAnchor(CustomSourceTtlAnchorEnum? ttlAnchor) =>
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

  CustomSourceProfileEnum? _profile;
  CustomSourceProfileEnum? get profile => _$this._profile;
  set profile(CustomSourceProfileEnum? profile) => _$this._profile = profile;

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

  CustomSourceBuilder() {
    CustomSource._defaults(this);
  }

  CustomSourceBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomSource other) {
    _$v = other as _$CustomSource;
  }

  @override
  void update(void Function(CustomSourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomSource build() => _build();

  _$CustomSource _build() {
    _$CustomSource _$result;
    try {
      _$result =
          _$v ??
          _$CustomSource._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'CustomSource',
              'id',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'CustomSource',
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
              r'CustomSource',
              'createdAt',
            ),
            lastIngestAt: lastIngestAt,
            ingestKeyPrefix: ingestKeyPrefix,
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
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CustomSource',
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

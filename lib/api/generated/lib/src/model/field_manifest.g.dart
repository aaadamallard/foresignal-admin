// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_manifest.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FieldManifestSchemaVersionEnum _$fieldManifestSchemaVersionEnum_number1 =
    const FieldManifestSchemaVersionEnum._('number1');
const FieldManifestSchemaVersionEnum
_$fieldManifestSchemaVersionEnum_unknownDefaultOpenApi =
    const FieldManifestSchemaVersionEnum._('unknownDefaultOpenApi');

FieldManifestSchemaVersionEnum _$fieldManifestSchemaVersionEnumValueOf(
  String name,
) {
  switch (name) {
    case 'number1':
      return _$fieldManifestSchemaVersionEnum_number1;
    case 'unknownDefaultOpenApi':
      return _$fieldManifestSchemaVersionEnum_unknownDefaultOpenApi;
    default:
      return _$fieldManifestSchemaVersionEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<FieldManifestSchemaVersionEnum>
_$fieldManifestSchemaVersionEnumValues =
    BuiltSet<FieldManifestSchemaVersionEnum>(
      const <FieldManifestSchemaVersionEnum>[
        _$fieldManifestSchemaVersionEnum_number1,
        _$fieldManifestSchemaVersionEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<FieldManifestSchemaVersionEnum>
_$fieldManifestSchemaVersionEnumSerializer =
    _$FieldManifestSchemaVersionEnumSerializer();

class _$FieldManifestSchemaVersionEnumSerializer
    implements PrimitiveSerializer<FieldManifestSchemaVersionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number1': 1,
    'unknownDefaultOpenApi': 11184809,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    1: 'number1',
    11184809: 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[FieldManifestSchemaVersionEnum];
  @override
  final String wireName = 'FieldManifestSchemaVersionEnum';

  @override
  Object serialize(
    Serializers serializers,
    FieldManifestSchemaVersionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  FieldManifestSchemaVersionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => FieldManifestSchemaVersionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$FieldManifest extends FieldManifest {
  @override
  final FieldManifestSchemaVersionEnum schemaVersion;
  @override
  final String model;
  @override
  final FieldManifestCycle cycle;
  @override
  final String level;
  @override
  final String units;
  @override
  final FieldManifestGrid grid;
  @override
  final bool stale;
  @override
  final bool unavailable;
  @override
  final String? reason;
  @override
  final BuiltList<FieldManifestComponentsInner> components;
  @override
  final int byteLength;
  @override
  final String sha256;
  @override
  final Attribution? attribution;
  @override
  final String dataUrl;
  @override
  final FieldEncodings? encodings;

  factory _$FieldManifest([void Function(FieldManifestBuilder)? updates]) =>
      (FieldManifestBuilder()..update(updates))._build();

  _$FieldManifest._({
    required this.schemaVersion,
    required this.model,
    required this.cycle,
    required this.level,
    required this.units,
    required this.grid,
    required this.stale,
    required this.unavailable,
    this.reason,
    required this.components,
    required this.byteLength,
    required this.sha256,
    this.attribution,
    required this.dataUrl,
    this.encodings,
  }) : super._();
  @override
  FieldManifest rebuild(void Function(FieldManifestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldManifestBuilder toBuilder() => FieldManifestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldManifest &&
        schemaVersion == other.schemaVersion &&
        model == other.model &&
        cycle == other.cycle &&
        level == other.level &&
        units == other.units &&
        grid == other.grid &&
        stale == other.stale &&
        unavailable == other.unavailable &&
        reason == other.reason &&
        components == other.components &&
        byteLength == other.byteLength &&
        sha256 == other.sha256 &&
        attribution == other.attribution &&
        dataUrl == other.dataUrl &&
        encodings == other.encodings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, schemaVersion.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, cycle.hashCode);
    _$hash = $jc(_$hash, level.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, grid.hashCode);
    _$hash = $jc(_$hash, stale.hashCode);
    _$hash = $jc(_$hash, unavailable.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, components.hashCode);
    _$hash = $jc(_$hash, byteLength.hashCode);
    _$hash = $jc(_$hash, sha256.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, dataUrl.hashCode);
    _$hash = $jc(_$hash, encodings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FieldManifest')
          ..add('schemaVersion', schemaVersion)
          ..add('model', model)
          ..add('cycle', cycle)
          ..add('level', level)
          ..add('units', units)
          ..add('grid', grid)
          ..add('stale', stale)
          ..add('unavailable', unavailable)
          ..add('reason', reason)
          ..add('components', components)
          ..add('byteLength', byteLength)
          ..add('sha256', sha256)
          ..add('attribution', attribution)
          ..add('dataUrl', dataUrl)
          ..add('encodings', encodings))
        .toString();
  }
}

class FieldManifestBuilder
    implements Builder<FieldManifest, FieldManifestBuilder> {
  _$FieldManifest? _$v;

  FieldManifestSchemaVersionEnum? _schemaVersion;
  FieldManifestSchemaVersionEnum? get schemaVersion => _$this._schemaVersion;
  set schemaVersion(FieldManifestSchemaVersionEnum? schemaVersion) =>
      _$this._schemaVersion = schemaVersion;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  FieldManifestCycleBuilder? _cycle;
  FieldManifestCycleBuilder get cycle =>
      _$this._cycle ??= FieldManifestCycleBuilder();
  set cycle(FieldManifestCycleBuilder? cycle) => _$this._cycle = cycle;

  String? _level;
  String? get level => _$this._level;
  set level(String? level) => _$this._level = level;

  String? _units;
  String? get units => _$this._units;
  set units(String? units) => _$this._units = units;

  FieldManifestGridBuilder? _grid;
  FieldManifestGridBuilder get grid =>
      _$this._grid ??= FieldManifestGridBuilder();
  set grid(FieldManifestGridBuilder? grid) => _$this._grid = grid;

  bool? _stale;
  bool? get stale => _$this._stale;
  set stale(bool? stale) => _$this._stale = stale;

  bool? _unavailable;
  bool? get unavailable => _$this._unavailable;
  set unavailable(bool? unavailable) => _$this._unavailable = unavailable;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ListBuilder<FieldManifestComponentsInner>? _components;
  ListBuilder<FieldManifestComponentsInner> get components =>
      _$this._components ??= ListBuilder<FieldManifestComponentsInner>();
  set components(ListBuilder<FieldManifestComponentsInner>? components) =>
      _$this._components = components;

  int? _byteLength;
  int? get byteLength => _$this._byteLength;
  set byteLength(int? byteLength) => _$this._byteLength = byteLength;

  String? _sha256;
  String? get sha256 => _$this._sha256;
  set sha256(String? sha256) => _$this._sha256 = sha256;

  AttributionBuilder? _attribution;
  AttributionBuilder get attribution =>
      _$this._attribution ??= AttributionBuilder();
  set attribution(AttributionBuilder? attribution) =>
      _$this._attribution = attribution;

  String? _dataUrl;
  String? get dataUrl => _$this._dataUrl;
  set dataUrl(String? dataUrl) => _$this._dataUrl = dataUrl;

  FieldEncodingsBuilder? _encodings;
  FieldEncodingsBuilder get encodings =>
      _$this._encodings ??= FieldEncodingsBuilder();
  set encodings(FieldEncodingsBuilder? encodings) =>
      _$this._encodings = encodings;

  FieldManifestBuilder() {
    FieldManifest._defaults(this);
  }

  FieldManifestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _schemaVersion = $v.schemaVersion;
      _model = $v.model;
      _cycle = $v.cycle.toBuilder();
      _level = $v.level;
      _units = $v.units;
      _grid = $v.grid.toBuilder();
      _stale = $v.stale;
      _unavailable = $v.unavailable;
      _reason = $v.reason;
      _components = $v.components.toBuilder();
      _byteLength = $v.byteLength;
      _sha256 = $v.sha256;
      _attribution = $v.attribution?.toBuilder();
      _dataUrl = $v.dataUrl;
      _encodings = $v.encodings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldManifest other) {
    _$v = other as _$FieldManifest;
  }

  @override
  void update(void Function(FieldManifestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FieldManifest build() => _build();

  _$FieldManifest _build() {
    _$FieldManifest _$result;
    try {
      _$result =
          _$v ??
          _$FieldManifest._(
            schemaVersion: BuiltValueNullFieldError.checkNotNull(
              schemaVersion,
              r'FieldManifest',
              'schemaVersion',
            ),
            model: BuiltValueNullFieldError.checkNotNull(
              model,
              r'FieldManifest',
              'model',
            ),
            cycle: cycle.build(),
            level: BuiltValueNullFieldError.checkNotNull(
              level,
              r'FieldManifest',
              'level',
            ),
            units: BuiltValueNullFieldError.checkNotNull(
              units,
              r'FieldManifest',
              'units',
            ),
            grid: grid.build(),
            stale: BuiltValueNullFieldError.checkNotNull(
              stale,
              r'FieldManifest',
              'stale',
            ),
            unavailable: BuiltValueNullFieldError.checkNotNull(
              unavailable,
              r'FieldManifest',
              'unavailable',
            ),
            reason: reason,
            components: components.build(),
            byteLength: BuiltValueNullFieldError.checkNotNull(
              byteLength,
              r'FieldManifest',
              'byteLength',
            ),
            sha256: BuiltValueNullFieldError.checkNotNull(
              sha256,
              r'FieldManifest',
              'sha256',
            ),
            attribution: _attribution?.build(),
            dataUrl: BuiltValueNullFieldError.checkNotNull(
              dataUrl,
              r'FieldManifest',
              'dataUrl',
            ),
            encodings: _encodings?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cycle';
        cycle.build();

        _$failedField = 'grid';
        grid.build();

        _$failedField = 'components';
        components.build();

        _$failedField = 'attribution';
        _attribution?.build();

        _$failedField = 'encodings';
        _encodings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FieldManifest',
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

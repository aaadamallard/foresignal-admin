// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_grid.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StatsGridTypeEnum _$statsGridTypeEnum_featureCollection =
    const StatsGridTypeEnum._('featureCollection');
const StatsGridTypeEnum _$statsGridTypeEnum_unknownDefaultOpenApi =
    const StatsGridTypeEnum._('unknownDefaultOpenApi');

StatsGridTypeEnum _$statsGridTypeEnumValueOf(String name) {
  switch (name) {
    case 'featureCollection':
      return _$statsGridTypeEnum_featureCollection;
    case 'unknownDefaultOpenApi':
      return _$statsGridTypeEnum_unknownDefaultOpenApi;
    default:
      return _$statsGridTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<StatsGridTypeEnum> _$statsGridTypeEnumValues =
    BuiltSet<StatsGridTypeEnum>(const <StatsGridTypeEnum>[
      _$statsGridTypeEnum_featureCollection,
      _$statsGridTypeEnum_unknownDefaultOpenApi,
    ]);

const StatsGridCellSystemEnum _$statsGridCellSystemEnum_h3 =
    const StatsGridCellSystemEnum._('h3');
const StatsGridCellSystemEnum _$statsGridCellSystemEnum_hex3857 =
    const StatsGridCellSystemEnum._('hex3857');
const StatsGridCellSystemEnum _$statsGridCellSystemEnum_unknownDefaultOpenApi =
    const StatsGridCellSystemEnum._('unknownDefaultOpenApi');

StatsGridCellSystemEnum _$statsGridCellSystemEnumValueOf(String name) {
  switch (name) {
    case 'h3':
      return _$statsGridCellSystemEnum_h3;
    case 'hex3857':
      return _$statsGridCellSystemEnum_hex3857;
    case 'unknownDefaultOpenApi':
      return _$statsGridCellSystemEnum_unknownDefaultOpenApi;
    default:
      return _$statsGridCellSystemEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<StatsGridCellSystemEnum> _$statsGridCellSystemEnumValues =
    BuiltSet<StatsGridCellSystemEnum>(const <StatsGridCellSystemEnum>[
      _$statsGridCellSystemEnum_h3,
      _$statsGridCellSystemEnum_hex3857,
      _$statsGridCellSystemEnum_unknownDefaultOpenApi,
    ]);

const StatsGridBackendEnum _$statsGridBackendEnum_rollup =
    const StatsGridBackendEnum._('rollup');
const StatsGridBackendEnum _$statsGridBackendEnum_raw =
    const StatsGridBackendEnum._('raw');
const StatsGridBackendEnum _$statsGridBackendEnum_unknownDefaultOpenApi =
    const StatsGridBackendEnum._('unknownDefaultOpenApi');

StatsGridBackendEnum _$statsGridBackendEnumValueOf(String name) {
  switch (name) {
    case 'rollup':
      return _$statsGridBackendEnum_rollup;
    case 'raw':
      return _$statsGridBackendEnum_raw;
    case 'unknownDefaultOpenApi':
      return _$statsGridBackendEnum_unknownDefaultOpenApi;
    default:
      return _$statsGridBackendEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<StatsGridBackendEnum> _$statsGridBackendEnumValues =
    BuiltSet<StatsGridBackendEnum>(const <StatsGridBackendEnum>[
      _$statsGridBackendEnum_rollup,
      _$statsGridBackendEnum_raw,
      _$statsGridBackendEnum_unknownDefaultOpenApi,
    ]);

Serializer<StatsGridTypeEnum> _$statsGridTypeEnumSerializer =
    _$StatsGridTypeEnumSerializer();
Serializer<StatsGridCellSystemEnum> _$statsGridCellSystemEnumSerializer =
    _$StatsGridCellSystemEnumSerializer();
Serializer<StatsGridBackendEnum> _$statsGridBackendEnumSerializer =
    _$StatsGridBackendEnumSerializer();

class _$StatsGridTypeEnumSerializer
    implements PrimitiveSerializer<StatsGridTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'featureCollection': 'FeatureCollection',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FeatureCollection': 'featureCollection',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[StatsGridTypeEnum];
  @override
  final String wireName = 'StatsGridTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    StatsGridTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StatsGridTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StatsGridTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StatsGridCellSystemEnumSerializer
    implements PrimitiveSerializer<StatsGridCellSystemEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'h3': 'h3',
    'hex3857': 'hex3857',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'h3': 'h3',
    'hex3857': 'hex3857',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[StatsGridCellSystemEnum];
  @override
  final String wireName = 'StatsGridCellSystemEnum';

  @override
  Object serialize(
    Serializers serializers,
    StatsGridCellSystemEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StatsGridCellSystemEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StatsGridCellSystemEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StatsGridBackendEnumSerializer
    implements PrimitiveSerializer<StatsGridBackendEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'rollup': 'rollup',
    'raw': 'raw',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'rollup': 'rollup',
    'raw': 'raw',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[StatsGridBackendEnum];
  @override
  final String wireName = 'StatsGridBackendEnum';

  @override
  Object serialize(
    Serializers serializers,
    StatsGridBackendEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StatsGridBackendEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StatsGridBackendEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StatsGrid extends StatsGrid {
  @override
  final StatsGridTypeEnum type;
  @override
  final StatsGridCellSystemEnum cellSystem;
  @override
  final int? res;
  @override
  final num? sizeKm;
  @override
  final String? measure;
  @override
  final StatsGridBackendEnum? backend;
  @override
  final BuiltList<StatsGridFeaturesInner> features;

  factory _$StatsGrid([void Function(StatsGridBuilder)? updates]) =>
      (StatsGridBuilder()..update(updates))._build();

  _$StatsGrid._({
    required this.type,
    required this.cellSystem,
    this.res,
    this.sizeKm,
    this.measure,
    this.backend,
    required this.features,
  }) : super._();
  @override
  StatsGrid rebuild(void Function(StatsGridBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsGridBuilder toBuilder() => StatsGridBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsGrid &&
        type == other.type &&
        cellSystem == other.cellSystem &&
        res == other.res &&
        sizeKm == other.sizeKm &&
        measure == other.measure &&
        backend == other.backend &&
        features == other.features;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, cellSystem.hashCode);
    _$hash = $jc(_$hash, res.hashCode);
    _$hash = $jc(_$hash, sizeKm.hashCode);
    _$hash = $jc(_$hash, measure.hashCode);
    _$hash = $jc(_$hash, backend.hashCode);
    _$hash = $jc(_$hash, features.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatsGrid')
          ..add('type', type)
          ..add('cellSystem', cellSystem)
          ..add('res', res)
          ..add('sizeKm', sizeKm)
          ..add('measure', measure)
          ..add('backend', backend)
          ..add('features', features))
        .toString();
  }
}

class StatsGridBuilder implements Builder<StatsGrid, StatsGridBuilder> {
  _$StatsGrid? _$v;

  StatsGridTypeEnum? _type;
  StatsGridTypeEnum? get type => _$this._type;
  set type(StatsGridTypeEnum? type) => _$this._type = type;

  StatsGridCellSystemEnum? _cellSystem;
  StatsGridCellSystemEnum? get cellSystem => _$this._cellSystem;
  set cellSystem(StatsGridCellSystemEnum? cellSystem) =>
      _$this._cellSystem = cellSystem;

  int? _res;
  int? get res => _$this._res;
  set res(int? res) => _$this._res = res;

  num? _sizeKm;
  num? get sizeKm => _$this._sizeKm;
  set sizeKm(num? sizeKm) => _$this._sizeKm = sizeKm;

  String? _measure;
  String? get measure => _$this._measure;
  set measure(String? measure) => _$this._measure = measure;

  StatsGridBackendEnum? _backend;
  StatsGridBackendEnum? get backend => _$this._backend;
  set backend(StatsGridBackendEnum? backend) => _$this._backend = backend;

  ListBuilder<StatsGridFeaturesInner>? _features;
  ListBuilder<StatsGridFeaturesInner> get features =>
      _$this._features ??= ListBuilder<StatsGridFeaturesInner>();
  set features(ListBuilder<StatsGridFeaturesInner>? features) =>
      _$this._features = features;

  StatsGridBuilder() {
    StatsGrid._defaults(this);
  }

  StatsGridBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _cellSystem = $v.cellSystem;
      _res = $v.res;
      _sizeKm = $v.sizeKm;
      _measure = $v.measure;
      _backend = $v.backend;
      _features = $v.features.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsGrid other) {
    _$v = other as _$StatsGrid;
  }

  @override
  void update(void Function(StatsGridBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatsGrid build() => _build();

  _$StatsGrid _build() {
    _$StatsGrid _$result;
    try {
      _$result =
          _$v ??
          _$StatsGrid._(
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'StatsGrid',
              'type',
            ),
            cellSystem: BuiltValueNullFieldError.checkNotNull(
              cellSystem,
              r'StatsGrid',
              'cellSystem',
            ),
            res: res,
            sizeKm: sizeKm,
            measure: measure,
            backend: backend,
            features: features.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'features';
        features.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'StatsGrid',
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

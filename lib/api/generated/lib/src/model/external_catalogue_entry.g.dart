// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_catalogue_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExternalCatalogueEntryProtocolEnum
_$externalCatalogueEntryProtocolEnum_wmts =
    const ExternalCatalogueEntryProtocolEnum._('wmts');
const ExternalCatalogueEntryProtocolEnum
_$externalCatalogueEntryProtocolEnum_wms =
    const ExternalCatalogueEntryProtocolEnum._('wms');
const ExternalCatalogueEntryProtocolEnum
_$externalCatalogueEntryProtocolEnum_xyz =
    const ExternalCatalogueEntryProtocolEnum._('xyz');
const ExternalCatalogueEntryProtocolEnum
_$externalCatalogueEntryProtocolEnum_unknownDefaultOpenApi =
    const ExternalCatalogueEntryProtocolEnum._('unknownDefaultOpenApi');

ExternalCatalogueEntryProtocolEnum _$externalCatalogueEntryProtocolEnumValueOf(
  String name,
) {
  switch (name) {
    case 'wmts':
      return _$externalCatalogueEntryProtocolEnum_wmts;
    case 'wms':
      return _$externalCatalogueEntryProtocolEnum_wms;
    case 'xyz':
      return _$externalCatalogueEntryProtocolEnum_xyz;
    case 'unknownDefaultOpenApi':
      return _$externalCatalogueEntryProtocolEnum_unknownDefaultOpenApi;
    default:
      return _$externalCatalogueEntryProtocolEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ExternalCatalogueEntryProtocolEnum>
_$externalCatalogueEntryProtocolEnumValues =
    BuiltSet<ExternalCatalogueEntryProtocolEnum>(
      const <ExternalCatalogueEntryProtocolEnum>[
        _$externalCatalogueEntryProtocolEnum_wmts,
        _$externalCatalogueEntryProtocolEnum_wms,
        _$externalCatalogueEntryProtocolEnum_xyz,
        _$externalCatalogueEntryProtocolEnum_unknownDefaultOpenApi,
      ],
    );

const ExternalCatalogueEntryFormatEnum _$externalCatalogueEntryFormatEnum_png =
    const ExternalCatalogueEntryFormatEnum._('png');
const ExternalCatalogueEntryFormatEnum _$externalCatalogueEntryFormatEnum_jpg =
    const ExternalCatalogueEntryFormatEnum._('jpg');
const ExternalCatalogueEntryFormatEnum
_$externalCatalogueEntryFormatEnum_unknownDefaultOpenApi =
    const ExternalCatalogueEntryFormatEnum._('unknownDefaultOpenApi');

ExternalCatalogueEntryFormatEnum _$externalCatalogueEntryFormatEnumValueOf(
  String name,
) {
  switch (name) {
    case 'png':
      return _$externalCatalogueEntryFormatEnum_png;
    case 'jpg':
      return _$externalCatalogueEntryFormatEnum_jpg;
    case 'unknownDefaultOpenApi':
      return _$externalCatalogueEntryFormatEnum_unknownDefaultOpenApi;
    default:
      return _$externalCatalogueEntryFormatEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ExternalCatalogueEntryFormatEnum>
_$externalCatalogueEntryFormatEnumValues =
    BuiltSet<ExternalCatalogueEntryFormatEnum>(
      const <ExternalCatalogueEntryFormatEnum>[
        _$externalCatalogueEntryFormatEnum_png,
        _$externalCatalogueEntryFormatEnum_jpg,
        _$externalCatalogueEntryFormatEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ExternalCatalogueEntryProtocolEnum>
_$externalCatalogueEntryProtocolEnumSerializer =
    _$ExternalCatalogueEntryProtocolEnumSerializer();
Serializer<ExternalCatalogueEntryFormatEnum>
_$externalCatalogueEntryFormatEnumSerializer =
    _$ExternalCatalogueEntryFormatEnumSerializer();

class _$ExternalCatalogueEntryProtocolEnumSerializer
    implements PrimitiveSerializer<ExternalCatalogueEntryProtocolEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'wmts': 'wmts',
    'wms': 'wms',
    'xyz': 'xyz',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'wmts': 'wmts',
    'wms': 'wms',
    'xyz': 'xyz',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ExternalCatalogueEntryProtocolEnum];
  @override
  final String wireName = 'ExternalCatalogueEntryProtocolEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExternalCatalogueEntryProtocolEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExternalCatalogueEntryProtocolEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExternalCatalogueEntryProtocolEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExternalCatalogueEntryFormatEnumSerializer
    implements PrimitiveSerializer<ExternalCatalogueEntryFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'png': 'png',
    'jpg': 'jpg',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'png': 'png',
    'jpg': 'jpg',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ExternalCatalogueEntryFormatEnum];
  @override
  final String wireName = 'ExternalCatalogueEntryFormatEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExternalCatalogueEntryFormatEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExternalCatalogueEntryFormatEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExternalCatalogueEntryFormatEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExternalCatalogueEntry extends ExternalCatalogueEntry {
  @override
  final String? provider;
  @override
  final String? layer;
  @override
  final ExternalCatalogueEntryProtocolEnum? protocol;
  @override
  final String externalTemplate;
  @override
  final String tilingScheme;
  @override
  final int tileSize;
  @override
  final int maxNativeZoom;
  @override
  final ExternalCatalogueEntryFormatEnum? format;
  @override
  final BuiltList<num> bounds;
  @override
  final ExternalCatalogueEntryTimeDimension? timeDimension;
  @override
  final String? cors;
  @override
  final Attribution attribution;

  factory _$ExternalCatalogueEntry([
    void Function(ExternalCatalogueEntryBuilder)? updates,
  ]) => (ExternalCatalogueEntryBuilder()..update(updates))._build();

  _$ExternalCatalogueEntry._({
    this.provider,
    this.layer,
    this.protocol,
    required this.externalTemplate,
    required this.tilingScheme,
    required this.tileSize,
    required this.maxNativeZoom,
    this.format,
    required this.bounds,
    this.timeDimension,
    this.cors,
    required this.attribution,
  }) : super._();
  @override
  ExternalCatalogueEntry rebuild(
    void Function(ExternalCatalogueEntryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExternalCatalogueEntryBuilder toBuilder() =>
      ExternalCatalogueEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalCatalogueEntry &&
        provider == other.provider &&
        layer == other.layer &&
        protocol == other.protocol &&
        externalTemplate == other.externalTemplate &&
        tilingScheme == other.tilingScheme &&
        tileSize == other.tileSize &&
        maxNativeZoom == other.maxNativeZoom &&
        format == other.format &&
        bounds == other.bounds &&
        timeDimension == other.timeDimension &&
        cors == other.cors &&
        attribution == other.attribution;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, layer.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, externalTemplate.hashCode);
    _$hash = $jc(_$hash, tilingScheme.hashCode);
    _$hash = $jc(_$hash, tileSize.hashCode);
    _$hash = $jc(_$hash, maxNativeZoom.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, bounds.hashCode);
    _$hash = $jc(_$hash, timeDimension.hashCode);
    _$hash = $jc(_$hash, cors.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalCatalogueEntry')
          ..add('provider', provider)
          ..add('layer', layer)
          ..add('protocol', protocol)
          ..add('externalTemplate', externalTemplate)
          ..add('tilingScheme', tilingScheme)
          ..add('tileSize', tileSize)
          ..add('maxNativeZoom', maxNativeZoom)
          ..add('format', format)
          ..add('bounds', bounds)
          ..add('timeDimension', timeDimension)
          ..add('cors', cors)
          ..add('attribution', attribution))
        .toString();
  }
}

class ExternalCatalogueEntryBuilder
    implements Builder<ExternalCatalogueEntry, ExternalCatalogueEntryBuilder> {
  _$ExternalCatalogueEntry? _$v;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  String? _layer;
  String? get layer => _$this._layer;
  set layer(String? layer) => _$this._layer = layer;

  ExternalCatalogueEntryProtocolEnum? _protocol;
  ExternalCatalogueEntryProtocolEnum? get protocol => _$this._protocol;
  set protocol(ExternalCatalogueEntryProtocolEnum? protocol) =>
      _$this._protocol = protocol;

  String? _externalTemplate;
  String? get externalTemplate => _$this._externalTemplate;
  set externalTemplate(String? externalTemplate) =>
      _$this._externalTemplate = externalTemplate;

  String? _tilingScheme;
  String? get tilingScheme => _$this._tilingScheme;
  set tilingScheme(String? tilingScheme) => _$this._tilingScheme = tilingScheme;

  int? _tileSize;
  int? get tileSize => _$this._tileSize;
  set tileSize(int? tileSize) => _$this._tileSize = tileSize;

  int? _maxNativeZoom;
  int? get maxNativeZoom => _$this._maxNativeZoom;
  set maxNativeZoom(int? maxNativeZoom) =>
      _$this._maxNativeZoom = maxNativeZoom;

  ExternalCatalogueEntryFormatEnum? _format;
  ExternalCatalogueEntryFormatEnum? get format => _$this._format;
  set format(ExternalCatalogueEntryFormatEnum? format) =>
      _$this._format = format;

  ListBuilder<num>? _bounds;
  ListBuilder<num> get bounds => _$this._bounds ??= ListBuilder<num>();
  set bounds(ListBuilder<num>? bounds) => _$this._bounds = bounds;

  ExternalCatalogueEntryTimeDimensionBuilder? _timeDimension;
  ExternalCatalogueEntryTimeDimensionBuilder get timeDimension =>
      _$this._timeDimension ??= ExternalCatalogueEntryTimeDimensionBuilder();
  set timeDimension(
    ExternalCatalogueEntryTimeDimensionBuilder? timeDimension,
  ) => _$this._timeDimension = timeDimension;

  String? _cors;
  String? get cors => _$this._cors;
  set cors(String? cors) => _$this._cors = cors;

  AttributionBuilder? _attribution;
  AttributionBuilder get attribution =>
      _$this._attribution ??= AttributionBuilder();
  set attribution(AttributionBuilder? attribution) =>
      _$this._attribution = attribution;

  ExternalCatalogueEntryBuilder() {
    ExternalCatalogueEntry._defaults(this);
  }

  ExternalCatalogueEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _provider = $v.provider;
      _layer = $v.layer;
      _protocol = $v.protocol;
      _externalTemplate = $v.externalTemplate;
      _tilingScheme = $v.tilingScheme;
      _tileSize = $v.tileSize;
      _maxNativeZoom = $v.maxNativeZoom;
      _format = $v.format;
      _bounds = $v.bounds.toBuilder();
      _timeDimension = $v.timeDimension?.toBuilder();
      _cors = $v.cors;
      _attribution = $v.attribution.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalCatalogueEntry other) {
    _$v = other as _$ExternalCatalogueEntry;
  }

  @override
  void update(void Function(ExternalCatalogueEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalCatalogueEntry build() => _build();

  _$ExternalCatalogueEntry _build() {
    _$ExternalCatalogueEntry _$result;
    try {
      _$result =
          _$v ??
          _$ExternalCatalogueEntry._(
            provider: provider,
            layer: layer,
            protocol: protocol,
            externalTemplate: BuiltValueNullFieldError.checkNotNull(
              externalTemplate,
              r'ExternalCatalogueEntry',
              'externalTemplate',
            ),
            tilingScheme: BuiltValueNullFieldError.checkNotNull(
              tilingScheme,
              r'ExternalCatalogueEntry',
              'tilingScheme',
            ),
            tileSize: BuiltValueNullFieldError.checkNotNull(
              tileSize,
              r'ExternalCatalogueEntry',
              'tileSize',
            ),
            maxNativeZoom: BuiltValueNullFieldError.checkNotNull(
              maxNativeZoom,
              r'ExternalCatalogueEntry',
              'maxNativeZoom',
            ),
            format: format,
            bounds: bounds.build(),
            timeDimension: _timeDimension?.build(),
            cors: cors,
            attribution: attribution.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bounds';
        bounds.build();
        _$failedField = 'timeDimension';
        _timeDimension?.build();

        _$failedField = 'attribution';
        attribution.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExternalCatalogueEntry',
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

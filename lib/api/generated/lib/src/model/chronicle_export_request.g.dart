// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_export_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChronicleExportRequestFormatEnum
    _$chronicleExportRequestFormatEnum_geoparquet =
    const ChronicleExportRequestFormatEnum._('geoparquet');
const ChronicleExportRequestFormatEnum _$chronicleExportRequestFormatEnum_gpkg =
    const ChronicleExportRequestFormatEnum._('gpkg');
const ChronicleExportRequestFormatEnum
    _$chronicleExportRequestFormatEnum_jsonBundle =
    const ChronicleExportRequestFormatEnum._('jsonBundle');

ChronicleExportRequestFormatEnum _$chronicleExportRequestFormatEnumValueOf(
    String name) {
  switch (name) {
    case 'geoparquet':
      return _$chronicleExportRequestFormatEnum_geoparquet;
    case 'gpkg':
      return _$chronicleExportRequestFormatEnum_gpkg;
    case 'jsonBundle':
      return _$chronicleExportRequestFormatEnum_jsonBundle;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChronicleExportRequestFormatEnum>
    _$chronicleExportRequestFormatEnumValues = BuiltSet<
        ChronicleExportRequestFormatEnum>(const <ChronicleExportRequestFormatEnum>[
  _$chronicleExportRequestFormatEnum_geoparquet,
  _$chronicleExportRequestFormatEnum_gpkg,
  _$chronicleExportRequestFormatEnum_jsonBundle,
]);

Serializer<ChronicleExportRequestFormatEnum>
    _$chronicleExportRequestFormatEnumSerializer =
    _$ChronicleExportRequestFormatEnumSerializer();

class _$ChronicleExportRequestFormatEnumSerializer
    implements PrimitiveSerializer<ChronicleExportRequestFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'geoparquet': 'geoparquet',
    'gpkg': 'gpkg',
    'jsonBundle': 'json-bundle',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'geoparquet': 'geoparquet',
    'gpkg': 'gpkg',
    'json-bundle': 'jsonBundle',
  };

  @override
  final Iterable<Type> types = const <Type>[ChronicleExportRequestFormatEnum];
  @override
  final String wireName = 'ChronicleExportRequestFormatEnum';

  @override
  Object serialize(
          Serializers serializers, ChronicleExportRequestFormatEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChronicleExportRequestFormatEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChronicleExportRequestFormatEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChronicleExportRequest extends ChronicleExportRequest {
  @override
  final ChronicleExportRequestFormatEnum format;
  @override
  final BuiltList<String>? layers;
  @override
  final DateTime? from;
  @override
  final DateTime? to;

  factory _$ChronicleExportRequest(
          [void Function(ChronicleExportRequestBuilder)? updates]) =>
      (ChronicleExportRequestBuilder()..update(updates))._build();

  _$ChronicleExportRequest._(
      {required this.format, this.layers, this.from, this.to})
      : super._();
  @override
  ChronicleExportRequest rebuild(
          void Function(ChronicleExportRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleExportRequestBuilder toBuilder() =>
      ChronicleExportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleExportRequest &&
        format == other.format &&
        layers == other.layers &&
        from == other.from &&
        to == other.to;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, layers.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleExportRequest')
          ..add('format', format)
          ..add('layers', layers)
          ..add('from', from)
          ..add('to', to))
        .toString();
  }
}

class ChronicleExportRequestBuilder
    implements Builder<ChronicleExportRequest, ChronicleExportRequestBuilder> {
  _$ChronicleExportRequest? _$v;

  ChronicleExportRequestFormatEnum? _format;
  ChronicleExportRequestFormatEnum? get format => _$this._format;
  set format(ChronicleExportRequestFormatEnum? format) =>
      _$this._format = format;

  ListBuilder<String>? _layers;
  ListBuilder<String> get layers => _$this._layers ??= ListBuilder<String>();
  set layers(ListBuilder<String>? layers) => _$this._layers = layers;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  ChronicleExportRequestBuilder() {
    ChronicleExportRequest._defaults(this);
  }

  ChronicleExportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _format = $v.format;
      _layers = $v.layers?.toBuilder();
      _from = $v.from;
      _to = $v.to;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleExportRequest other) {
    _$v = other as _$ChronicleExportRequest;
  }

  @override
  void update(void Function(ChronicleExportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleExportRequest build() => _build();

  _$ChronicleExportRequest _build() {
    _$ChronicleExportRequest _$result;
    try {
      _$result = _$v ??
          _$ChronicleExportRequest._(
            format: BuiltValueNullFieldError.checkNotNull(
                format, r'ChronicleExportRequest', 'format'),
            layers: _layers?.build(),
            from: from,
            to: to,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'layers';
        _layers?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChronicleExportRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

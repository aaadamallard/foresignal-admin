// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_import_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReferenceImportRequestDatasetEnum
    _$referenceImportRequestDatasetEnum_ucdpGed =
    const ReferenceImportRequestDatasetEnum._('ucdpGed');
const ReferenceImportRequestDatasetEnum
    _$referenceImportRequestDatasetEnum_acled =
    const ReferenceImportRequestDatasetEnum._('acled');
const ReferenceImportRequestDatasetEnum
    _$referenceImportRequestDatasetEnum_usgsComcat =
    const ReferenceImportRequestDatasetEnum._('usgsComcat');
const ReferenceImportRequestDatasetEnum
    _$referenceImportRequestDatasetEnum_gdacs =
    const ReferenceImportRequestDatasetEnum._('gdacs');

ReferenceImportRequestDatasetEnum _$referenceImportRequestDatasetEnumValueOf(
    String name) {
  switch (name) {
    case 'ucdpGed':
      return _$referenceImportRequestDatasetEnum_ucdpGed;
    case 'acled':
      return _$referenceImportRequestDatasetEnum_acled;
    case 'usgsComcat':
      return _$referenceImportRequestDatasetEnum_usgsComcat;
    case 'gdacs':
      return _$referenceImportRequestDatasetEnum_gdacs;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReferenceImportRequestDatasetEnum>
    _$referenceImportRequestDatasetEnumValues = BuiltSet<
        ReferenceImportRequestDatasetEnum>(const <ReferenceImportRequestDatasetEnum>[
  _$referenceImportRequestDatasetEnum_ucdpGed,
  _$referenceImportRequestDatasetEnum_acled,
  _$referenceImportRequestDatasetEnum_usgsComcat,
  _$referenceImportRequestDatasetEnum_gdacs,
]);

Serializer<ReferenceImportRequestDatasetEnum>
    _$referenceImportRequestDatasetEnumSerializer =
    _$ReferenceImportRequestDatasetEnumSerializer();

class _$ReferenceImportRequestDatasetEnumSerializer
    implements PrimitiveSerializer<ReferenceImportRequestDatasetEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ucdpGed': 'ucdp-ged',
    'acled': 'acled',
    'usgsComcat': 'usgs-comcat',
    'gdacs': 'gdacs',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ucdp-ged': 'ucdpGed',
    'acled': 'acled',
    'usgs-comcat': 'usgsComcat',
    'gdacs': 'gdacs',
  };

  @override
  final Iterable<Type> types = const <Type>[ReferenceImportRequestDatasetEnum];
  @override
  final String wireName = 'ReferenceImportRequestDatasetEnum';

  @override
  Object serialize(
          Serializers serializers, ReferenceImportRequestDatasetEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReferenceImportRequestDatasetEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReferenceImportRequestDatasetEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReferenceImportRequest extends ReferenceImportRequest {
  @override
  final ReferenceImportRequestDatasetEnum dataset;
  @override
  final ReferenceImportRequestParams? params;

  factory _$ReferenceImportRequest(
          [void Function(ReferenceImportRequestBuilder)? updates]) =>
      (ReferenceImportRequestBuilder()..update(updates))._build();

  _$ReferenceImportRequest._({required this.dataset, this.params}) : super._();
  @override
  ReferenceImportRequest rebuild(
          void Function(ReferenceImportRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReferenceImportRequestBuilder toBuilder() =>
      ReferenceImportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReferenceImportRequest &&
        dataset == other.dataset &&
        params == other.params;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dataset.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReferenceImportRequest')
          ..add('dataset', dataset)
          ..add('params', params))
        .toString();
  }
}

class ReferenceImportRequestBuilder
    implements Builder<ReferenceImportRequest, ReferenceImportRequestBuilder> {
  _$ReferenceImportRequest? _$v;

  ReferenceImportRequestDatasetEnum? _dataset;
  ReferenceImportRequestDatasetEnum? get dataset => _$this._dataset;
  set dataset(ReferenceImportRequestDatasetEnum? dataset) =>
      _$this._dataset = dataset;

  ReferenceImportRequestParamsBuilder? _params;
  ReferenceImportRequestParamsBuilder get params =>
      _$this._params ??= ReferenceImportRequestParamsBuilder();
  set params(ReferenceImportRequestParamsBuilder? params) =>
      _$this._params = params;

  ReferenceImportRequestBuilder() {
    ReferenceImportRequest._defaults(this);
  }

  ReferenceImportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dataset = $v.dataset;
      _params = $v.params?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReferenceImportRequest other) {
    _$v = other as _$ReferenceImportRequest;
  }

  @override
  void update(void Function(ReferenceImportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReferenceImportRequest build() => _build();

  _$ReferenceImportRequest _build() {
    _$ReferenceImportRequest _$result;
    try {
      _$result = _$v ??
          _$ReferenceImportRequest._(
            dataset: BuiltValueNullFieldError.checkNotNull(
                dataset, r'ReferenceImportRequest', 'dataset'),
            params: _params?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        _params?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReferenceImportRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

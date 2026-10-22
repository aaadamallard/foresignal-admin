// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_import_request_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReferenceImportRequestParams extends ReferenceImportRequestParams {
  @override
  final String? file;
  @override
  final bool? useApi;
  @override
  final int? yearFrom;
  @override
  final int? yearTo;
  @override
  final BuiltList<String>? countries;
  @override
  final num? minMagnitude;
  @override
  final BuiltList<String>? hazardTypes;
  @override
  final String? version;

  factory _$ReferenceImportRequestParams(
          [void Function(ReferenceImportRequestParamsBuilder)? updates]) =>
      (ReferenceImportRequestParamsBuilder()..update(updates))._build();

  _$ReferenceImportRequestParams._(
      {this.file,
      this.useApi,
      this.yearFrom,
      this.yearTo,
      this.countries,
      this.minMagnitude,
      this.hazardTypes,
      this.version})
      : super._();
  @override
  ReferenceImportRequestParams rebuild(
          void Function(ReferenceImportRequestParamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReferenceImportRequestParamsBuilder toBuilder() =>
      ReferenceImportRequestParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReferenceImportRequestParams &&
        file == other.file &&
        useApi == other.useApi &&
        yearFrom == other.yearFrom &&
        yearTo == other.yearTo &&
        countries == other.countries &&
        minMagnitude == other.minMagnitude &&
        hazardTypes == other.hazardTypes &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jc(_$hash, useApi.hashCode);
    _$hash = $jc(_$hash, yearFrom.hashCode);
    _$hash = $jc(_$hash, yearTo.hashCode);
    _$hash = $jc(_$hash, countries.hashCode);
    _$hash = $jc(_$hash, minMagnitude.hashCode);
    _$hash = $jc(_$hash, hazardTypes.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReferenceImportRequestParams')
          ..add('file', file)
          ..add('useApi', useApi)
          ..add('yearFrom', yearFrom)
          ..add('yearTo', yearTo)
          ..add('countries', countries)
          ..add('minMagnitude', minMagnitude)
          ..add('hazardTypes', hazardTypes)
          ..add('version', version))
        .toString();
  }
}

class ReferenceImportRequestParamsBuilder
    implements
        Builder<ReferenceImportRequestParams,
            ReferenceImportRequestParamsBuilder> {
  _$ReferenceImportRequestParams? _$v;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  bool? _useApi;
  bool? get useApi => _$this._useApi;
  set useApi(bool? useApi) => _$this._useApi = useApi;

  int? _yearFrom;
  int? get yearFrom => _$this._yearFrom;
  set yearFrom(int? yearFrom) => _$this._yearFrom = yearFrom;

  int? _yearTo;
  int? get yearTo => _$this._yearTo;
  set yearTo(int? yearTo) => _$this._yearTo = yearTo;

  ListBuilder<String>? _countries;
  ListBuilder<String> get countries =>
      _$this._countries ??= ListBuilder<String>();
  set countries(ListBuilder<String>? countries) =>
      _$this._countries = countries;

  num? _minMagnitude;
  num? get minMagnitude => _$this._minMagnitude;
  set minMagnitude(num? minMagnitude) => _$this._minMagnitude = minMagnitude;

  ListBuilder<String>? _hazardTypes;
  ListBuilder<String> get hazardTypes =>
      _$this._hazardTypes ??= ListBuilder<String>();
  set hazardTypes(ListBuilder<String>? hazardTypes) =>
      _$this._hazardTypes = hazardTypes;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  ReferenceImportRequestParamsBuilder() {
    ReferenceImportRequestParams._defaults(this);
  }

  ReferenceImportRequestParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _file = $v.file;
      _useApi = $v.useApi;
      _yearFrom = $v.yearFrom;
      _yearTo = $v.yearTo;
      _countries = $v.countries?.toBuilder();
      _minMagnitude = $v.minMagnitude;
      _hazardTypes = $v.hazardTypes?.toBuilder();
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReferenceImportRequestParams other) {
    _$v = other as _$ReferenceImportRequestParams;
  }

  @override
  void update(void Function(ReferenceImportRequestParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReferenceImportRequestParams build() => _build();

  _$ReferenceImportRequestParams _build() {
    _$ReferenceImportRequestParams _$result;
    try {
      _$result = _$v ??
          _$ReferenceImportRequestParams._(
            file: file,
            useApi: useApi,
            yearFrom: yearFrom,
            yearTo: yearTo,
            countries: _countries?.build(),
            minMagnitude: minMagnitude,
            hazardTypes: _hazardTypes?.build(),
            version: version,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'countries';
        _countries?.build();

        _$failedField = 'hazardTypes';
        _hazardTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReferenceImportRequestParams', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

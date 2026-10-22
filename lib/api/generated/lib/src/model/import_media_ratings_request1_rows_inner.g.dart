// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_media_ratings_request1_rows_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportMediaRatingsRequest1RowsInner
    extends ImportMediaRatingsRequest1RowsInner {
  @override
  final String domain;
  @override
  final JsonObject? dimension;
  @override
  final String value;
  @override
  final String? label;
  @override
  final String licence;
  @override
  final String attribution;

  factory _$ImportMediaRatingsRequest1RowsInner(
          [void Function(ImportMediaRatingsRequest1RowsInnerBuilder)?
              updates]) =>
      (ImportMediaRatingsRequest1RowsInnerBuilder()..update(updates))._build();

  _$ImportMediaRatingsRequest1RowsInner._(
      {required this.domain,
      this.dimension,
      required this.value,
      this.label,
      required this.licence,
      required this.attribution})
      : super._();
  @override
  ImportMediaRatingsRequest1RowsInner rebuild(
          void Function(ImportMediaRatingsRequest1RowsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportMediaRatingsRequest1RowsInnerBuilder toBuilder() =>
      ImportMediaRatingsRequest1RowsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportMediaRatingsRequest1RowsInner &&
        domain == other.domain &&
        dimension == other.dimension &&
        value == other.value &&
        label == other.label &&
        licence == other.licence &&
        attribution == other.attribution;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, dimension.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImportMediaRatingsRequest1RowsInner')
          ..add('domain', domain)
          ..add('dimension', dimension)
          ..add('value', value)
          ..add('label', label)
          ..add('licence', licence)
          ..add('attribution', attribution))
        .toString();
  }
}

class ImportMediaRatingsRequest1RowsInnerBuilder
    implements
        Builder<ImportMediaRatingsRequest1RowsInner,
            ImportMediaRatingsRequest1RowsInnerBuilder> {
  _$ImportMediaRatingsRequest1RowsInner? _$v;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  JsonObject? _dimension;
  JsonObject? get dimension => _$this._dimension;
  set dimension(JsonObject? dimension) => _$this._dimension = dimension;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _licence;
  String? get licence => _$this._licence;
  set licence(String? licence) => _$this._licence = licence;

  String? _attribution;
  String? get attribution => _$this._attribution;
  set attribution(String? attribution) => _$this._attribution = attribution;

  ImportMediaRatingsRequest1RowsInnerBuilder() {
    ImportMediaRatingsRequest1RowsInner._defaults(this);
  }

  ImportMediaRatingsRequest1RowsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _domain = $v.domain;
      _dimension = $v.dimension;
      _value = $v.value;
      _label = $v.label;
      _licence = $v.licence;
      _attribution = $v.attribution;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportMediaRatingsRequest1RowsInner other) {
    _$v = other as _$ImportMediaRatingsRequest1RowsInner;
  }

  @override
  void update(
      void Function(ImportMediaRatingsRequest1RowsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportMediaRatingsRequest1RowsInner build() => _build();

  _$ImportMediaRatingsRequest1RowsInner _build() {
    final _$result = _$v ??
        _$ImportMediaRatingsRequest1RowsInner._(
          domain: BuiltValueNullFieldError.checkNotNull(
              domain, r'ImportMediaRatingsRequest1RowsInner', 'domain'),
          dimension: dimension,
          value: BuiltValueNullFieldError.checkNotNull(
              value, r'ImportMediaRatingsRequest1RowsInner', 'value'),
          label: label,
          licence: BuiltValueNullFieldError.checkNotNull(
              licence, r'ImportMediaRatingsRequest1RowsInner', 'licence'),
          attribution: BuiltValueNullFieldError.checkNotNull(attribution,
              r'ImportMediaRatingsRequest1RowsInner', 'attribution'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

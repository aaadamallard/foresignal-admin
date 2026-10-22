// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_catalogue_entry_time_dimension.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExternalCatalogueEntryTimeDimension
    extends ExternalCatalogueEntryTimeDimension {
  @override
  final String? format;
  @override
  final String? period;
  @override
  final String? typicalLatency;
  @override
  final String? defaultLag;

  factory _$ExternalCatalogueEntryTimeDimension(
          [void Function(ExternalCatalogueEntryTimeDimensionBuilder)?
              updates]) =>
      (ExternalCatalogueEntryTimeDimensionBuilder()..update(updates))._build();

  _$ExternalCatalogueEntryTimeDimension._(
      {this.format, this.period, this.typicalLatency, this.defaultLag})
      : super._();
  @override
  ExternalCatalogueEntryTimeDimension rebuild(
          void Function(ExternalCatalogueEntryTimeDimensionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExternalCatalogueEntryTimeDimensionBuilder toBuilder() =>
      ExternalCatalogueEntryTimeDimensionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalCatalogueEntryTimeDimension &&
        format == other.format &&
        period == other.period &&
        typicalLatency == other.typicalLatency &&
        defaultLag == other.defaultLag;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, typicalLatency.hashCode);
    _$hash = $jc(_$hash, defaultLag.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalCatalogueEntryTimeDimension')
          ..add('format', format)
          ..add('period', period)
          ..add('typicalLatency', typicalLatency)
          ..add('defaultLag', defaultLag))
        .toString();
  }
}

class ExternalCatalogueEntryTimeDimensionBuilder
    implements
        Builder<ExternalCatalogueEntryTimeDimension,
            ExternalCatalogueEntryTimeDimensionBuilder> {
  _$ExternalCatalogueEntryTimeDimension? _$v;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  String? _period;
  String? get period => _$this._period;
  set period(String? period) => _$this._period = period;

  String? _typicalLatency;
  String? get typicalLatency => _$this._typicalLatency;
  set typicalLatency(String? typicalLatency) =>
      _$this._typicalLatency = typicalLatency;

  String? _defaultLag;
  String? get defaultLag => _$this._defaultLag;
  set defaultLag(String? defaultLag) => _$this._defaultLag = defaultLag;

  ExternalCatalogueEntryTimeDimensionBuilder() {
    ExternalCatalogueEntryTimeDimension._defaults(this);
  }

  ExternalCatalogueEntryTimeDimensionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _format = $v.format;
      _period = $v.period;
      _typicalLatency = $v.typicalLatency;
      _defaultLag = $v.defaultLag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalCatalogueEntryTimeDimension other) {
    _$v = other as _$ExternalCatalogueEntryTimeDimension;
  }

  @override
  void update(
      void Function(ExternalCatalogueEntryTimeDimensionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalCatalogueEntryTimeDimension build() => _build();

  _$ExternalCatalogueEntryTimeDimension _build() {
    final _$result = _$v ??
        _$ExternalCatalogueEntryTimeDimension._(
          format: format,
          period: period,
          typicalLatency: typicalLatency,
          defaultLag: defaultLag,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

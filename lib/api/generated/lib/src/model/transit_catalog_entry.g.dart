// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_catalog_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitCatalogEntry extends TransitCatalogEntry {
  @override
  final String id;
  @override
  final String provider;
  @override
  final String? countryCode;
  @override
  final String entityType;
  @override
  final String directDownloadUrl;
  @override
  final String? licenseUrl;
  @override
  final String? staticReference;
  @override
  final bool enabled;
  @override
  final String? sourceId;
  @override
  final BuiltList<String>? sourceIds;

  factory _$TransitCatalogEntry([
    void Function(TransitCatalogEntryBuilder)? updates,
  ]) => (TransitCatalogEntryBuilder()..update(updates))._build();

  _$TransitCatalogEntry._({
    required this.id,
    required this.provider,
    this.countryCode,
    required this.entityType,
    required this.directDownloadUrl,
    this.licenseUrl,
    this.staticReference,
    required this.enabled,
    this.sourceId,
    this.sourceIds,
  }) : super._();
  @override
  TransitCatalogEntry rebuild(
    void Function(TransitCatalogEntryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TransitCatalogEntryBuilder toBuilder() =>
      TransitCatalogEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitCatalogEntry &&
        id == other.id &&
        provider == other.provider &&
        countryCode == other.countryCode &&
        entityType == other.entityType &&
        directDownloadUrl == other.directDownloadUrl &&
        licenseUrl == other.licenseUrl &&
        staticReference == other.staticReference &&
        enabled == other.enabled &&
        sourceId == other.sourceId &&
        sourceIds == other.sourceIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, countryCode.hashCode);
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, directDownloadUrl.hashCode);
    _$hash = $jc(_$hash, licenseUrl.hashCode);
    _$hash = $jc(_$hash, staticReference.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, sourceIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransitCatalogEntry')
          ..add('id', id)
          ..add('provider', provider)
          ..add('countryCode', countryCode)
          ..add('entityType', entityType)
          ..add('directDownloadUrl', directDownloadUrl)
          ..add('licenseUrl', licenseUrl)
          ..add('staticReference', staticReference)
          ..add('enabled', enabled)
          ..add('sourceId', sourceId)
          ..add('sourceIds', sourceIds))
        .toString();
  }
}

class TransitCatalogEntryBuilder
    implements Builder<TransitCatalogEntry, TransitCatalogEntryBuilder> {
  _$TransitCatalogEntry? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(String? countryCode) => _$this._countryCode = countryCode;

  String? _entityType;
  String? get entityType => _$this._entityType;
  set entityType(String? entityType) => _$this._entityType = entityType;

  String? _directDownloadUrl;
  String? get directDownloadUrl => _$this._directDownloadUrl;
  set directDownloadUrl(String? directDownloadUrl) =>
      _$this._directDownloadUrl = directDownloadUrl;

  String? _licenseUrl;
  String? get licenseUrl => _$this._licenseUrl;
  set licenseUrl(String? licenseUrl) => _$this._licenseUrl = licenseUrl;

  String? _staticReference;
  String? get staticReference => _$this._staticReference;
  set staticReference(String? staticReference) =>
      _$this._staticReference = staticReference;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  ListBuilder<String>? _sourceIds;
  ListBuilder<String> get sourceIds =>
      _$this._sourceIds ??= ListBuilder<String>();
  set sourceIds(ListBuilder<String>? sourceIds) =>
      _$this._sourceIds = sourceIds;

  TransitCatalogEntryBuilder() {
    TransitCatalogEntry._defaults(this);
  }

  TransitCatalogEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _provider = $v.provider;
      _countryCode = $v.countryCode;
      _entityType = $v.entityType;
      _directDownloadUrl = $v.directDownloadUrl;
      _licenseUrl = $v.licenseUrl;
      _staticReference = $v.staticReference;
      _enabled = $v.enabled;
      _sourceId = $v.sourceId;
      _sourceIds = $v.sourceIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitCatalogEntry other) {
    _$v = other as _$TransitCatalogEntry;
  }

  @override
  void update(void Function(TransitCatalogEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitCatalogEntry build() => _build();

  _$TransitCatalogEntry _build() {
    _$TransitCatalogEntry _$result;
    try {
      _$result =
          _$v ??
          _$TransitCatalogEntry._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'TransitCatalogEntry',
              'id',
            ),
            provider: BuiltValueNullFieldError.checkNotNull(
              provider,
              r'TransitCatalogEntry',
              'provider',
            ),
            countryCode: countryCode,
            entityType: BuiltValueNullFieldError.checkNotNull(
              entityType,
              r'TransitCatalogEntry',
              'entityType',
            ),
            directDownloadUrl: BuiltValueNullFieldError.checkNotNull(
              directDownloadUrl,
              r'TransitCatalogEntry',
              'directDownloadUrl',
            ),
            licenseUrl: licenseUrl,
            staticReference: staticReference,
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'TransitCatalogEntry',
              'enabled',
            ),
            sourceId: sourceId,
            sourceIds: _sourceIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sourceIds';
        _sourceIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TransitCatalogEntry',
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

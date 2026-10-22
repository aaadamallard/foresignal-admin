// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_package.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExchangePackageStatusEnum _$exchangePackageStatusEnum_building =
    const ExchangePackageStatusEnum._('building');
const ExchangePackageStatusEnum _$exchangePackageStatusEnum_ready =
    const ExchangePackageStatusEnum._('ready');
const ExchangePackageStatusEnum _$exchangePackageStatusEnum_delivering =
    const ExchangePackageStatusEnum._('delivering');
const ExchangePackageStatusEnum _$exchangePackageStatusEnum_delivered =
    const ExchangePackageStatusEnum._('delivered');
const ExchangePackageStatusEnum _$exchangePackageStatusEnum_failed =
    const ExchangePackageStatusEnum._('failed');

ExchangePackageStatusEnum _$exchangePackageStatusEnumValueOf(String name) {
  switch (name) {
    case 'building':
      return _$exchangePackageStatusEnum_building;
    case 'ready':
      return _$exchangePackageStatusEnum_ready;
    case 'delivering':
      return _$exchangePackageStatusEnum_delivering;
    case 'delivered':
      return _$exchangePackageStatusEnum_delivered;
    case 'failed':
      return _$exchangePackageStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExchangePackageStatusEnum> _$exchangePackageStatusEnumValues =
    BuiltSet<ExchangePackageStatusEnum>(const <ExchangePackageStatusEnum>[
  _$exchangePackageStatusEnum_building,
  _$exchangePackageStatusEnum_ready,
  _$exchangePackageStatusEnum_delivering,
  _$exchangePackageStatusEnum_delivered,
  _$exchangePackageStatusEnum_failed,
]);

Serializer<ExchangePackageStatusEnum> _$exchangePackageStatusEnumSerializer =
    _$ExchangePackageStatusEnumSerializer();

class _$ExchangePackageStatusEnumSerializer
    implements PrimitiveSerializer<ExchangePackageStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'building': 'building',
    'ready': 'ready',
    'delivering': 'delivering',
    'delivered': 'delivered',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'building': 'building',
    'ready': 'ready',
    'delivering': 'delivering',
    'delivered': 'delivered',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[ExchangePackageStatusEnum];
  @override
  final String wireName = 'ExchangePackageStatusEnum';

  @override
  Object serialize(Serializers serializers, ExchangePackageStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExchangePackageStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExchangePackageStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ExchangePackage extends ExchangePackage {
  @override
  final String id;
  @override
  final PackageManifest manifest;
  @override
  final ExchangePackageStatusEnum status;
  @override
  final int? sizeBytes;
  @override
  final BuiltList<ExchangePackageDeliveriesInner>? deliveries;
  @override
  final BuiltList<Caveat>? reductions;
  @override
  final PrincipalSummary createdBy;
  @override
  final DateTime createdAt;
  @override
  final String? downloadHref;
  @override
  final String? error;

  factory _$ExchangePackage([void Function(ExchangePackageBuilder)? updates]) =>
      (ExchangePackageBuilder()..update(updates))._build();

  _$ExchangePackage._(
      {required this.id,
      required this.manifest,
      required this.status,
      this.sizeBytes,
      this.deliveries,
      this.reductions,
      required this.createdBy,
      required this.createdAt,
      this.downloadHref,
      this.error})
      : super._();
  @override
  ExchangePackage rebuild(void Function(ExchangePackageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExchangePackageBuilder toBuilder() => ExchangePackageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExchangePackage &&
        id == other.id &&
        manifest == other.manifest &&
        status == other.status &&
        sizeBytes == other.sizeBytes &&
        deliveries == other.deliveries &&
        reductions == other.reductions &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt &&
        downloadHref == other.downloadHref &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, manifest.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, sizeBytes.hashCode);
    _$hash = $jc(_$hash, deliveries.hashCode);
    _$hash = $jc(_$hash, reductions.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, downloadHref.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExchangePackage')
          ..add('id', id)
          ..add('manifest', manifest)
          ..add('status', status)
          ..add('sizeBytes', sizeBytes)
          ..add('deliveries', deliveries)
          ..add('reductions', reductions)
          ..add('createdBy', createdBy)
          ..add('createdAt', createdAt)
          ..add('downloadHref', downloadHref)
          ..add('error', error))
        .toString();
  }
}

class ExchangePackageBuilder
    implements Builder<ExchangePackage, ExchangePackageBuilder> {
  _$ExchangePackage? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  PackageManifestBuilder? _manifest;
  PackageManifestBuilder get manifest =>
      _$this._manifest ??= PackageManifestBuilder();
  set manifest(PackageManifestBuilder? manifest) => _$this._manifest = manifest;

  ExchangePackageStatusEnum? _status;
  ExchangePackageStatusEnum? get status => _$this._status;
  set status(ExchangePackageStatusEnum? status) => _$this._status = status;

  int? _sizeBytes;
  int? get sizeBytes => _$this._sizeBytes;
  set sizeBytes(int? sizeBytes) => _$this._sizeBytes = sizeBytes;

  ListBuilder<ExchangePackageDeliveriesInner>? _deliveries;
  ListBuilder<ExchangePackageDeliveriesInner> get deliveries =>
      _$this._deliveries ??= ListBuilder<ExchangePackageDeliveriesInner>();
  set deliveries(ListBuilder<ExchangePackageDeliveriesInner>? deliveries) =>
      _$this._deliveries = deliveries;

  ListBuilder<Caveat>? _reductions;
  ListBuilder<Caveat> get reductions =>
      _$this._reductions ??= ListBuilder<Caveat>();
  set reductions(ListBuilder<Caveat>? reductions) =>
      _$this._reductions = reductions;

  PrincipalSummaryBuilder? _createdBy;
  PrincipalSummaryBuilder get createdBy =>
      _$this._createdBy ??= PrincipalSummaryBuilder();
  set createdBy(PrincipalSummaryBuilder? createdBy) =>
      _$this._createdBy = createdBy;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _downloadHref;
  String? get downloadHref => _$this._downloadHref;
  set downloadHref(String? downloadHref) => _$this._downloadHref = downloadHref;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ExchangePackageBuilder() {
    ExchangePackage._defaults(this);
  }

  ExchangePackageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _manifest = $v.manifest.toBuilder();
      _status = $v.status;
      _sizeBytes = $v.sizeBytes;
      _deliveries = $v.deliveries?.toBuilder();
      _reductions = $v.reductions?.toBuilder();
      _createdBy = $v.createdBy.toBuilder();
      _createdAt = $v.createdAt;
      _downloadHref = $v.downloadHref;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExchangePackage other) {
    _$v = other as _$ExchangePackage;
  }

  @override
  void update(void Function(ExchangePackageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExchangePackage build() => _build();

  _$ExchangePackage _build() {
    _$ExchangePackage _$result;
    try {
      _$result = _$v ??
          _$ExchangePackage._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ExchangePackage', 'id'),
            manifest: manifest.build(),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ExchangePackage', 'status'),
            sizeBytes: sizeBytes,
            deliveries: _deliveries?.build(),
            reductions: _reductions?.build(),
            createdBy: createdBy.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'ExchangePackage', 'createdAt'),
            downloadHref: downloadHref,
            error: error,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'manifest';
        manifest.build();

        _$failedField = 'deliveries';
        _deliveries?.build();
        _$failedField = 'reductions';
        _reductions?.build();
        _$failedField = 'createdBy';
        createdBy.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ExchangePackage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

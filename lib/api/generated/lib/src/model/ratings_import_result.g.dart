// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ratings_import_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RatingsImportResultProviderEnum
    _$ratingsImportResultProviderEnum_wikidata =
    const RatingsImportResultProviderEnum._('wikidata');
const RatingsImportResultProviderEnum
    _$ratingsImportResultProviderEnum_partisanWeb =
    const RatingsImportResultProviderEnum._('partisanWeb');
const RatingsImportResultProviderEnum
    _$ratingsImportResultProviderEnum_allsides =
    const RatingsImportResultProviderEnum._('allsides');
const RatingsImportResultProviderEnum _$ratingsImportResultProviderEnum_mbfc =
    const RatingsImportResultProviderEnum._('mbfc');
const RatingsImportResultProviderEnum
    _$ratingsImportResultProviderEnum_operator_ =
    const RatingsImportResultProviderEnum._('operator_');

RatingsImportResultProviderEnum _$ratingsImportResultProviderEnumValueOf(
    String name) {
  switch (name) {
    case 'wikidata':
      return _$ratingsImportResultProviderEnum_wikidata;
    case 'partisanWeb':
      return _$ratingsImportResultProviderEnum_partisanWeb;
    case 'allsides':
      return _$ratingsImportResultProviderEnum_allsides;
    case 'mbfc':
      return _$ratingsImportResultProviderEnum_mbfc;
    case 'operator_':
      return _$ratingsImportResultProviderEnum_operator_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RatingsImportResultProviderEnum>
    _$ratingsImportResultProviderEnumValues = BuiltSet<
        RatingsImportResultProviderEnum>(const <RatingsImportResultProviderEnum>[
  _$ratingsImportResultProviderEnum_wikidata,
  _$ratingsImportResultProviderEnum_partisanWeb,
  _$ratingsImportResultProviderEnum_allsides,
  _$ratingsImportResultProviderEnum_mbfc,
  _$ratingsImportResultProviderEnum_operator_,
]);

Serializer<RatingsImportResultProviderEnum>
    _$ratingsImportResultProviderEnumSerializer =
    _$RatingsImportResultProviderEnumSerializer();

class _$RatingsImportResultProviderEnumSerializer
    implements PrimitiveSerializer<RatingsImportResultProviderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'wikidata': 'wikidata',
    'partisanWeb': 'partisan-web',
    'allsides': 'allsides',
    'mbfc': 'mbfc',
    'operator_': 'operator',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'wikidata': 'wikidata',
    'partisan-web': 'partisanWeb',
    'allsides': 'allsides',
    'mbfc': 'mbfc',
    'operator': 'operator_',
  };

  @override
  final Iterable<Type> types = const <Type>[RatingsImportResultProviderEnum];
  @override
  final String wireName = 'RatingsImportResultProviderEnum';

  @override
  Object serialize(
          Serializers serializers, RatingsImportResultProviderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RatingsImportResultProviderEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RatingsImportResultProviderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RatingsImportResult extends RatingsImportResult {
  @override
  final RatingsImportResultProviderEnum provider;
  @override
  final int imported;
  @override
  final int updated;
  @override
  final int rejected;
  @override
  final int? outletsCreated;
  @override
  final BuiltList<RatingsImportResultErrorsInner>? errors;
  @override
  final DateTime importedAt;

  factory _$RatingsImportResult(
          [void Function(RatingsImportResultBuilder)? updates]) =>
      (RatingsImportResultBuilder()..update(updates))._build();

  _$RatingsImportResult._(
      {required this.provider,
      required this.imported,
      required this.updated,
      required this.rejected,
      this.outletsCreated,
      this.errors,
      required this.importedAt})
      : super._();
  @override
  RatingsImportResult rebuild(
          void Function(RatingsImportResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingsImportResultBuilder toBuilder() =>
      RatingsImportResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingsImportResult &&
        provider == other.provider &&
        imported == other.imported &&
        updated == other.updated &&
        rejected == other.rejected &&
        outletsCreated == other.outletsCreated &&
        errors == other.errors &&
        importedAt == other.importedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, imported.hashCode);
    _$hash = $jc(_$hash, updated.hashCode);
    _$hash = $jc(_$hash, rejected.hashCode);
    _$hash = $jc(_$hash, outletsCreated.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, importedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RatingsImportResult')
          ..add('provider', provider)
          ..add('imported', imported)
          ..add('updated', updated)
          ..add('rejected', rejected)
          ..add('outletsCreated', outletsCreated)
          ..add('errors', errors)
          ..add('importedAt', importedAt))
        .toString();
  }
}

class RatingsImportResultBuilder
    implements Builder<RatingsImportResult, RatingsImportResultBuilder> {
  _$RatingsImportResult? _$v;

  RatingsImportResultProviderEnum? _provider;
  RatingsImportResultProviderEnum? get provider => _$this._provider;
  set provider(RatingsImportResultProviderEnum? provider) =>
      _$this._provider = provider;

  int? _imported;
  int? get imported => _$this._imported;
  set imported(int? imported) => _$this._imported = imported;

  int? _updated;
  int? get updated => _$this._updated;
  set updated(int? updated) => _$this._updated = updated;

  int? _rejected;
  int? get rejected => _$this._rejected;
  set rejected(int? rejected) => _$this._rejected = rejected;

  int? _outletsCreated;
  int? get outletsCreated => _$this._outletsCreated;
  set outletsCreated(int? outletsCreated) =>
      _$this._outletsCreated = outletsCreated;

  ListBuilder<RatingsImportResultErrorsInner>? _errors;
  ListBuilder<RatingsImportResultErrorsInner> get errors =>
      _$this._errors ??= ListBuilder<RatingsImportResultErrorsInner>();
  set errors(ListBuilder<RatingsImportResultErrorsInner>? errors) =>
      _$this._errors = errors;

  DateTime? _importedAt;
  DateTime? get importedAt => _$this._importedAt;
  set importedAt(DateTime? importedAt) => _$this._importedAt = importedAt;

  RatingsImportResultBuilder() {
    RatingsImportResult._defaults(this);
  }

  RatingsImportResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _provider = $v.provider;
      _imported = $v.imported;
      _updated = $v.updated;
      _rejected = $v.rejected;
      _outletsCreated = $v.outletsCreated;
      _errors = $v.errors?.toBuilder();
      _importedAt = $v.importedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingsImportResult other) {
    _$v = other as _$RatingsImportResult;
  }

  @override
  void update(void Function(RatingsImportResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RatingsImportResult build() => _build();

  _$RatingsImportResult _build() {
    _$RatingsImportResult _$result;
    try {
      _$result = _$v ??
          _$RatingsImportResult._(
            provider: BuiltValueNullFieldError.checkNotNull(
                provider, r'RatingsImportResult', 'provider'),
            imported: BuiltValueNullFieldError.checkNotNull(
                imported, r'RatingsImportResult', 'imported'),
            updated: BuiltValueNullFieldError.checkNotNull(
                updated, r'RatingsImportResult', 'updated'),
            rejected: BuiltValueNullFieldError.checkNotNull(
                rejected, r'RatingsImportResult', 'rejected'),
            outletsCreated: outletsCreated,
            errors: _errors?.build(),
            importedAt: BuiltValueNullFieldError.checkNotNull(
                importedAt, r'RatingsImportResult', 'importedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RatingsImportResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

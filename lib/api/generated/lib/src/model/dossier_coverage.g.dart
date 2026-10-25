// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dossier_coverage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DossierCoverageStatusEnum _$dossierCoverageStatusEnum_ok =
    const DossierCoverageStatusEnum._('ok');
const DossierCoverageStatusEnum _$dossierCoverageStatusEnum_partial =
    const DossierCoverageStatusEnum._('partial');
const DossierCoverageStatusEnum _$dossierCoverageStatusEnum_unavailable =
    const DossierCoverageStatusEnum._('unavailable');
const DossierCoverageStatusEnum
_$dossierCoverageStatusEnum_unknownDefaultOpenApi =
    const DossierCoverageStatusEnum._('unknownDefaultOpenApi');

DossierCoverageStatusEnum _$dossierCoverageStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$dossierCoverageStatusEnum_ok;
    case 'partial':
      return _$dossierCoverageStatusEnum_partial;
    case 'unavailable':
      return _$dossierCoverageStatusEnum_unavailable;
    case 'unknownDefaultOpenApi':
      return _$dossierCoverageStatusEnum_unknownDefaultOpenApi;
    default:
      return _$dossierCoverageStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<DossierCoverageStatusEnum> _$dossierCoverageStatusEnumValues =
    BuiltSet<DossierCoverageStatusEnum>(const <DossierCoverageStatusEnum>[
      _$dossierCoverageStatusEnum_ok,
      _$dossierCoverageStatusEnum_partial,
      _$dossierCoverageStatusEnum_unavailable,
      _$dossierCoverageStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<DossierCoverageStatusEnum> _$dossierCoverageStatusEnumSerializer =
    _$DossierCoverageStatusEnumSerializer();

class _$DossierCoverageStatusEnumSerializer
    implements PrimitiveSerializer<DossierCoverageStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'partial': 'partial',
    'unavailable': 'unavailable',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'partial': 'partial',
    'unavailable': 'unavailable',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DossierCoverageStatusEnum];
  @override
  final String wireName = 'DossierCoverageStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    DossierCoverageStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DossierCoverageStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DossierCoverageStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DossierCoverage extends DossierCoverage {
  @override
  final DossierCoverageStatusEnum status;
  @override
  final CoverageStats? stats;

  factory _$DossierCoverage([void Function(DossierCoverageBuilder)? updates]) =>
      (DossierCoverageBuilder()..update(updates))._build();

  _$DossierCoverage._({required this.status, this.stats}) : super._();
  @override
  DossierCoverage rebuild(void Function(DossierCoverageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DossierCoverageBuilder toBuilder() => DossierCoverageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DossierCoverage &&
        status == other.status &&
        stats == other.stats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, stats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DossierCoverage')
          ..add('status', status)
          ..add('stats', stats))
        .toString();
  }
}

class DossierCoverageBuilder
    implements Builder<DossierCoverage, DossierCoverageBuilder> {
  _$DossierCoverage? _$v;

  DossierCoverageStatusEnum? _status;
  DossierCoverageStatusEnum? get status => _$this._status;
  set status(DossierCoverageStatusEnum? status) => _$this._status = status;

  CoverageStatsBuilder? _stats;
  CoverageStatsBuilder get stats => _$this._stats ??= CoverageStatsBuilder();
  set stats(CoverageStatsBuilder? stats) => _$this._stats = stats;

  DossierCoverageBuilder() {
    DossierCoverage._defaults(this);
  }

  DossierCoverageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _stats = $v.stats?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DossierCoverage other) {
    _$v = other as _$DossierCoverage;
  }

  @override
  void update(void Function(DossierCoverageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DossierCoverage build() => _build();

  _$DossierCoverage _build() {
    _$DossierCoverage _$result;
    try {
      _$result =
          _$v ??
          _$DossierCoverage._(
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'DossierCoverage',
              'status',
            ),
            stats: _stats?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stats';
        _stats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DossierCoverage',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exposure_watchlist_entities.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExposureWatchlistEntitiesStatusEnum
_$exposureWatchlistEntitiesStatusEnum_ok =
    const ExposureWatchlistEntitiesStatusEnum._('ok');
const ExposureWatchlistEntitiesStatusEnum
_$exposureWatchlistEntitiesStatusEnum_unavailable =
    const ExposureWatchlistEntitiesStatusEnum._('unavailable');
const ExposureWatchlistEntitiesStatusEnum
_$exposureWatchlistEntitiesStatusEnum_notInstalled =
    const ExposureWatchlistEntitiesStatusEnum._('notInstalled');
const ExposureWatchlistEntitiesStatusEnum
_$exposureWatchlistEntitiesStatusEnum_unknownDefaultOpenApi =
    const ExposureWatchlistEntitiesStatusEnum._('unknownDefaultOpenApi');

ExposureWatchlistEntitiesStatusEnum
_$exposureWatchlistEntitiesStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$exposureWatchlistEntitiesStatusEnum_ok;
    case 'unavailable':
      return _$exposureWatchlistEntitiesStatusEnum_unavailable;
    case 'notInstalled':
      return _$exposureWatchlistEntitiesStatusEnum_notInstalled;
    case 'unknownDefaultOpenApi':
      return _$exposureWatchlistEntitiesStatusEnum_unknownDefaultOpenApi;
    default:
      return _$exposureWatchlistEntitiesStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ExposureWatchlistEntitiesStatusEnum>
_$exposureWatchlistEntitiesStatusEnumValues =
    BuiltSet<ExposureWatchlistEntitiesStatusEnum>(
      const <ExposureWatchlistEntitiesStatusEnum>[
        _$exposureWatchlistEntitiesStatusEnum_ok,
        _$exposureWatchlistEntitiesStatusEnum_unavailable,
        _$exposureWatchlistEntitiesStatusEnum_notInstalled,
        _$exposureWatchlistEntitiesStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ExposureWatchlistEntitiesStatusEnum>
_$exposureWatchlistEntitiesStatusEnumSerializer =
    _$ExposureWatchlistEntitiesStatusEnumSerializer();

class _$ExposureWatchlistEntitiesStatusEnumSerializer
    implements PrimitiveSerializer<ExposureWatchlistEntitiesStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'unavailable': 'unavailable',
    'notInstalled': 'not-installed',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'unavailable': 'unavailable',
    'not-installed': 'notInstalled',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ExposureWatchlistEntitiesStatusEnum,
  ];
  @override
  final String wireName = 'ExposureWatchlistEntitiesStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExposureWatchlistEntitiesStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExposureWatchlistEntitiesStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExposureWatchlistEntitiesStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExposureWatchlistEntities extends ExposureWatchlistEntities {
  @override
  final ExposureWatchlistEntitiesStatusEnum status;
  @override
  final BuiltList<Attribution>? attribution;
  @override
  final BuiltList<ExposureWatchlistEntitiesCountsInner>? counts;

  factory _$ExposureWatchlistEntities([
    void Function(ExposureWatchlistEntitiesBuilder)? updates,
  ]) => (ExposureWatchlistEntitiesBuilder()..update(updates))._build();

  _$ExposureWatchlistEntities._({
    required this.status,
    this.attribution,
    this.counts,
  }) : super._();
  @override
  ExposureWatchlistEntities rebuild(
    void Function(ExposureWatchlistEntitiesBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExposureWatchlistEntitiesBuilder toBuilder() =>
      ExposureWatchlistEntitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExposureWatchlistEntities &&
        status == other.status &&
        attribution == other.attribution &&
        counts == other.counts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, counts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExposureWatchlistEntities')
          ..add('status', status)
          ..add('attribution', attribution)
          ..add('counts', counts))
        .toString();
  }
}

class ExposureWatchlistEntitiesBuilder
    implements
        Builder<ExposureWatchlistEntities, ExposureWatchlistEntitiesBuilder> {
  _$ExposureWatchlistEntities? _$v;

  ExposureWatchlistEntitiesStatusEnum? _status;
  ExposureWatchlistEntitiesStatusEnum? get status => _$this._status;
  set status(ExposureWatchlistEntitiesStatusEnum? status) =>
      _$this._status = status;

  ListBuilder<Attribution>? _attribution;
  ListBuilder<Attribution> get attribution =>
      _$this._attribution ??= ListBuilder<Attribution>();
  set attribution(ListBuilder<Attribution>? attribution) =>
      _$this._attribution = attribution;

  ListBuilder<ExposureWatchlistEntitiesCountsInner>? _counts;
  ListBuilder<ExposureWatchlistEntitiesCountsInner> get counts =>
      _$this._counts ??= ListBuilder<ExposureWatchlistEntitiesCountsInner>();
  set counts(ListBuilder<ExposureWatchlistEntitiesCountsInner>? counts) =>
      _$this._counts = counts;

  ExposureWatchlistEntitiesBuilder() {
    ExposureWatchlistEntities._defaults(this);
  }

  ExposureWatchlistEntitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _attribution = $v.attribution?.toBuilder();
      _counts = $v.counts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExposureWatchlistEntities other) {
    _$v = other as _$ExposureWatchlistEntities;
  }

  @override
  void update(void Function(ExposureWatchlistEntitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExposureWatchlistEntities build() => _build();

  _$ExposureWatchlistEntities _build() {
    _$ExposureWatchlistEntities _$result;
    try {
      _$result =
          _$v ??
          _$ExposureWatchlistEntities._(
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'ExposureWatchlistEntities',
              'status',
            ),
            attribution: _attribution?.build(),
            counts: _counts?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attribution';
        _attribution?.build();
        _$failedField = 'counts';
        _counts?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExposureWatchlistEntities',
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

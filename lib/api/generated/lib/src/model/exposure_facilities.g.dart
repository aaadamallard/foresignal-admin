// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exposure_facilities.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExposureFacilitiesStatusEnum _$exposureFacilitiesStatusEnum_ok =
    const ExposureFacilitiesStatusEnum._('ok');
const ExposureFacilitiesStatusEnum _$exposureFacilitiesStatusEnum_unavailable =
    const ExposureFacilitiesStatusEnum._('unavailable');
const ExposureFacilitiesStatusEnum _$exposureFacilitiesStatusEnum_notInstalled =
    const ExposureFacilitiesStatusEnum._('notInstalled');
const ExposureFacilitiesStatusEnum
_$exposureFacilitiesStatusEnum_unknownDefaultOpenApi =
    const ExposureFacilitiesStatusEnum._('unknownDefaultOpenApi');

ExposureFacilitiesStatusEnum _$exposureFacilitiesStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ok':
      return _$exposureFacilitiesStatusEnum_ok;
    case 'unavailable':
      return _$exposureFacilitiesStatusEnum_unavailable;
    case 'notInstalled':
      return _$exposureFacilitiesStatusEnum_notInstalled;
    case 'unknownDefaultOpenApi':
      return _$exposureFacilitiesStatusEnum_unknownDefaultOpenApi;
    default:
      return _$exposureFacilitiesStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ExposureFacilitiesStatusEnum>
_$exposureFacilitiesStatusEnumValues =
    BuiltSet<ExposureFacilitiesStatusEnum>(const <ExposureFacilitiesStatusEnum>[
      _$exposureFacilitiesStatusEnum_ok,
      _$exposureFacilitiesStatusEnum_unavailable,
      _$exposureFacilitiesStatusEnum_notInstalled,
      _$exposureFacilitiesStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<ExposureFacilitiesStatusEnum>
_$exposureFacilitiesStatusEnumSerializer =
    _$ExposureFacilitiesStatusEnumSerializer();

class _$ExposureFacilitiesStatusEnumSerializer
    implements PrimitiveSerializer<ExposureFacilitiesStatusEnum> {
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
  final Iterable<Type> types = const <Type>[ExposureFacilitiesStatusEnum];
  @override
  final String wireName = 'ExposureFacilitiesStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExposureFacilitiesStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExposureFacilitiesStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExposureFacilitiesStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExposureFacilities extends ExposureFacilities {
  @override
  final ExposureFacilitiesStatusEnum status;
  @override
  final BuiltList<Attribution>? attribution;
  @override
  final BuiltMap<String, int>? counts;
  @override
  final int? total;

  factory _$ExposureFacilities([
    void Function(ExposureFacilitiesBuilder)? updates,
  ]) => (ExposureFacilitiesBuilder()..update(updates))._build();

  _$ExposureFacilities._({
    required this.status,
    this.attribution,
    this.counts,
    this.total,
  }) : super._();
  @override
  ExposureFacilities rebuild(
    void Function(ExposureFacilitiesBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExposureFacilitiesBuilder toBuilder() =>
      ExposureFacilitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExposureFacilities &&
        status == other.status &&
        attribution == other.attribution &&
        counts == other.counts &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, counts.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExposureFacilities')
          ..add('status', status)
          ..add('attribution', attribution)
          ..add('counts', counts)
          ..add('total', total))
        .toString();
  }
}

class ExposureFacilitiesBuilder
    implements Builder<ExposureFacilities, ExposureFacilitiesBuilder> {
  _$ExposureFacilities? _$v;

  ExposureFacilitiesStatusEnum? _status;
  ExposureFacilitiesStatusEnum? get status => _$this._status;
  set status(ExposureFacilitiesStatusEnum? status) => _$this._status = status;

  ListBuilder<Attribution>? _attribution;
  ListBuilder<Attribution> get attribution =>
      _$this._attribution ??= ListBuilder<Attribution>();
  set attribution(ListBuilder<Attribution>? attribution) =>
      _$this._attribution = attribution;

  MapBuilder<String, int>? _counts;
  MapBuilder<String, int> get counts =>
      _$this._counts ??= MapBuilder<String, int>();
  set counts(MapBuilder<String, int>? counts) => _$this._counts = counts;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ExposureFacilitiesBuilder() {
    ExposureFacilities._defaults(this);
  }

  ExposureFacilitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _attribution = $v.attribution?.toBuilder();
      _counts = $v.counts?.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExposureFacilities other) {
    _$v = other as _$ExposureFacilities;
  }

  @override
  void update(void Function(ExposureFacilitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExposureFacilities build() => _build();

  _$ExposureFacilities _build() {
    _$ExposureFacilities _$result;
    try {
      _$result =
          _$v ??
          _$ExposureFacilities._(
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'ExposureFacilities',
              'status',
            ),
            attribution: _attribution?.build(),
            counts: _counts?.build(),
            total: total,
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
          r'ExposureFacilities',
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

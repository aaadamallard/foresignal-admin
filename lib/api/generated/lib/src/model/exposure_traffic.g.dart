// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exposure_traffic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExposureTrafficStatusEnum _$exposureTrafficStatusEnum_ok =
    const ExposureTrafficStatusEnum._('ok');
const ExposureTrafficStatusEnum _$exposureTrafficStatusEnum_unavailable =
    const ExposureTrafficStatusEnum._('unavailable');
const ExposureTrafficStatusEnum _$exposureTrafficStatusEnum_notInstalled =
    const ExposureTrafficStatusEnum._('notInstalled');

ExposureTrafficStatusEnum _$exposureTrafficStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$exposureTrafficStatusEnum_ok;
    case 'unavailable':
      return _$exposureTrafficStatusEnum_unavailable;
    case 'notInstalled':
      return _$exposureTrafficStatusEnum_notInstalled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExposureTrafficStatusEnum> _$exposureTrafficStatusEnumValues =
    BuiltSet<ExposureTrafficStatusEnum>(const <ExposureTrafficStatusEnum>[
      _$exposureTrafficStatusEnum_ok,
      _$exposureTrafficStatusEnum_unavailable,
      _$exposureTrafficStatusEnum_notInstalled,
    ]);

Serializer<ExposureTrafficStatusEnum> _$exposureTrafficStatusEnumSerializer =
    _$ExposureTrafficStatusEnumSerializer();

class _$ExposureTrafficStatusEnumSerializer
    implements PrimitiveSerializer<ExposureTrafficStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'unavailable': 'unavailable',
    'notInstalled': 'not-installed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'unavailable': 'unavailable',
    'not-installed': 'notInstalled',
  };

  @override
  final Iterable<Type> types = const <Type>[ExposureTrafficStatusEnum];
  @override
  final String wireName = 'ExposureTrafficStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExposureTrafficStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExposureTrafficStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExposureTrafficStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExposureTraffic extends ExposureTraffic {
  @override
  final ExposureTrafficStatusEnum status;
  @override
  final BuiltList<Attribution>? attribution;
  @override
  final int? aircraft;
  @override
  final int? vessels;

  factory _$ExposureTraffic([void Function(ExposureTrafficBuilder)? updates]) =>
      (ExposureTrafficBuilder()..update(updates))._build();

  _$ExposureTraffic._({
    required this.status,
    this.attribution,
    this.aircraft,
    this.vessels,
  }) : super._();
  @override
  ExposureTraffic rebuild(void Function(ExposureTrafficBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExposureTrafficBuilder toBuilder() => ExposureTrafficBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExposureTraffic &&
        status == other.status &&
        attribution == other.attribution &&
        aircraft == other.aircraft &&
        vessels == other.vessels;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, aircraft.hashCode);
    _$hash = $jc(_$hash, vessels.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExposureTraffic')
          ..add('status', status)
          ..add('attribution', attribution)
          ..add('aircraft', aircraft)
          ..add('vessels', vessels))
        .toString();
  }
}

class ExposureTrafficBuilder
    implements Builder<ExposureTraffic, ExposureTrafficBuilder> {
  _$ExposureTraffic? _$v;

  ExposureTrafficStatusEnum? _status;
  ExposureTrafficStatusEnum? get status => _$this._status;
  set status(ExposureTrafficStatusEnum? status) => _$this._status = status;

  ListBuilder<Attribution>? _attribution;
  ListBuilder<Attribution> get attribution =>
      _$this._attribution ??= ListBuilder<Attribution>();
  set attribution(ListBuilder<Attribution>? attribution) =>
      _$this._attribution = attribution;

  int? _aircraft;
  int? get aircraft => _$this._aircraft;
  set aircraft(int? aircraft) => _$this._aircraft = aircraft;

  int? _vessels;
  int? get vessels => _$this._vessels;
  set vessels(int? vessels) => _$this._vessels = vessels;

  ExposureTrafficBuilder() {
    ExposureTraffic._defaults(this);
  }

  ExposureTrafficBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _attribution = $v.attribution?.toBuilder();
      _aircraft = $v.aircraft;
      _vessels = $v.vessels;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExposureTraffic other) {
    _$v = other as _$ExposureTraffic;
  }

  @override
  void update(void Function(ExposureTrafficBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExposureTraffic build() => _build();

  _$ExposureTraffic _build() {
    _$ExposureTraffic _$result;
    try {
      _$result =
          _$v ??
          _$ExposureTraffic._(
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'ExposureTraffic',
              'status',
            ),
            attribution: _attribution?.build(),
            aircraft: aircraft,
            vessels: vessels,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attribution';
        _attribution?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExposureTraffic',
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

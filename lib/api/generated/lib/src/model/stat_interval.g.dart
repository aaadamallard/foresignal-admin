// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stat_interval.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StatIntervalMethodEnum _$statIntervalMethodEnum_wilson =
    const StatIntervalMethodEnum._('wilson');
const StatIntervalMethodEnum _$statIntervalMethodEnum_jeffreys =
    const StatIntervalMethodEnum._('jeffreys');
const StatIntervalMethodEnum _$statIntervalMethodEnum_pairedBootstrap =
    const StatIntervalMethodEnum._('pairedBootstrap');
const StatIntervalMethodEnum _$statIntervalMethodEnum_empirical =
    const StatIntervalMethodEnum._('empirical');

StatIntervalMethodEnum _$statIntervalMethodEnumValueOf(String name) {
  switch (name) {
    case 'wilson':
      return _$statIntervalMethodEnum_wilson;
    case 'jeffreys':
      return _$statIntervalMethodEnum_jeffreys;
    case 'pairedBootstrap':
      return _$statIntervalMethodEnum_pairedBootstrap;
    case 'empirical':
      return _$statIntervalMethodEnum_empirical;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StatIntervalMethodEnum> _$statIntervalMethodEnumValues =
    BuiltSet<StatIntervalMethodEnum>(const <StatIntervalMethodEnum>[
      _$statIntervalMethodEnum_wilson,
      _$statIntervalMethodEnum_jeffreys,
      _$statIntervalMethodEnum_pairedBootstrap,
      _$statIntervalMethodEnum_empirical,
    ]);

Serializer<StatIntervalMethodEnum> _$statIntervalMethodEnumSerializer =
    _$StatIntervalMethodEnumSerializer();

class _$StatIntervalMethodEnumSerializer
    implements PrimitiveSerializer<StatIntervalMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'wilson': 'wilson',
    'jeffreys': 'jeffreys',
    'pairedBootstrap': 'paired-bootstrap',
    'empirical': 'empirical',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'wilson': 'wilson',
    'jeffreys': 'jeffreys',
    'paired-bootstrap': 'pairedBootstrap',
    'empirical': 'empirical',
  };

  @override
  final Iterable<Type> types = const <Type>[StatIntervalMethodEnum];
  @override
  final String wireName = 'StatIntervalMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    StatIntervalMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StatIntervalMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StatIntervalMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StatInterval extends StatInterval {
  @override
  final num lower;
  @override
  final num upper;
  @override
  final num level;
  @override
  final StatIntervalMethodEnum method;

  factory _$StatInterval([void Function(StatIntervalBuilder)? updates]) =>
      (StatIntervalBuilder()..update(updates))._build();

  _$StatInterval._({
    required this.lower,
    required this.upper,
    required this.level,
    required this.method,
  }) : super._();
  @override
  StatInterval rebuild(void Function(StatIntervalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatIntervalBuilder toBuilder() => StatIntervalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatInterval &&
        lower == other.lower &&
        upper == other.upper &&
        level == other.level &&
        method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lower.hashCode);
    _$hash = $jc(_$hash, upper.hashCode);
    _$hash = $jc(_$hash, level.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatInterval')
          ..add('lower', lower)
          ..add('upper', upper)
          ..add('level', level)
          ..add('method', method))
        .toString();
  }
}

class StatIntervalBuilder
    implements Builder<StatInterval, StatIntervalBuilder> {
  _$StatInterval? _$v;

  num? _lower;
  num? get lower => _$this._lower;
  set lower(num? lower) => _$this._lower = lower;

  num? _upper;
  num? get upper => _$this._upper;
  set upper(num? upper) => _$this._upper = upper;

  num? _level;
  num? get level => _$this._level;
  set level(num? level) => _$this._level = level;

  StatIntervalMethodEnum? _method;
  StatIntervalMethodEnum? get method => _$this._method;
  set method(StatIntervalMethodEnum? method) => _$this._method = method;

  StatIntervalBuilder() {
    StatInterval._defaults(this);
  }

  StatIntervalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lower = $v.lower;
      _upper = $v.upper;
      _level = $v.level;
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatInterval other) {
    _$v = other as _$StatInterval;
  }

  @override
  void update(void Function(StatIntervalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatInterval build() => _build();

  _$StatInterval _build() {
    final _$result =
        _$v ??
        _$StatInterval._(
          lower: BuiltValueNullFieldError.checkNotNull(
            lower,
            r'StatInterval',
            'lower',
          ),
          upper: BuiltValueNullFieldError.checkNotNull(
            upper,
            r'StatInterval',
            'upper',
          ),
          level: BuiltValueNullFieldError.checkNotNull(
            level,
            r'StatInterval',
            'level',
          ),
          method: BuiltValueNullFieldError.checkNotNull(
            method,
            r'StatInterval',
            'method',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

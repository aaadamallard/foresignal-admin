// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_quota.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialQuotaUnitEnum _$socialQuotaUnitEnum_requests =
    const SocialQuotaUnitEnum._('requests');
const SocialQuotaUnitEnum _$socialQuotaUnitEnum_units =
    const SocialQuotaUnitEnum._('units');
const SocialQuotaUnitEnum _$socialQuotaUnitEnum_queries =
    const SocialQuotaUnitEnum._('queries');
const SocialQuotaUnitEnum _$socialQuotaUnitEnum_posts =
    const SocialQuotaUnitEnum._('posts');
const SocialQuotaUnitEnum _$socialQuotaUnitEnum_hashtags =
    const SocialQuotaUnitEnum._('hashtags');
const SocialQuotaUnitEnum _$socialQuotaUnitEnum_unknownDefaultOpenApi =
    const SocialQuotaUnitEnum._('unknownDefaultOpenApi');

SocialQuotaUnitEnum _$socialQuotaUnitEnumValueOf(String name) {
  switch (name) {
    case 'requests':
      return _$socialQuotaUnitEnum_requests;
    case 'units':
      return _$socialQuotaUnitEnum_units;
    case 'queries':
      return _$socialQuotaUnitEnum_queries;
    case 'posts':
      return _$socialQuotaUnitEnum_posts;
    case 'hashtags':
      return _$socialQuotaUnitEnum_hashtags;
    case 'unknownDefaultOpenApi':
      return _$socialQuotaUnitEnum_unknownDefaultOpenApi;
    default:
      return _$socialQuotaUnitEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SocialQuotaUnitEnum> _$socialQuotaUnitEnumValues =
    BuiltSet<SocialQuotaUnitEnum>(const <SocialQuotaUnitEnum>[
      _$socialQuotaUnitEnum_requests,
      _$socialQuotaUnitEnum_units,
      _$socialQuotaUnitEnum_queries,
      _$socialQuotaUnitEnum_posts,
      _$socialQuotaUnitEnum_hashtags,
      _$socialQuotaUnitEnum_unknownDefaultOpenApi,
    ]);

Serializer<SocialQuotaUnitEnum> _$socialQuotaUnitEnumSerializer =
    _$SocialQuotaUnitEnumSerializer();

class _$SocialQuotaUnitEnumSerializer
    implements PrimitiveSerializer<SocialQuotaUnitEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'requests': 'requests',
    'units': 'units',
    'queries': 'queries',
    'posts': 'posts',
    'hashtags': 'hashtags',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'requests': 'requests',
    'units': 'units',
    'queries': 'queries',
    'posts': 'posts',
    'hashtags': 'hashtags',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialQuotaUnitEnum];
  @override
  final String wireName = 'SocialQuotaUnitEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialQuotaUnitEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialQuotaUnitEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialQuotaUnitEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialQuota extends SocialQuota {
  @override
  final SocialQuotaUnitEnum unit;
  @override
  final int? limit;
  @override
  final String window;
  @override
  final bool? rolling;
  @override
  final int used;
  @override
  final int? remaining;
  @override
  final DateTime? resetsAt;
  @override
  final String? description;

  factory _$SocialQuota([void Function(SocialQuotaBuilder)? updates]) =>
      (SocialQuotaBuilder()..update(updates))._build();

  _$SocialQuota._({
    required this.unit,
    this.limit,
    required this.window,
    this.rolling,
    required this.used,
    this.remaining,
    this.resetsAt,
    this.description,
  }) : super._();
  @override
  SocialQuota rebuild(void Function(SocialQuotaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialQuotaBuilder toBuilder() => SocialQuotaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialQuota &&
        unit == other.unit &&
        limit == other.limit &&
        window == other.window &&
        rolling == other.rolling &&
        used == other.used &&
        remaining == other.remaining &&
        resetsAt == other.resetsAt &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, rolling.hashCode);
    _$hash = $jc(_$hash, used.hashCode);
    _$hash = $jc(_$hash, remaining.hashCode);
    _$hash = $jc(_$hash, resetsAt.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialQuota')
          ..add('unit', unit)
          ..add('limit', limit)
          ..add('window', window)
          ..add('rolling', rolling)
          ..add('used', used)
          ..add('remaining', remaining)
          ..add('resetsAt', resetsAt)
          ..add('description', description))
        .toString();
  }
}

class SocialQuotaBuilder implements Builder<SocialQuota, SocialQuotaBuilder> {
  _$SocialQuota? _$v;

  SocialQuotaUnitEnum? _unit;
  SocialQuotaUnitEnum? get unit => _$this._unit;
  set unit(SocialQuotaUnitEnum? unit) => _$this._unit = unit;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _window;
  String? get window => _$this._window;
  set window(String? window) => _$this._window = window;

  bool? _rolling;
  bool? get rolling => _$this._rolling;
  set rolling(bool? rolling) => _$this._rolling = rolling;

  int? _used;
  int? get used => _$this._used;
  set used(int? used) => _$this._used = used;

  int? _remaining;
  int? get remaining => _$this._remaining;
  set remaining(int? remaining) => _$this._remaining = remaining;

  DateTime? _resetsAt;
  DateTime? get resetsAt => _$this._resetsAt;
  set resetsAt(DateTime? resetsAt) => _$this._resetsAt = resetsAt;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  SocialQuotaBuilder() {
    SocialQuota._defaults(this);
  }

  SocialQuotaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unit = $v.unit;
      _limit = $v.limit;
      _window = $v.window;
      _rolling = $v.rolling;
      _used = $v.used;
      _remaining = $v.remaining;
      _resetsAt = $v.resetsAt;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialQuota other) {
    _$v = other as _$SocialQuota;
  }

  @override
  void update(void Function(SocialQuotaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialQuota build() => _build();

  _$SocialQuota _build() {
    final _$result =
        _$v ??
        _$SocialQuota._(
          unit: BuiltValueNullFieldError.checkNotNull(
            unit,
            r'SocialQuota',
            'unit',
          ),
          limit: limit,
          window: BuiltValueNullFieldError.checkNotNull(
            window,
            r'SocialQuota',
            'window',
          ),
          rolling: rolling,
          used: BuiltValueNullFieldError.checkNotNull(
            used,
            r'SocialQuota',
            'used',
          ),
          remaining: remaining,
          resetsAt: resetsAt,
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

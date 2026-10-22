// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_access.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SourceAccessRouteEnum _$sourceAccessRouteEnum_official =
    const SourceAccessRouteEnum._('official');
const SourceAccessRouteEnum _$sourceAccessRouteEnum_unofficialApi =
    const SourceAccessRouteEnum._('unofficialApi');
const SourceAccessRouteEnum _$sourceAccessRouteEnum_scrape =
    const SourceAccessRouteEnum._('scrape');
const SourceAccessRouteEnum _$sourceAccessRouteEnum_browser =
    const SourceAccessRouteEnum._('browser');
const SourceAccessRouteEnum _$sourceAccessRouteEnum_other =
    const SourceAccessRouteEnum._('other');

SourceAccessRouteEnum _$sourceAccessRouteEnumValueOf(String name) {
  switch (name) {
    case 'official':
      return _$sourceAccessRouteEnum_official;
    case 'unofficialApi':
      return _$sourceAccessRouteEnum_unofficialApi;
    case 'scrape':
      return _$sourceAccessRouteEnum_scrape;
    case 'browser':
      return _$sourceAccessRouteEnum_browser;
    case 'other':
      return _$sourceAccessRouteEnum_other;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SourceAccessRouteEnum> _$sourceAccessRouteEnumValues =
    BuiltSet<SourceAccessRouteEnum>(const <SourceAccessRouteEnum>[
  _$sourceAccessRouteEnum_official,
  _$sourceAccessRouteEnum_unofficialApi,
  _$sourceAccessRouteEnum_scrape,
  _$sourceAccessRouteEnum_browser,
  _$sourceAccessRouteEnum_other,
]);

const SourceAccessFragilityEnum _$sourceAccessFragilityEnum_low =
    const SourceAccessFragilityEnum._('low');
const SourceAccessFragilityEnum _$sourceAccessFragilityEnum_medium =
    const SourceAccessFragilityEnum._('medium');
const SourceAccessFragilityEnum _$sourceAccessFragilityEnum_high =
    const SourceAccessFragilityEnum._('high');

SourceAccessFragilityEnum _$sourceAccessFragilityEnumValueOf(String name) {
  switch (name) {
    case 'low':
      return _$sourceAccessFragilityEnum_low;
    case 'medium':
      return _$sourceAccessFragilityEnum_medium;
    case 'high':
      return _$sourceAccessFragilityEnum_high;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SourceAccessFragilityEnum> _$sourceAccessFragilityEnumValues =
    BuiltSet<SourceAccessFragilityEnum>(const <SourceAccessFragilityEnum>[
  _$sourceAccessFragilityEnum_low,
  _$sourceAccessFragilityEnum_medium,
  _$sourceAccessFragilityEnum_high,
]);

Serializer<SourceAccessRouteEnum> _$sourceAccessRouteEnumSerializer =
    _$SourceAccessRouteEnumSerializer();
Serializer<SourceAccessFragilityEnum> _$sourceAccessFragilityEnumSerializer =
    _$SourceAccessFragilityEnumSerializer();

class _$SourceAccessRouteEnumSerializer
    implements PrimitiveSerializer<SourceAccessRouteEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'official': 'official',
    'unofficialApi': 'unofficial-api',
    'scrape': 'scrape',
    'browser': 'browser',
    'other': 'other',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'official': 'official',
    'unofficial-api': 'unofficialApi',
    'scrape': 'scrape',
    'browser': 'browser',
    'other': 'other',
  };

  @override
  final Iterable<Type> types = const <Type>[SourceAccessRouteEnum];
  @override
  final String wireName = 'SourceAccessRouteEnum';

  @override
  Object serialize(Serializers serializers, SourceAccessRouteEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SourceAccessRouteEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SourceAccessRouteEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SourceAccessFragilityEnumSerializer
    implements PrimitiveSerializer<SourceAccessFragilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
  };

  @override
  final Iterable<Type> types = const <Type>[SourceAccessFragilityEnum];
  @override
  final String wireName = 'SourceAccessFragilityEnum';

  @override
  Object serialize(Serializers serializers, SourceAccessFragilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SourceAccessFragilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SourceAccessFragilityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SourceAccess extends SourceAccess {
  @override
  final SourceAccessRouteEnum route;
  @override
  final String? termsSummary;
  @override
  final String? termsUrl;
  @override
  final SourceAccessFragilityEnum? fragility;

  factory _$SourceAccess([void Function(SourceAccessBuilder)? updates]) =>
      (SourceAccessBuilder()..update(updates))._build();

  _$SourceAccess._(
      {required this.route, this.termsSummary, this.termsUrl, this.fragility})
      : super._();
  @override
  SourceAccess rebuild(void Function(SourceAccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceAccessBuilder toBuilder() => SourceAccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceAccess &&
        route == other.route &&
        termsSummary == other.termsSummary &&
        termsUrl == other.termsUrl &&
        fragility == other.fragility;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, route.hashCode);
    _$hash = $jc(_$hash, termsSummary.hashCode);
    _$hash = $jc(_$hash, termsUrl.hashCode);
    _$hash = $jc(_$hash, fragility.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SourceAccess')
          ..add('route', route)
          ..add('termsSummary', termsSummary)
          ..add('termsUrl', termsUrl)
          ..add('fragility', fragility))
        .toString();
  }
}

class SourceAccessBuilder
    implements Builder<SourceAccess, SourceAccessBuilder> {
  _$SourceAccess? _$v;

  SourceAccessRouteEnum? _route;
  SourceAccessRouteEnum? get route => _$this._route;
  set route(SourceAccessRouteEnum? route) => _$this._route = route;

  String? _termsSummary;
  String? get termsSummary => _$this._termsSummary;
  set termsSummary(String? termsSummary) => _$this._termsSummary = termsSummary;

  String? _termsUrl;
  String? get termsUrl => _$this._termsUrl;
  set termsUrl(String? termsUrl) => _$this._termsUrl = termsUrl;

  SourceAccessFragilityEnum? _fragility;
  SourceAccessFragilityEnum? get fragility => _$this._fragility;
  set fragility(SourceAccessFragilityEnum? fragility) =>
      _$this._fragility = fragility;

  SourceAccessBuilder() {
    SourceAccess._defaults(this);
  }

  SourceAccessBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _route = $v.route;
      _termsSummary = $v.termsSummary;
      _termsUrl = $v.termsUrl;
      _fragility = $v.fragility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceAccess other) {
    _$v = other as _$SourceAccess;
  }

  @override
  void update(void Function(SourceAccessBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceAccess build() => _build();

  _$SourceAccess _build() {
    final _$result = _$v ??
        _$SourceAccess._(
          route: BuiltValueNullFieldError.checkNotNull(
              route, r'SourceAccess', 'route'),
          termsSummary: termsSummary,
          termsUrl: termsUrl,
          fragility: fragility,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_source_info_access.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpSourceInfoAccessRouteEnum _$edpSourceInfoAccessRouteEnum_official =
    const EdpSourceInfoAccessRouteEnum._('official');
const EdpSourceInfoAccessRouteEnum
    _$edpSourceInfoAccessRouteEnum_unofficialApi =
    const EdpSourceInfoAccessRouteEnum._('unofficialApi');
const EdpSourceInfoAccessRouteEnum _$edpSourceInfoAccessRouteEnum_scrape =
    const EdpSourceInfoAccessRouteEnum._('scrape');
const EdpSourceInfoAccessRouteEnum _$edpSourceInfoAccessRouteEnum_browser =
    const EdpSourceInfoAccessRouteEnum._('browser');
const EdpSourceInfoAccessRouteEnum _$edpSourceInfoAccessRouteEnum_other =
    const EdpSourceInfoAccessRouteEnum._('other');

EdpSourceInfoAccessRouteEnum _$edpSourceInfoAccessRouteEnumValueOf(
    String name) {
  switch (name) {
    case 'official':
      return _$edpSourceInfoAccessRouteEnum_official;
    case 'unofficialApi':
      return _$edpSourceInfoAccessRouteEnum_unofficialApi;
    case 'scrape':
      return _$edpSourceInfoAccessRouteEnum_scrape;
    case 'browser':
      return _$edpSourceInfoAccessRouteEnum_browser;
    case 'other':
      return _$edpSourceInfoAccessRouteEnum_other;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EdpSourceInfoAccessRouteEnum>
    _$edpSourceInfoAccessRouteEnumValues =
    BuiltSet<EdpSourceInfoAccessRouteEnum>(const <EdpSourceInfoAccessRouteEnum>[
  _$edpSourceInfoAccessRouteEnum_official,
  _$edpSourceInfoAccessRouteEnum_unofficialApi,
  _$edpSourceInfoAccessRouteEnum_scrape,
  _$edpSourceInfoAccessRouteEnum_browser,
  _$edpSourceInfoAccessRouteEnum_other,
]);

const EdpSourceInfoAccessFragilityEnum _$edpSourceInfoAccessFragilityEnum_low =
    const EdpSourceInfoAccessFragilityEnum._('low');
const EdpSourceInfoAccessFragilityEnum
    _$edpSourceInfoAccessFragilityEnum_medium =
    const EdpSourceInfoAccessFragilityEnum._('medium');
const EdpSourceInfoAccessFragilityEnum _$edpSourceInfoAccessFragilityEnum_high =
    const EdpSourceInfoAccessFragilityEnum._('high');

EdpSourceInfoAccessFragilityEnum _$edpSourceInfoAccessFragilityEnumValueOf(
    String name) {
  switch (name) {
    case 'low':
      return _$edpSourceInfoAccessFragilityEnum_low;
    case 'medium':
      return _$edpSourceInfoAccessFragilityEnum_medium;
    case 'high':
      return _$edpSourceInfoAccessFragilityEnum_high;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EdpSourceInfoAccessFragilityEnum>
    _$edpSourceInfoAccessFragilityEnumValues = BuiltSet<
        EdpSourceInfoAccessFragilityEnum>(const <EdpSourceInfoAccessFragilityEnum>[
  _$edpSourceInfoAccessFragilityEnum_low,
  _$edpSourceInfoAccessFragilityEnum_medium,
  _$edpSourceInfoAccessFragilityEnum_high,
]);

Serializer<EdpSourceInfoAccessRouteEnum>
    _$edpSourceInfoAccessRouteEnumSerializer =
    _$EdpSourceInfoAccessRouteEnumSerializer();
Serializer<EdpSourceInfoAccessFragilityEnum>
    _$edpSourceInfoAccessFragilityEnumSerializer =
    _$EdpSourceInfoAccessFragilityEnumSerializer();

class _$EdpSourceInfoAccessRouteEnumSerializer
    implements PrimitiveSerializer<EdpSourceInfoAccessRouteEnum> {
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
  final Iterable<Type> types = const <Type>[EdpSourceInfoAccessRouteEnum];
  @override
  final String wireName = 'EdpSourceInfoAccessRouteEnum';

  @override
  Object serialize(Serializers serializers, EdpSourceInfoAccessRouteEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EdpSourceInfoAccessRouteEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EdpSourceInfoAccessRouteEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EdpSourceInfoAccessFragilityEnumSerializer
    implements PrimitiveSerializer<EdpSourceInfoAccessFragilityEnum> {
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
  final Iterable<Type> types = const <Type>[EdpSourceInfoAccessFragilityEnum];
  @override
  final String wireName = 'EdpSourceInfoAccessFragilityEnum';

  @override
  Object serialize(
          Serializers serializers, EdpSourceInfoAccessFragilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EdpSourceInfoAccessFragilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EdpSourceInfoAccessFragilityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EdpSourceInfoAccess extends EdpSourceInfoAccess {
  @override
  final EdpSourceInfoAccessRouteEnum route;
  @override
  final EdpSourceInfoAccessFragilityEnum? fragility;

  factory _$EdpSourceInfoAccess(
          [void Function(EdpSourceInfoAccessBuilder)? updates]) =>
      (EdpSourceInfoAccessBuilder()..update(updates))._build();

  _$EdpSourceInfoAccess._({required this.route, this.fragility}) : super._();
  @override
  EdpSourceInfoAccess rebuild(
          void Function(EdpSourceInfoAccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpSourceInfoAccessBuilder toBuilder() =>
      EdpSourceInfoAccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpSourceInfoAccess &&
        route == other.route &&
        fragility == other.fragility;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, route.hashCode);
    _$hash = $jc(_$hash, fragility.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpSourceInfoAccess')
          ..add('route', route)
          ..add('fragility', fragility))
        .toString();
  }
}

class EdpSourceInfoAccessBuilder
    implements Builder<EdpSourceInfoAccess, EdpSourceInfoAccessBuilder> {
  _$EdpSourceInfoAccess? _$v;

  EdpSourceInfoAccessRouteEnum? _route;
  EdpSourceInfoAccessRouteEnum? get route => _$this._route;
  set route(EdpSourceInfoAccessRouteEnum? route) => _$this._route = route;

  EdpSourceInfoAccessFragilityEnum? _fragility;
  EdpSourceInfoAccessFragilityEnum? get fragility => _$this._fragility;
  set fragility(EdpSourceInfoAccessFragilityEnum? fragility) =>
      _$this._fragility = fragility;

  EdpSourceInfoAccessBuilder() {
    EdpSourceInfoAccess._defaults(this);
  }

  EdpSourceInfoAccessBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _route = $v.route;
      _fragility = $v.fragility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpSourceInfoAccess other) {
    _$v = other as _$EdpSourceInfoAccess;
  }

  @override
  void update(void Function(EdpSourceInfoAccessBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpSourceInfoAccess build() => _build();

  _$EdpSourceInfoAccess _build() {
    final _$result = _$v ??
        _$EdpSourceInfoAccess._(
          route: BuiltValueNullFieldError.checkNotNull(
              route, r'EdpSourceInfoAccess', 'route'),
          fragility: fragility,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

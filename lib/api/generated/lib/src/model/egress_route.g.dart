// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'egress_route.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EgressRoute extends EgressRoute {
  @override
  final String id;
  @override
  final String name;
  @override
  final String type;
  @override
  final bool enabled;
  @override
  final String? url;
  @override
  final String? boundInterface;
  @override
  final String? exitIp;
  @override
  final EgressHealth? health;
  @override
  final BuiltList<String>? secretsSet;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$EgressRoute([void Function(EgressRouteBuilder)? updates]) =>
      (EgressRouteBuilder()..update(updates))._build();

  _$EgressRoute._({
    required this.id,
    required this.name,
    required this.type,
    required this.enabled,
    this.url,
    this.boundInterface,
    this.exitIp,
    this.health,
    this.secretsSet,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  EgressRoute rebuild(void Function(EgressRouteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EgressRouteBuilder toBuilder() => EgressRouteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EgressRoute &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        enabled == other.enabled &&
        url == other.url &&
        boundInterface == other.boundInterface &&
        exitIp == other.exitIp &&
        health == other.health &&
        secretsSet == other.secretsSet &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, boundInterface.hashCode);
    _$hash = $jc(_$hash, exitIp.hashCode);
    _$hash = $jc(_$hash, health.hashCode);
    _$hash = $jc(_$hash, secretsSet.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EgressRoute')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('enabled', enabled)
          ..add('url', url)
          ..add('boundInterface', boundInterface)
          ..add('exitIp', exitIp)
          ..add('health', health)
          ..add('secretsSet', secretsSet)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class EgressRouteBuilder implements Builder<EgressRoute, EgressRouteBuilder> {
  _$EgressRoute? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _boundInterface;
  String? get boundInterface => _$this._boundInterface;
  set boundInterface(String? boundInterface) =>
      _$this._boundInterface = boundInterface;

  String? _exitIp;
  String? get exitIp => _$this._exitIp;
  set exitIp(String? exitIp) => _$this._exitIp = exitIp;

  EgressHealthBuilder? _health;
  EgressHealthBuilder get health => _$this._health ??= EgressHealthBuilder();
  set health(EgressHealthBuilder? health) => _$this._health = health;

  ListBuilder<String>? _secretsSet;
  ListBuilder<String> get secretsSet =>
      _$this._secretsSet ??= ListBuilder<String>();
  set secretsSet(ListBuilder<String>? secretsSet) =>
      _$this._secretsSet = secretsSet;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  EgressRouteBuilder() {
    EgressRoute._defaults(this);
  }

  EgressRouteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _enabled = $v.enabled;
      _url = $v.url;
      _boundInterface = $v.boundInterface;
      _exitIp = $v.exitIp;
      _health = $v.health?.toBuilder();
      _secretsSet = $v.secretsSet?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EgressRoute other) {
    _$v = other as _$EgressRoute;
  }

  @override
  void update(void Function(EgressRouteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EgressRoute build() => _build();

  _$EgressRoute _build() {
    _$EgressRoute _$result;
    try {
      _$result =
          _$v ??
          _$EgressRoute._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'EgressRoute', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'EgressRoute',
              'name',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EgressRoute',
              'type',
            ),
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'EgressRoute',
              'enabled',
            ),
            url: url,
            boundInterface: boundInterface,
            exitIp: exitIp,
            health: _health?.build(),
            secretsSet: _secretsSet?.build(),
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'health';
        _health?.build();
        _$failedField = 'secretsSet';
        _secretsSet?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EgressRoute',
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

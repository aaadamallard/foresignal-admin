// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Session extends Session {
  @override
  final String id;
  @override
  final String? tokenPrefix;
  @override
  final DateTime createdAt;
  @override
  final DateTime? lastSeenAt;
  @override
  final DateTime expiresAt;
  @override
  final DateTime? idleExpiresAt;
  @override
  final String? userAgent;
  @override
  final String? ipAddress;
  @override
  final bool current;

  factory _$Session([void Function(SessionBuilder)? updates]) =>
      (SessionBuilder()..update(updates))._build();

  _$Session._({
    required this.id,
    this.tokenPrefix,
    required this.createdAt,
    this.lastSeenAt,
    required this.expiresAt,
    this.idleExpiresAt,
    this.userAgent,
    this.ipAddress,
    required this.current,
  }) : super._();
  @override
  Session rebuild(void Function(SessionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionBuilder toBuilder() => SessionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Session &&
        id == other.id &&
        tokenPrefix == other.tokenPrefix &&
        createdAt == other.createdAt &&
        lastSeenAt == other.lastSeenAt &&
        expiresAt == other.expiresAt &&
        idleExpiresAt == other.idleExpiresAt &&
        userAgent == other.userAgent &&
        ipAddress == other.ipAddress &&
        current == other.current;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, tokenPrefix.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastSeenAt.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, idleExpiresAt.hashCode);
    _$hash = $jc(_$hash, userAgent.hashCode);
    _$hash = $jc(_$hash, ipAddress.hashCode);
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Session')
          ..add('id', id)
          ..add('tokenPrefix', tokenPrefix)
          ..add('createdAt', createdAt)
          ..add('lastSeenAt', lastSeenAt)
          ..add('expiresAt', expiresAt)
          ..add('idleExpiresAt', idleExpiresAt)
          ..add('userAgent', userAgent)
          ..add('ipAddress', ipAddress)
          ..add('current', current))
        .toString();
  }
}

class SessionBuilder implements Builder<Session, SessionBuilder> {
  _$Session? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _tokenPrefix;
  String? get tokenPrefix => _$this._tokenPrefix;
  set tokenPrefix(String? tokenPrefix) => _$this._tokenPrefix = tokenPrefix;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _lastSeenAt;
  DateTime? get lastSeenAt => _$this._lastSeenAt;
  set lastSeenAt(DateTime? lastSeenAt) => _$this._lastSeenAt = lastSeenAt;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  DateTime? _idleExpiresAt;
  DateTime? get idleExpiresAt => _$this._idleExpiresAt;
  set idleExpiresAt(DateTime? idleExpiresAt) =>
      _$this._idleExpiresAt = idleExpiresAt;

  String? _userAgent;
  String? get userAgent => _$this._userAgent;
  set userAgent(String? userAgent) => _$this._userAgent = userAgent;

  String? _ipAddress;
  String? get ipAddress => _$this._ipAddress;
  set ipAddress(String? ipAddress) => _$this._ipAddress = ipAddress;

  bool? _current;
  bool? get current => _$this._current;
  set current(bool? current) => _$this._current = current;

  SessionBuilder() {
    Session._defaults(this);
  }

  SessionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _tokenPrefix = $v.tokenPrefix;
      _createdAt = $v.createdAt;
      _lastSeenAt = $v.lastSeenAt;
      _expiresAt = $v.expiresAt;
      _idleExpiresAt = $v.idleExpiresAt;
      _userAgent = $v.userAgent;
      _ipAddress = $v.ipAddress;
      _current = $v.current;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Session other) {
    _$v = other as _$Session;
  }

  @override
  void update(void Function(SessionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Session build() => _build();

  _$Session _build() {
    final _$result =
        _$v ??
        _$Session._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Session', 'id'),
          tokenPrefix: tokenPrefix,
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'Session',
            'createdAt',
          ),
          lastSeenAt: lastSeenAt,
          expiresAt: BuiltValueNullFieldError.checkNotNull(
            expiresAt,
            r'Session',
            'expiresAt',
          ),
          idleExpiresAt: idleExpiresAt,
          userAgent: userAgent,
          ipAddress: ipAddress,
          current: BuiltValueNullFieldError.checkNotNull(
            current,
            r'Session',
            'current',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

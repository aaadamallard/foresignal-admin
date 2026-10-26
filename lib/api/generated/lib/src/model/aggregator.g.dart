// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Aggregator extends Aggregator {
  @override
  final String domain;
  @override
  final String name;
  @override
  final bool enabled;
  @override
  final String? mode;
  @override
  final String? endpoint;
  @override
  final String? status;
  @override
  final BuiltList<String>? supersededSources;
  @override
  final DateTime? lastSeenAt;

  factory _$Aggregator([void Function(AggregatorBuilder)? updates]) =>
      (AggregatorBuilder()..update(updates))._build();

  _$Aggregator._({
    required this.domain,
    required this.name,
    required this.enabled,
    this.mode,
    this.endpoint,
    this.status,
    this.supersededSources,
    this.lastSeenAt,
  }) : super._();
  @override
  Aggregator rebuild(void Function(AggregatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregatorBuilder toBuilder() => AggregatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Aggregator &&
        domain == other.domain &&
        name == other.name &&
        enabled == other.enabled &&
        mode == other.mode &&
        endpoint == other.endpoint &&
        status == other.status &&
        supersededSources == other.supersededSources &&
        lastSeenAt == other.lastSeenAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, supersededSources.hashCode);
    _$hash = $jc(_$hash, lastSeenAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Aggregator')
          ..add('domain', domain)
          ..add('name', name)
          ..add('enabled', enabled)
          ..add('mode', mode)
          ..add('endpoint', endpoint)
          ..add('status', status)
          ..add('supersededSources', supersededSources)
          ..add('lastSeenAt', lastSeenAt))
        .toString();
  }
}

class AggregatorBuilder implements Builder<Aggregator, AggregatorBuilder> {
  _$Aggregator? _$v;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _mode;
  String? get mode => _$this._mode;
  set mode(String? mode) => _$this._mode = mode;

  String? _endpoint;
  String? get endpoint => _$this._endpoint;
  set endpoint(String? endpoint) => _$this._endpoint = endpoint;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<String>? _supersededSources;
  ListBuilder<String> get supersededSources =>
      _$this._supersededSources ??= ListBuilder<String>();
  set supersededSources(ListBuilder<String>? supersededSources) =>
      _$this._supersededSources = supersededSources;

  DateTime? _lastSeenAt;
  DateTime? get lastSeenAt => _$this._lastSeenAt;
  set lastSeenAt(DateTime? lastSeenAt) => _$this._lastSeenAt = lastSeenAt;

  AggregatorBuilder() {
    Aggregator._defaults(this);
  }

  AggregatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _domain = $v.domain;
      _name = $v.name;
      _enabled = $v.enabled;
      _mode = $v.mode;
      _endpoint = $v.endpoint;
      _status = $v.status;
      _supersededSources = $v.supersededSources?.toBuilder();
      _lastSeenAt = $v.lastSeenAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Aggregator other) {
    _$v = other as _$Aggregator;
  }

  @override
  void update(void Function(AggregatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Aggregator build() => _build();

  _$Aggregator _build() {
    _$Aggregator _$result;
    try {
      _$result =
          _$v ??
          _$Aggregator._(
            domain: BuiltValueNullFieldError.checkNotNull(
              domain,
              r'Aggregator',
              'domain',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'Aggregator',
              'name',
            ),
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'Aggregator',
              'enabled',
            ),
            mode: mode,
            endpoint: endpoint,
            status: status,
            supersededSources: _supersededSources?.build(),
            lastSeenAt: lastSeenAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'supersededSources';
        _supersededSources?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Aggregator',
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

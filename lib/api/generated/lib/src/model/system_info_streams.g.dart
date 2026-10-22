// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_streams.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoStreams extends SystemInfoStreams {
  @override
  final int? clients;
  @override
  final int? maxClients;
  @override
  final int? changeSubscribers;
  @override
  final int? alertSubscribers;
  @override
  final int? eventSubscribers;

  factory _$SystemInfoStreams(
          [void Function(SystemInfoStreamsBuilder)? updates]) =>
      (SystemInfoStreamsBuilder()..update(updates))._build();

  _$SystemInfoStreams._(
      {this.clients,
      this.maxClients,
      this.changeSubscribers,
      this.alertSubscribers,
      this.eventSubscribers})
      : super._();
  @override
  SystemInfoStreams rebuild(void Function(SystemInfoStreamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoStreamsBuilder toBuilder() =>
      SystemInfoStreamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoStreams &&
        clients == other.clients &&
        maxClients == other.maxClients &&
        changeSubscribers == other.changeSubscribers &&
        alertSubscribers == other.alertSubscribers &&
        eventSubscribers == other.eventSubscribers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clients.hashCode);
    _$hash = $jc(_$hash, maxClients.hashCode);
    _$hash = $jc(_$hash, changeSubscribers.hashCode);
    _$hash = $jc(_$hash, alertSubscribers.hashCode);
    _$hash = $jc(_$hash, eventSubscribers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoStreams')
          ..add('clients', clients)
          ..add('maxClients', maxClients)
          ..add('changeSubscribers', changeSubscribers)
          ..add('alertSubscribers', alertSubscribers)
          ..add('eventSubscribers', eventSubscribers))
        .toString();
  }
}

class SystemInfoStreamsBuilder
    implements Builder<SystemInfoStreams, SystemInfoStreamsBuilder> {
  _$SystemInfoStreams? _$v;

  int? _clients;
  int? get clients => _$this._clients;
  set clients(int? clients) => _$this._clients = clients;

  int? _maxClients;
  int? get maxClients => _$this._maxClients;
  set maxClients(int? maxClients) => _$this._maxClients = maxClients;

  int? _changeSubscribers;
  int? get changeSubscribers => _$this._changeSubscribers;
  set changeSubscribers(int? changeSubscribers) =>
      _$this._changeSubscribers = changeSubscribers;

  int? _alertSubscribers;
  int? get alertSubscribers => _$this._alertSubscribers;
  set alertSubscribers(int? alertSubscribers) =>
      _$this._alertSubscribers = alertSubscribers;

  int? _eventSubscribers;
  int? get eventSubscribers => _$this._eventSubscribers;
  set eventSubscribers(int? eventSubscribers) =>
      _$this._eventSubscribers = eventSubscribers;

  SystemInfoStreamsBuilder() {
    SystemInfoStreams._defaults(this);
  }

  SystemInfoStreamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clients = $v.clients;
      _maxClients = $v.maxClients;
      _changeSubscribers = $v.changeSubscribers;
      _alertSubscribers = $v.alertSubscribers;
      _eventSubscribers = $v.eventSubscribers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoStreams other) {
    _$v = other as _$SystemInfoStreams;
  }

  @override
  void update(void Function(SystemInfoStreamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoStreams build() => _build();

  _$SystemInfoStreams _build() {
    final _$result = _$v ??
        _$SystemInfoStreams._(
          clients: clients,
          maxClients: maxClients,
          changeSubscribers: changeSubscribers,
          alertSubscribers: alertSubscribers,
          eventSubscribers: eventSubscribers,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presence_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PresenceEvent extends PresenceEvent {
  @override
  final String workspaceId;
  @override
  final BuiltList<PresenceEventClientsInner> clients;
  @override
  final PresenceEventChange? change;
  @override
  final DateTime at;

  factory _$PresenceEvent([void Function(PresenceEventBuilder)? updates]) =>
      (PresenceEventBuilder()..update(updates))._build();

  _$PresenceEvent._({
    required this.workspaceId,
    required this.clients,
    this.change,
    required this.at,
  }) : super._();
  @override
  PresenceEvent rebuild(void Function(PresenceEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PresenceEventBuilder toBuilder() => PresenceEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PresenceEvent &&
        workspaceId == other.workspaceId &&
        clients == other.clients &&
        change == other.change &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, workspaceId.hashCode);
    _$hash = $jc(_$hash, clients.hashCode);
    _$hash = $jc(_$hash, change.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PresenceEvent')
          ..add('workspaceId', workspaceId)
          ..add('clients', clients)
          ..add('change', change)
          ..add('at', at))
        .toString();
  }
}

class PresenceEventBuilder
    implements Builder<PresenceEvent, PresenceEventBuilder> {
  _$PresenceEvent? _$v;

  String? _workspaceId;
  String? get workspaceId => _$this._workspaceId;
  set workspaceId(String? workspaceId) => _$this._workspaceId = workspaceId;

  ListBuilder<PresenceEventClientsInner>? _clients;
  ListBuilder<PresenceEventClientsInner> get clients =>
      _$this._clients ??= ListBuilder<PresenceEventClientsInner>();
  set clients(ListBuilder<PresenceEventClientsInner>? clients) =>
      _$this._clients = clients;

  PresenceEventChangeBuilder? _change;
  PresenceEventChangeBuilder get change =>
      _$this._change ??= PresenceEventChangeBuilder();
  set change(PresenceEventChangeBuilder? change) => _$this._change = change;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  PresenceEventBuilder() {
    PresenceEvent._defaults(this);
  }

  PresenceEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _workspaceId = $v.workspaceId;
      _clients = $v.clients.toBuilder();
      _change = $v.change?.toBuilder();
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PresenceEvent other) {
    _$v = other as _$PresenceEvent;
  }

  @override
  void update(void Function(PresenceEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PresenceEvent build() => _build();

  _$PresenceEvent _build() {
    _$PresenceEvent _$result;
    try {
      _$result =
          _$v ??
          _$PresenceEvent._(
            workspaceId: BuiltValueNullFieldError.checkNotNull(
              workspaceId,
              r'PresenceEvent',
              'workspaceId',
            ),
            clients: clients.build(),
            change: _change?.build(),
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'PresenceEvent',
              'at',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'clients';
        clients.build();
        _$failedField = 'change';
        _change?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PresenceEvent',
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

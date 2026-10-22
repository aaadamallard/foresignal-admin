// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_send_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportSendInput extends ReportSendInput {
  @override
  final BuiltList<String>? principals;
  @override
  final BuiltList<String>? groups;
  @override
  final BuiltList<String>? channels;
  @override
  final String? message;
  @override
  final int? revision;

  factory _$ReportSendInput([void Function(ReportSendInputBuilder)? updates]) =>
      (ReportSendInputBuilder()..update(updates))._build();

  _$ReportSendInput._(
      {this.principals,
      this.groups,
      this.channels,
      this.message,
      this.revision})
      : super._();
  @override
  ReportSendInput rebuild(void Function(ReportSendInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportSendInputBuilder toBuilder() => ReportSendInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportSendInput &&
        principals == other.principals &&
        groups == other.groups &&
        channels == other.channels &&
        message == other.message &&
        revision == other.revision;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, principals.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, channels.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, revision.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportSendInput')
          ..add('principals', principals)
          ..add('groups', groups)
          ..add('channels', channels)
          ..add('message', message)
          ..add('revision', revision))
        .toString();
  }
}

class ReportSendInputBuilder
    implements Builder<ReportSendInput, ReportSendInputBuilder> {
  _$ReportSendInput? _$v;

  ListBuilder<String>? _principals;
  ListBuilder<String> get principals =>
      _$this._principals ??= ListBuilder<String>();
  set principals(ListBuilder<String>? principals) =>
      _$this._principals = principals;

  ListBuilder<String>? _groups;
  ListBuilder<String> get groups => _$this._groups ??= ListBuilder<String>();
  set groups(ListBuilder<String>? groups) => _$this._groups = groups;

  ListBuilder<String>? _channels;
  ListBuilder<String> get channels =>
      _$this._channels ??= ListBuilder<String>();
  set channels(ListBuilder<String>? channels) => _$this._channels = channels;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _revision;
  int? get revision => _$this._revision;
  set revision(int? revision) => _$this._revision = revision;

  ReportSendInputBuilder() {
    ReportSendInput._defaults(this);
  }

  ReportSendInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _principals = $v.principals?.toBuilder();
      _groups = $v.groups?.toBuilder();
      _channels = $v.channels?.toBuilder();
      _message = $v.message;
      _revision = $v.revision;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportSendInput other) {
    _$v = other as _$ReportSendInput;
  }

  @override
  void update(void Function(ReportSendInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportSendInput build() => _build();

  _$ReportSendInput _build() {
    _$ReportSendInput _$result;
    try {
      _$result = _$v ??
          _$ReportSendInput._(
            principals: _principals?.build(),
            groups: _groups?.build(),
            channels: _channels?.build(),
            message: message,
            revision: revision,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'principals';
        _principals?.build();
        _$failedField = 'groups';
        _groups?.build();
        _$failedField = 'channels';
        _channels?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReportSendInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

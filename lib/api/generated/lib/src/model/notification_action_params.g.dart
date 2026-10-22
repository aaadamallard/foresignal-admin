// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_action_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationActionParams extends NotificationActionParams {
  @override
  final String? duration;

  factory _$NotificationActionParams([
    void Function(NotificationActionParamsBuilder)? updates,
  ]) => (NotificationActionParamsBuilder()..update(updates))._build();

  _$NotificationActionParams._({this.duration}) : super._();
  @override
  NotificationActionParams rebuild(
    void Function(NotificationActionParamsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationActionParamsBuilder toBuilder() =>
      NotificationActionParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationActionParams && duration == other.duration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'NotificationActionParams',
    )..add('duration', duration)).toString();
  }
}

class NotificationActionParamsBuilder
    implements
        Builder<NotificationActionParams, NotificationActionParamsBuilder> {
  _$NotificationActionParams? _$v;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  NotificationActionParamsBuilder() {
    NotificationActionParams._defaults(this);
  }

  NotificationActionParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _duration = $v.duration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationActionParams other) {
    _$v = other as _$NotificationActionParams;
  }

  @override
  void update(void Function(NotificationActionParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationActionParams build() => _build();

  _$NotificationActionParams _build() {
    final _$result = _$v ?? _$NotificationActionParams._(duration: duration);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

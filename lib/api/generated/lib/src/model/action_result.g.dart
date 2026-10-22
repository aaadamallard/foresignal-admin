// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActionResult extends ActionResult {
  @override
  final String action;
  @override
  final int alertId;
  @override
  final String result;

  factory _$ActionResult([void Function(ActionResultBuilder)? updates]) =>
      (ActionResultBuilder()..update(updates))._build();

  _$ActionResult._({
    required this.action,
    required this.alertId,
    required this.result,
  }) : super._();
  @override
  ActionResult rebuild(void Function(ActionResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActionResultBuilder toBuilder() => ActionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActionResult &&
        action == other.action &&
        alertId == other.alertId &&
        result == other.result;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, alertId.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActionResult')
          ..add('action', action)
          ..add('alertId', alertId)
          ..add('result', result))
        .toString();
  }
}

class ActionResultBuilder
    implements Builder<ActionResult, ActionResultBuilder> {
  _$ActionResult? _$v;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  int? _alertId;
  int? get alertId => _$this._alertId;
  set alertId(int? alertId) => _$this._alertId = alertId;

  String? _result;
  String? get result => _$this._result;
  set result(String? result) => _$this._result = result;

  ActionResultBuilder() {
    ActionResult._defaults(this);
  }

  ActionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _alertId = $v.alertId;
      _result = $v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActionResult other) {
    _$v = other as _$ActionResult;
  }

  @override
  void update(void Function(ActionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActionResult build() => _build();

  _$ActionResult _build() {
    final _$result =
        _$v ??
        _$ActionResult._(
          action: BuiltValueNullFieldError.checkNotNull(
            action,
            r'ActionResult',
            'action',
          ),
          alertId: BuiltValueNullFieldError.checkNotNull(
            alertId,
            r'ActionResult',
            'alertId',
          ),
          result: BuiltValueNullFieldError.checkNotNull(
            result,
            r'ActionResult',
            'result',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

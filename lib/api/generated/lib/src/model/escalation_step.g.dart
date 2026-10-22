// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'escalation_step.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EscalationStep extends EscalationStep {
  @override
  final int afterMinutes;
  @override
  final BuiltList<String>? channelIds;
  @override
  final bool? includePush;

  factory _$EscalationStep([void Function(EscalationStepBuilder)? updates]) =>
      (EscalationStepBuilder()..update(updates))._build();

  _$EscalationStep._({
    required this.afterMinutes,
    this.channelIds,
    this.includePush,
  }) : super._();
  @override
  EscalationStep rebuild(void Function(EscalationStepBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EscalationStepBuilder toBuilder() => EscalationStepBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EscalationStep &&
        afterMinutes == other.afterMinutes &&
        channelIds == other.channelIds &&
        includePush == other.includePush;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, afterMinutes.hashCode);
    _$hash = $jc(_$hash, channelIds.hashCode);
    _$hash = $jc(_$hash, includePush.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EscalationStep')
          ..add('afterMinutes', afterMinutes)
          ..add('channelIds', channelIds)
          ..add('includePush', includePush))
        .toString();
  }
}

class EscalationStepBuilder
    implements Builder<EscalationStep, EscalationStepBuilder> {
  _$EscalationStep? _$v;

  int? _afterMinutes;
  int? get afterMinutes => _$this._afterMinutes;
  set afterMinutes(int? afterMinutes) => _$this._afterMinutes = afterMinutes;

  ListBuilder<String>? _channelIds;
  ListBuilder<String> get channelIds =>
      _$this._channelIds ??= ListBuilder<String>();
  set channelIds(ListBuilder<String>? channelIds) =>
      _$this._channelIds = channelIds;

  bool? _includePush;
  bool? get includePush => _$this._includePush;
  set includePush(bool? includePush) => _$this._includePush = includePush;

  EscalationStepBuilder() {
    EscalationStep._defaults(this);
  }

  EscalationStepBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _afterMinutes = $v.afterMinutes;
      _channelIds = $v.channelIds?.toBuilder();
      _includePush = $v.includePush;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EscalationStep other) {
    _$v = other as _$EscalationStep;
  }

  @override
  void update(void Function(EscalationStepBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EscalationStep build() => _build();

  _$EscalationStep _build() {
    _$EscalationStep _$result;
    try {
      _$result =
          _$v ??
          _$EscalationStep._(
            afterMinutes: BuiltValueNullFieldError.checkNotNull(
              afterMinutes,
              r'EscalationStep',
              'afterMinutes',
            ),
            channelIds: _channelIds?.build(),
            includePush: includePush,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'channelIds';
        _channelIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EscalationStep',
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

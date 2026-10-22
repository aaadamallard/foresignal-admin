// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_binding_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExternalBindingEvent extends ExternalBindingEvent {
  @override
  final String bindingId;
  @override
  final String sourceId;
  @override
  final String reason;
  @override
  final DateTime at;

  factory _$ExternalBindingEvent([
    void Function(ExternalBindingEventBuilder)? updates,
  ]) => (ExternalBindingEventBuilder()..update(updates))._build();

  _$ExternalBindingEvent._({
    required this.bindingId,
    required this.sourceId,
    required this.reason,
    required this.at,
  }) : super._();
  @override
  ExternalBindingEvent rebuild(
    void Function(ExternalBindingEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExternalBindingEventBuilder toBuilder() =>
      ExternalBindingEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalBindingEvent &&
        bindingId == other.bindingId &&
        sourceId == other.sourceId &&
        reason == other.reason &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bindingId.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalBindingEvent')
          ..add('bindingId', bindingId)
          ..add('sourceId', sourceId)
          ..add('reason', reason)
          ..add('at', at))
        .toString();
  }
}

class ExternalBindingEventBuilder
    implements Builder<ExternalBindingEvent, ExternalBindingEventBuilder> {
  _$ExternalBindingEvent? _$v;

  String? _bindingId;
  String? get bindingId => _$this._bindingId;
  set bindingId(String? bindingId) => _$this._bindingId = bindingId;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ExternalBindingEventBuilder() {
    ExternalBindingEvent._defaults(this);
  }

  ExternalBindingEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bindingId = $v.bindingId;
      _sourceId = $v.sourceId;
      _reason = $v.reason;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalBindingEvent other) {
    _$v = other as _$ExternalBindingEvent;
  }

  @override
  void update(void Function(ExternalBindingEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalBindingEvent build() => _build();

  _$ExternalBindingEvent _build() {
    final _$result =
        _$v ??
        _$ExternalBindingEvent._(
          bindingId: BuiltValueNullFieldError.checkNotNull(
            bindingId,
            r'ExternalBindingEvent',
            'bindingId',
          ),
          sourceId: BuiltValueNullFieldError.checkNotNull(
            sourceId,
            r'ExternalBindingEvent',
            'sourceId',
          ),
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'ExternalBindingEvent',
            'reason',
          ),
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'ExternalBindingEvent',
            'at',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

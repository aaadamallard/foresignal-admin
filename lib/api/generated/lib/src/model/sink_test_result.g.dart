// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sink_test_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SinkTestResultPhaseEnum _$sinkTestResultPhaseEnum_validate =
    const SinkTestResultPhaseEnum._('validate');
const SinkTestResultPhaseEnum _$sinkTestResultPhaseEnum_connect =
    const SinkTestResultPhaseEnum._('connect');
const SinkTestResultPhaseEnum _$sinkTestResultPhaseEnum_bind =
    const SinkTestResultPhaseEnum._('bind');
const SinkTestResultPhaseEnum _$sinkTestResultPhaseEnum_send =
    const SinkTestResultPhaseEnum._('send');

SinkTestResultPhaseEnum _$sinkTestResultPhaseEnumValueOf(String name) {
  switch (name) {
    case 'validate':
      return _$sinkTestResultPhaseEnum_validate;
    case 'connect':
      return _$sinkTestResultPhaseEnum_connect;
    case 'bind':
      return _$sinkTestResultPhaseEnum_bind;
    case 'send':
      return _$sinkTestResultPhaseEnum_send;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SinkTestResultPhaseEnum> _$sinkTestResultPhaseEnumValues =
    BuiltSet<SinkTestResultPhaseEnum>(const <SinkTestResultPhaseEnum>[
      _$sinkTestResultPhaseEnum_validate,
      _$sinkTestResultPhaseEnum_connect,
      _$sinkTestResultPhaseEnum_bind,
      _$sinkTestResultPhaseEnum_send,
    ]);

Serializer<SinkTestResultPhaseEnum> _$sinkTestResultPhaseEnumSerializer =
    _$SinkTestResultPhaseEnumSerializer();

class _$SinkTestResultPhaseEnumSerializer
    implements PrimitiveSerializer<SinkTestResultPhaseEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'validate': 'validate',
    'connect': 'connect',
    'bind': 'bind',
    'send': 'send',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'validate': 'validate',
    'connect': 'connect',
    'bind': 'bind',
    'send': 'send',
  };

  @override
  final Iterable<Type> types = const <Type>[SinkTestResultPhaseEnum];
  @override
  final String wireName = 'SinkTestResultPhaseEnum';

  @override
  Object serialize(
    Serializers serializers,
    SinkTestResultPhaseEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SinkTestResultPhaseEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SinkTestResultPhaseEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SinkTestResult extends SinkTestResult {
  @override
  final bool ok;
  @override
  final SinkTestResultPhaseEnum phase;
  @override
  final String message;
  @override
  final int? latencyMs;
  @override
  final BuiltMap<String, JsonObject?>? details;

  factory _$SinkTestResult([void Function(SinkTestResultBuilder)? updates]) =>
      (SinkTestResultBuilder()..update(updates))._build();

  _$SinkTestResult._({
    required this.ok,
    required this.phase,
    required this.message,
    this.latencyMs,
    this.details,
  }) : super._();
  @override
  SinkTestResult rebuild(void Function(SinkTestResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SinkTestResultBuilder toBuilder() => SinkTestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SinkTestResult &&
        ok == other.ok &&
        phase == other.phase &&
        message == other.message &&
        latencyMs == other.latencyMs &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ok.hashCode);
    _$hash = $jc(_$hash, phase.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, latencyMs.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SinkTestResult')
          ..add('ok', ok)
          ..add('phase', phase)
          ..add('message', message)
          ..add('latencyMs', latencyMs)
          ..add('details', details))
        .toString();
  }
}

class SinkTestResultBuilder
    implements Builder<SinkTestResult, SinkTestResultBuilder> {
  _$SinkTestResult? _$v;

  bool? _ok;
  bool? get ok => _$this._ok;
  set ok(bool? ok) => _$this._ok = ok;

  SinkTestResultPhaseEnum? _phase;
  SinkTestResultPhaseEnum? get phase => _$this._phase;
  set phase(SinkTestResultPhaseEnum? phase) => _$this._phase = phase;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _latencyMs;
  int? get latencyMs => _$this._latencyMs;
  set latencyMs(int? latencyMs) => _$this._latencyMs = latencyMs;

  MapBuilder<String, JsonObject?>? _details;
  MapBuilder<String, JsonObject?> get details =>
      _$this._details ??= MapBuilder<String, JsonObject?>();
  set details(MapBuilder<String, JsonObject?>? details) =>
      _$this._details = details;

  SinkTestResultBuilder() {
    SinkTestResult._defaults(this);
  }

  SinkTestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ok = $v.ok;
      _phase = $v.phase;
      _message = $v.message;
      _latencyMs = $v.latencyMs;
      _details = $v.details?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SinkTestResult other) {
    _$v = other as _$SinkTestResult;
  }

  @override
  void update(void Function(SinkTestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SinkTestResult build() => _build();

  _$SinkTestResult _build() {
    _$SinkTestResult _$result;
    try {
      _$result =
          _$v ??
          _$SinkTestResult._(
            ok: BuiltValueNullFieldError.checkNotNull(
              ok,
              r'SinkTestResult',
              'ok',
            ),
            phase: BuiltValueNullFieldError.checkNotNull(
              phase,
              r'SinkTestResult',
              'phase',
            ),
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'SinkTestResult',
              'message',
            ),
            latencyMs: latencyMs,
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SinkTestResult',
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

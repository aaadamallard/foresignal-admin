// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'native_push_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NativePushPayload extends NativePushPayload {
  @override
  final NativePushPayloadApns? apns;
  @override
  final NativePushPayloadFcm? fcm;
  @override
  final bool? exercise;

  factory _$NativePushPayload(
          [void Function(NativePushPayloadBuilder)? updates]) =>
      (NativePushPayloadBuilder()..update(updates))._build();

  _$NativePushPayload._({this.apns, this.fcm, this.exercise}) : super._();
  @override
  NativePushPayload rebuild(void Function(NativePushPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NativePushPayloadBuilder toBuilder() =>
      NativePushPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NativePushPayload &&
        apns == other.apns &&
        fcm == other.fcm &&
        exercise == other.exercise;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, apns.hashCode);
    _$hash = $jc(_$hash, fcm.hashCode);
    _$hash = $jc(_$hash, exercise.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NativePushPayload')
          ..add('apns', apns)
          ..add('fcm', fcm)
          ..add('exercise', exercise))
        .toString();
  }
}

class NativePushPayloadBuilder
    implements Builder<NativePushPayload, NativePushPayloadBuilder> {
  _$NativePushPayload? _$v;

  NativePushPayloadApnsBuilder? _apns;
  NativePushPayloadApnsBuilder get apns =>
      _$this._apns ??= NativePushPayloadApnsBuilder();
  set apns(NativePushPayloadApnsBuilder? apns) => _$this._apns = apns;

  NativePushPayloadFcmBuilder? _fcm;
  NativePushPayloadFcmBuilder get fcm =>
      _$this._fcm ??= NativePushPayloadFcmBuilder();
  set fcm(NativePushPayloadFcmBuilder? fcm) => _$this._fcm = fcm;

  bool? _exercise;
  bool? get exercise => _$this._exercise;
  set exercise(bool? exercise) => _$this._exercise = exercise;

  NativePushPayloadBuilder() {
    NativePushPayload._defaults(this);
  }

  NativePushPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apns = $v.apns?.toBuilder();
      _fcm = $v.fcm?.toBuilder();
      _exercise = $v.exercise;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NativePushPayload other) {
    _$v = other as _$NativePushPayload;
  }

  @override
  void update(void Function(NativePushPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NativePushPayload build() => _build();

  _$NativePushPayload _build() {
    _$NativePushPayload _$result;
    try {
      _$result = _$v ??
          _$NativePushPayload._(
            apns: _apns?.build(),
            fcm: _fcm?.build(),
            exercise: exercise,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'apns';
        _apns?.build();
        _$failedField = 'fcm';
        _fcm?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NativePushPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

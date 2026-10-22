// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_envelope_time.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectEnvelopeTime extends ObjectEnvelopeTime {
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final DateTime? observedAt;

  factory _$ObjectEnvelopeTime(
          [void Function(ObjectEnvelopeTimeBuilder)? updates]) =>
      (ObjectEnvelopeTimeBuilder()..update(updates))._build();

  _$ObjectEnvelopeTime._({this.start, this.end, this.observedAt}) : super._();
  @override
  ObjectEnvelopeTime rebuild(
          void Function(ObjectEnvelopeTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectEnvelopeTimeBuilder toBuilder() =>
      ObjectEnvelopeTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectEnvelopeTime &&
        start == other.start &&
        end == other.end &&
        observedAt == other.observedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectEnvelopeTime')
          ..add('start', start)
          ..add('end', end)
          ..add('observedAt', observedAt))
        .toString();
  }
}

class ObjectEnvelopeTimeBuilder
    implements Builder<ObjectEnvelopeTime, ObjectEnvelopeTimeBuilder> {
  _$ObjectEnvelopeTime? _$v;

  DateTime? _start;
  DateTime? get start => _$this._start;
  set start(DateTime? start) => _$this._start = start;

  DateTime? _end;
  DateTime? get end => _$this._end;
  set end(DateTime? end) => _$this._end = end;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  ObjectEnvelopeTimeBuilder() {
    ObjectEnvelopeTime._defaults(this);
  }

  ObjectEnvelopeTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _start = $v.start;
      _end = $v.end;
      _observedAt = $v.observedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectEnvelopeTime other) {
    _$v = other as _$ObjectEnvelopeTime;
  }

  @override
  void update(void Function(ObjectEnvelopeTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectEnvelopeTime build() => _build();

  _$ObjectEnvelopeTime _build() {
    final _$result = _$v ??
        _$ObjectEnvelopeTime._(
          start: start,
          end: end,
          observedAt: observedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

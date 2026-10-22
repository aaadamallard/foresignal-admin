// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_study_result_events_inner_car.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventStudyResultEventsInnerCar extends EventStudyResultEventsInnerCar {
  @override
  final num? preEvent;
  @override
  final num? event;

  factory _$EventStudyResultEventsInnerCar(
          [void Function(EventStudyResultEventsInnerCarBuilder)? updates]) =>
      (EventStudyResultEventsInnerCarBuilder()..update(updates))._build();

  _$EventStudyResultEventsInnerCar._({this.preEvent, this.event}) : super._();
  @override
  EventStudyResultEventsInnerCar rebuild(
          void Function(EventStudyResultEventsInnerCarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventStudyResultEventsInnerCarBuilder toBuilder() =>
      EventStudyResultEventsInnerCarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventStudyResultEventsInnerCar &&
        preEvent == other.preEvent &&
        event == other.event;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, preEvent.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventStudyResultEventsInnerCar')
          ..add('preEvent', preEvent)
          ..add('event', event))
        .toString();
  }
}

class EventStudyResultEventsInnerCarBuilder
    implements
        Builder<EventStudyResultEventsInnerCar,
            EventStudyResultEventsInnerCarBuilder> {
  _$EventStudyResultEventsInnerCar? _$v;

  num? _preEvent;
  num? get preEvent => _$this._preEvent;
  set preEvent(num? preEvent) => _$this._preEvent = preEvent;

  num? _event;
  num? get event => _$this._event;
  set event(num? event) => _$this._event = event;

  EventStudyResultEventsInnerCarBuilder() {
    EventStudyResultEventsInnerCar._defaults(this);
  }

  EventStudyResultEventsInnerCarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _preEvent = $v.preEvent;
      _event = $v.event;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventStudyResultEventsInnerCar other) {
    _$v = other as _$EventStudyResultEventsInnerCar;
  }

  @override
  void update(void Function(EventStudyResultEventsInnerCarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventStudyResultEventsInnerCar build() => _build();

  _$EventStudyResultEventsInnerCar _build() {
    final _$result = _$v ??
        _$EventStudyResultEventsInnerCar._(
          preEvent: preEvent,
          event: event,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

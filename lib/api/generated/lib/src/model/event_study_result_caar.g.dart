// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_study_result_caar.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventStudyResultCaar extends EventStudyResultCaar {
  @override
  final EventStudyWindowStats preEvent;
  @override
  final EventStudyWindowStats event;

  factory _$EventStudyResultCaar([
    void Function(EventStudyResultCaarBuilder)? updates,
  ]) => (EventStudyResultCaarBuilder()..update(updates))._build();

  _$EventStudyResultCaar._({required this.preEvent, required this.event})
    : super._();
  @override
  EventStudyResultCaar rebuild(
    void Function(EventStudyResultCaarBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EventStudyResultCaarBuilder toBuilder() =>
      EventStudyResultCaarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventStudyResultCaar &&
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
    return (newBuiltValueToStringHelper(r'EventStudyResultCaar')
          ..add('preEvent', preEvent)
          ..add('event', event))
        .toString();
  }
}

class EventStudyResultCaarBuilder
    implements Builder<EventStudyResultCaar, EventStudyResultCaarBuilder> {
  _$EventStudyResultCaar? _$v;

  EventStudyWindowStatsBuilder? _preEvent;
  EventStudyWindowStatsBuilder get preEvent =>
      _$this._preEvent ??= EventStudyWindowStatsBuilder();
  set preEvent(EventStudyWindowStatsBuilder? preEvent) =>
      _$this._preEvent = preEvent;

  EventStudyWindowStatsBuilder? _event;
  EventStudyWindowStatsBuilder get event =>
      _$this._event ??= EventStudyWindowStatsBuilder();
  set event(EventStudyWindowStatsBuilder? event) => _$this._event = event;

  EventStudyResultCaarBuilder() {
    EventStudyResultCaar._defaults(this);
  }

  EventStudyResultCaarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _preEvent = $v.preEvent.toBuilder();
      _event = $v.event.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventStudyResultCaar other) {
    _$v = other as _$EventStudyResultCaar;
  }

  @override
  void update(void Function(EventStudyResultCaarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventStudyResultCaar build() => _build();

  _$EventStudyResultCaar _build() {
    _$EventStudyResultCaar _$result;
    try {
      _$result =
          _$v ??
          _$EventStudyResultCaar._(
            preEvent: preEvent.build(),
            event: event.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'preEvent';
        preEvent.build();
        _$failedField = 'event';
        event.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EventStudyResultCaar',
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

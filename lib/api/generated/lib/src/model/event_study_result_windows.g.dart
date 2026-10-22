// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_study_result_windows.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventStudyResultWindows extends EventStudyResultWindows {
  @override
  final BuiltList<int> estimation;
  @override
  final BuiltList<int> preEvent;
  @override
  final BuiltList<int> event;

  factory _$EventStudyResultWindows([
    void Function(EventStudyResultWindowsBuilder)? updates,
  ]) => (EventStudyResultWindowsBuilder()..update(updates))._build();

  _$EventStudyResultWindows._({
    required this.estimation,
    required this.preEvent,
    required this.event,
  }) : super._();
  @override
  EventStudyResultWindows rebuild(
    void Function(EventStudyResultWindowsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EventStudyResultWindowsBuilder toBuilder() =>
      EventStudyResultWindowsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventStudyResultWindows &&
        estimation == other.estimation &&
        preEvent == other.preEvent &&
        event == other.event;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, estimation.hashCode);
    _$hash = $jc(_$hash, preEvent.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventStudyResultWindows')
          ..add('estimation', estimation)
          ..add('preEvent', preEvent)
          ..add('event', event))
        .toString();
  }
}

class EventStudyResultWindowsBuilder
    implements
        Builder<EventStudyResultWindows, EventStudyResultWindowsBuilder> {
  _$EventStudyResultWindows? _$v;

  ListBuilder<int>? _estimation;
  ListBuilder<int> get estimation => _$this._estimation ??= ListBuilder<int>();
  set estimation(ListBuilder<int>? estimation) =>
      _$this._estimation = estimation;

  ListBuilder<int>? _preEvent;
  ListBuilder<int> get preEvent => _$this._preEvent ??= ListBuilder<int>();
  set preEvent(ListBuilder<int>? preEvent) => _$this._preEvent = preEvent;

  ListBuilder<int>? _event;
  ListBuilder<int> get event => _$this._event ??= ListBuilder<int>();
  set event(ListBuilder<int>? event) => _$this._event = event;

  EventStudyResultWindowsBuilder() {
    EventStudyResultWindows._defaults(this);
  }

  EventStudyResultWindowsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _estimation = $v.estimation.toBuilder();
      _preEvent = $v.preEvent.toBuilder();
      _event = $v.event.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventStudyResultWindows other) {
    _$v = other as _$EventStudyResultWindows;
  }

  @override
  void update(void Function(EventStudyResultWindowsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventStudyResultWindows build() => _build();

  _$EventStudyResultWindows _build() {
    _$EventStudyResultWindows _$result;
    try {
      _$result =
          _$v ??
          _$EventStudyResultWindows._(
            estimation: estimation.build(),
            preEvent: preEvent.build(),
            event: event.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'estimation';
        estimation.build();
        _$failedField = 'preEvent';
        preEvent.build();
        _$failedField = 'event';
        event.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EventStudyResultWindows',
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

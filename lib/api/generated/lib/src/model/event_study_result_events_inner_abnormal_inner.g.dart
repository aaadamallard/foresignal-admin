// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_study_result_events_inner_abnormal_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventStudyResultEventsInnerAbnormalInner
    extends EventStudyResultEventsInnerAbnormalInner {
  @override
  final int offset;
  @override
  final num? value;
  @override
  final num? cumulative;

  factory _$EventStudyResultEventsInnerAbnormalInner(
          [void Function(EventStudyResultEventsInnerAbnormalInnerBuilder)?
              updates]) =>
      (EventStudyResultEventsInnerAbnormalInnerBuilder()..update(updates))
          ._build();

  _$EventStudyResultEventsInnerAbnormalInner._(
      {required this.offset, this.value, this.cumulative})
      : super._();
  @override
  EventStudyResultEventsInnerAbnormalInner rebuild(
          void Function(EventStudyResultEventsInnerAbnormalInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventStudyResultEventsInnerAbnormalInnerBuilder toBuilder() =>
      EventStudyResultEventsInnerAbnormalInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventStudyResultEventsInnerAbnormalInner &&
        offset == other.offset &&
        value == other.value &&
        cumulative == other.cumulative;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, cumulative.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'EventStudyResultEventsInnerAbnormalInner')
          ..add('offset', offset)
          ..add('value', value)
          ..add('cumulative', cumulative))
        .toString();
  }
}

class EventStudyResultEventsInnerAbnormalInnerBuilder
    implements
        Builder<EventStudyResultEventsInnerAbnormalInner,
            EventStudyResultEventsInnerAbnormalInnerBuilder> {
  _$EventStudyResultEventsInnerAbnormalInner? _$v;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  num? _cumulative;
  num? get cumulative => _$this._cumulative;
  set cumulative(num? cumulative) => _$this._cumulative = cumulative;

  EventStudyResultEventsInnerAbnormalInnerBuilder() {
    EventStudyResultEventsInnerAbnormalInner._defaults(this);
  }

  EventStudyResultEventsInnerAbnormalInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _offset = $v.offset;
      _value = $v.value;
      _cumulative = $v.cumulative;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventStudyResultEventsInnerAbnormalInner other) {
    _$v = other as _$EventStudyResultEventsInnerAbnormalInner;
  }

  @override
  void update(
      void Function(EventStudyResultEventsInnerAbnormalInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventStudyResultEventsInnerAbnormalInner build() => _build();

  _$EventStudyResultEventsInnerAbnormalInner _build() {
    final _$result = _$v ??
        _$EventStudyResultEventsInnerAbnormalInner._(
          offset: BuiltValueNullFieldError.checkNotNull(
              offset, r'EventStudyResultEventsInnerAbnormalInner', 'offset'),
          value: value,
          cumulative: cumulative,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_selector_change_point.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventSelectorChangePoint extends EventSelectorChangePoint {
  @override
  final String family;

  factory _$EventSelectorChangePoint(
          [void Function(EventSelectorChangePointBuilder)? updates]) =>
      (EventSelectorChangePointBuilder()..update(updates))._build();

  _$EventSelectorChangePoint._({required this.family}) : super._();
  @override
  EventSelectorChangePoint rebuild(
          void Function(EventSelectorChangePointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventSelectorChangePointBuilder toBuilder() =>
      EventSelectorChangePointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventSelectorChangePoint && family == other.family;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventSelectorChangePoint')
          ..add('family', family))
        .toString();
  }
}

class EventSelectorChangePointBuilder
    implements
        Builder<EventSelectorChangePoint, EventSelectorChangePointBuilder> {
  _$EventSelectorChangePoint? _$v;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  EventSelectorChangePointBuilder() {
    EventSelectorChangePoint._defaults(this);
  }

  EventSelectorChangePointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _family = $v.family;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventSelectorChangePoint other) {
    _$v = other as _$EventSelectorChangePoint;
  }

  @override
  void update(void Function(EventSelectorChangePointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventSelectorChangePoint build() => _build();

  _$EventSelectorChangePoint _build() {
    final _$result = _$v ??
        _$EventSelectorChangePoint._(
          family: BuiltValueNullFieldError.checkNotNull(
              family, r'EventSelectorChangePoint', 'family'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_selector_situation_activated.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventSelectorSituationActivated
    extends EventSelectorSituationActivated {
  @override
  final SituationTheme? theme;

  factory _$EventSelectorSituationActivated([
    void Function(EventSelectorSituationActivatedBuilder)? updates,
  ]) => (EventSelectorSituationActivatedBuilder()..update(updates))._build();

  _$EventSelectorSituationActivated._({this.theme}) : super._();
  @override
  EventSelectorSituationActivated rebuild(
    void Function(EventSelectorSituationActivatedBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EventSelectorSituationActivatedBuilder toBuilder() =>
      EventSelectorSituationActivatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventSelectorSituationActivated && theme == other.theme;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'EventSelectorSituationActivated',
    )..add('theme', theme)).toString();
  }
}

class EventSelectorSituationActivatedBuilder
    implements
        Builder<
          EventSelectorSituationActivated,
          EventSelectorSituationActivatedBuilder
        > {
  _$EventSelectorSituationActivated? _$v;

  SituationTheme? _theme;
  SituationTheme? get theme => _$this._theme;
  set theme(SituationTheme? theme) => _$this._theme = theme;

  EventSelectorSituationActivatedBuilder() {
    EventSelectorSituationActivated._defaults(this);
  }

  EventSelectorSituationActivatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _theme = $v.theme;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventSelectorSituationActivated other) {
    _$v = other as _$EventSelectorSituationActivated;
  }

  @override
  void update(void Function(EventSelectorSituationActivatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventSelectorSituationActivated build() => _build();

  _$EventSelectorSituationActivated _build() {
    final _$result = _$v ?? _$EventSelectorSituationActivated._(theme: theme);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

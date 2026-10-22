// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_selector_unexplained_move.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventSelectorUnexplainedMove extends EventSelectorUnexplainedMove {
  @override
  final String family;

  factory _$EventSelectorUnexplainedMove(
          [void Function(EventSelectorUnexplainedMoveBuilder)? updates]) =>
      (EventSelectorUnexplainedMoveBuilder()..update(updates))._build();

  _$EventSelectorUnexplainedMove._({required this.family}) : super._();
  @override
  EventSelectorUnexplainedMove rebuild(
          void Function(EventSelectorUnexplainedMoveBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventSelectorUnexplainedMoveBuilder toBuilder() =>
      EventSelectorUnexplainedMoveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventSelectorUnexplainedMove && family == other.family;
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
    return (newBuiltValueToStringHelper(r'EventSelectorUnexplainedMove')
          ..add('family', family))
        .toString();
  }
}

class EventSelectorUnexplainedMoveBuilder
    implements
        Builder<EventSelectorUnexplainedMove,
            EventSelectorUnexplainedMoveBuilder> {
  _$EventSelectorUnexplainedMove? _$v;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  EventSelectorUnexplainedMoveBuilder() {
    EventSelectorUnexplainedMove._defaults(this);
  }

  EventSelectorUnexplainedMoveBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _family = $v.family;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventSelectorUnexplainedMove other) {
    _$v = other as _$EventSelectorUnexplainedMove;
  }

  @override
  void update(void Function(EventSelectorUnexplainedMoveBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventSelectorUnexplainedMove build() => _build();

  _$EventSelectorUnexplainedMove _build() {
    final _$result = _$v ??
        _$EventSelectorUnexplainedMove._(
          family: BuiltValueNullFieldError.checkNotNull(
              family, r'EventSelectorUnexplainedMove', 'family'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

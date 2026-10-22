// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_changes_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationChangesStatus extends SituationChangesStatus {
  @override
  final SituationStatus? before;
  @override
  final SituationStatus after;
  @override
  final bool changed;

  factory _$SituationChangesStatus([
    void Function(SituationChangesStatusBuilder)? updates,
  ]) => (SituationChangesStatusBuilder()..update(updates))._build();

  _$SituationChangesStatus._({
    this.before,
    required this.after,
    required this.changed,
  }) : super._();
  @override
  SituationChangesStatus rebuild(
    void Function(SituationChangesStatusBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SituationChangesStatusBuilder toBuilder() =>
      SituationChangesStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationChangesStatus &&
        before == other.before &&
        after == other.after &&
        changed == other.changed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, before.hashCode);
    _$hash = $jc(_$hash, after.hashCode);
    _$hash = $jc(_$hash, changed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationChangesStatus')
          ..add('before', before)
          ..add('after', after)
          ..add('changed', changed))
        .toString();
  }
}

class SituationChangesStatusBuilder
    implements Builder<SituationChangesStatus, SituationChangesStatusBuilder> {
  _$SituationChangesStatus? _$v;

  SituationStatus? _before;
  SituationStatus? get before => _$this._before;
  set before(SituationStatus? before) => _$this._before = before;

  SituationStatus? _after;
  SituationStatus? get after => _$this._after;
  set after(SituationStatus? after) => _$this._after = after;

  bool? _changed;
  bool? get changed => _$this._changed;
  set changed(bool? changed) => _$this._changed = changed;

  SituationChangesStatusBuilder() {
    SituationChangesStatus._defaults(this);
  }

  SituationChangesStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _before = $v.before;
      _after = $v.after;
      _changed = $v.changed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationChangesStatus other) {
    _$v = other as _$SituationChangesStatus;
  }

  @override
  void update(void Function(SituationChangesStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationChangesStatus build() => _build();

  _$SituationChangesStatus _build() {
    final _$result =
        _$v ??
        _$SituationChangesStatus._(
          before: before,
          after: BuiltValueNullFieldError.checkNotNull(
            after,
            r'SituationChangesStatus',
            'after',
          ),
          changed: BuiltValueNullFieldError.checkNotNull(
            changed,
            r'SituationChangesStatus',
            'changed',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

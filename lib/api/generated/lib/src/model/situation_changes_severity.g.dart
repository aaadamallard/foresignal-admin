// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_changes_severity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationChangesSeverity extends SituationChangesSeverity {
  @override
  final Severity? before;
  @override
  final Severity after;
  @override
  final bool changed;

  factory _$SituationChangesSeverity([
    void Function(SituationChangesSeverityBuilder)? updates,
  ]) => (SituationChangesSeverityBuilder()..update(updates))._build();

  _$SituationChangesSeverity._({
    this.before,
    required this.after,
    required this.changed,
  }) : super._();
  @override
  SituationChangesSeverity rebuild(
    void Function(SituationChangesSeverityBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SituationChangesSeverityBuilder toBuilder() =>
      SituationChangesSeverityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationChangesSeverity &&
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
    return (newBuiltValueToStringHelper(r'SituationChangesSeverity')
          ..add('before', before)
          ..add('after', after)
          ..add('changed', changed))
        .toString();
  }
}

class SituationChangesSeverityBuilder
    implements
        Builder<SituationChangesSeverity, SituationChangesSeverityBuilder> {
  _$SituationChangesSeverity? _$v;

  Severity? _before;
  Severity? get before => _$this._before;
  set before(Severity? before) => _$this._before = before;

  Severity? _after;
  Severity? get after => _$this._after;
  set after(Severity? after) => _$this._after = after;

  bool? _changed;
  bool? get changed => _$this._changed;
  set changed(bool? changed) => _$this._changed = changed;

  SituationChangesSeverityBuilder() {
    SituationChangesSeverity._defaults(this);
  }

  SituationChangesSeverityBuilder get _$this {
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
  void replace(SituationChangesSeverity other) {
    _$v = other as _$SituationChangesSeverity;
  }

  @override
  void update(void Function(SituationChangesSeverityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationChangesSeverity build() => _build();

  _$SituationChangesSeverity _build() {
    final _$result =
        _$v ??
        _$SituationChangesSeverity._(
          before: before,
          after: BuiltValueNullFieldError.checkNotNull(
            after,
            r'SituationChangesSeverity',
            'after',
          ),
          changed: BuiltValueNullFieldError.checkNotNull(
            changed,
            r'SituationChangesSeverity',
            'changed',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

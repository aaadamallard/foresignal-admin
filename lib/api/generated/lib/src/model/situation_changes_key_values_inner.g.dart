// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_changes_key_values_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationChangesKeyValuesInner extends SituationChangesKeyValuesInner {
  @override
  final String ref;
  @override
  final num? before;
  @override
  final num? after;
  @override
  final bool? withheld;

  factory _$SituationChangesKeyValuesInner(
          [void Function(SituationChangesKeyValuesInnerBuilder)? updates]) =>
      (SituationChangesKeyValuesInnerBuilder()..update(updates))._build();

  _$SituationChangesKeyValuesInner._(
      {required this.ref, this.before, this.after, this.withheld})
      : super._();
  @override
  SituationChangesKeyValuesInner rebuild(
          void Function(SituationChangesKeyValuesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationChangesKeyValuesInnerBuilder toBuilder() =>
      SituationChangesKeyValuesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationChangesKeyValuesInner &&
        ref == other.ref &&
        before == other.before &&
        after == other.after &&
        withheld == other.withheld;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, before.hashCode);
    _$hash = $jc(_$hash, after.hashCode);
    _$hash = $jc(_$hash, withheld.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationChangesKeyValuesInner')
          ..add('ref', ref)
          ..add('before', before)
          ..add('after', after)
          ..add('withheld', withheld))
        .toString();
  }
}

class SituationChangesKeyValuesInnerBuilder
    implements
        Builder<SituationChangesKeyValuesInner,
            SituationChangesKeyValuesInnerBuilder> {
  _$SituationChangesKeyValuesInner? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  num? _before;
  num? get before => _$this._before;
  set before(num? before) => _$this._before = before;

  num? _after;
  num? get after => _$this._after;
  set after(num? after) => _$this._after = after;

  bool? _withheld;
  bool? get withheld => _$this._withheld;
  set withheld(bool? withheld) => _$this._withheld = withheld;

  SituationChangesKeyValuesInnerBuilder() {
    SituationChangesKeyValuesInner._defaults(this);
  }

  SituationChangesKeyValuesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _before = $v.before;
      _after = $v.after;
      _withheld = $v.withheld;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationChangesKeyValuesInner other) {
    _$v = other as _$SituationChangesKeyValuesInner;
  }

  @override
  void update(void Function(SituationChangesKeyValuesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationChangesKeyValuesInner build() => _build();

  _$SituationChangesKeyValuesInner _build() {
    final _$result = _$v ??
        _$SituationChangesKeyValuesInner._(
          ref: BuiltValueNullFieldError.checkNotNull(
              ref, r'SituationChangesKeyValuesInner', 'ref'),
          before: before,
          after: after,
          withheld: withheld,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

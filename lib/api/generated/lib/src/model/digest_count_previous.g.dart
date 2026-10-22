// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digest_count_previous.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DigestCountPrevious extends DigestCountPrevious {
  @override
  final int? new_;
  @override
  final int? changed;
  @override
  final int? removed;
  @override
  final int? active;

  factory _$DigestCountPrevious(
          [void Function(DigestCountPreviousBuilder)? updates]) =>
      (DigestCountPreviousBuilder()..update(updates))._build();

  _$DigestCountPrevious._({this.new_, this.changed, this.removed, this.active})
      : super._();
  @override
  DigestCountPrevious rebuild(
          void Function(DigestCountPreviousBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DigestCountPreviousBuilder toBuilder() =>
      DigestCountPreviousBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DigestCountPrevious &&
        new_ == other.new_ &&
        changed == other.changed &&
        removed == other.removed &&
        active == other.active;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, new_.hashCode);
    _$hash = $jc(_$hash, changed.hashCode);
    _$hash = $jc(_$hash, removed.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DigestCountPrevious')
          ..add('new_', new_)
          ..add('changed', changed)
          ..add('removed', removed)
          ..add('active', active))
        .toString();
  }
}

class DigestCountPreviousBuilder
    implements Builder<DigestCountPrevious, DigestCountPreviousBuilder> {
  _$DigestCountPrevious? _$v;

  int? _new_;
  int? get new_ => _$this._new_;
  set new_(int? new_) => _$this._new_ = new_;

  int? _changed;
  int? get changed => _$this._changed;
  set changed(int? changed) => _$this._changed = changed;

  int? _removed;
  int? get removed => _$this._removed;
  set removed(int? removed) => _$this._removed = removed;

  int? _active;
  int? get active => _$this._active;
  set active(int? active) => _$this._active = active;

  DigestCountPreviousBuilder() {
    DigestCountPrevious._defaults(this);
  }

  DigestCountPreviousBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _new_ = $v.new_;
      _changed = $v.changed;
      _removed = $v.removed;
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DigestCountPrevious other) {
    _$v = other as _$DigestCountPrevious;
  }

  @override
  void update(void Function(DigestCountPreviousBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DigestCountPrevious build() => _build();

  _$DigestCountPrevious _build() {
    final _$result = _$v ??
        _$DigestCountPrevious._(
          new_: new_,
          changed: changed,
          removed: removed,
          active: active,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

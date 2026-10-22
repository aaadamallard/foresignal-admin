// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_resolve.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AutoResolve extends AutoResolve {
  @override
  final bool? onInverseEdge;
  @override
  final bool? onTombstone;
  @override
  final bool? onExpiry;
  @override
  final String? staleAfter;

  factory _$AutoResolve([void Function(AutoResolveBuilder)? updates]) =>
      (AutoResolveBuilder()..update(updates))._build();

  _$AutoResolve._({
    this.onInverseEdge,
    this.onTombstone,
    this.onExpiry,
    this.staleAfter,
  }) : super._();
  @override
  AutoResolve rebuild(void Function(AutoResolveBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AutoResolveBuilder toBuilder() => AutoResolveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AutoResolve &&
        onInverseEdge == other.onInverseEdge &&
        onTombstone == other.onTombstone &&
        onExpiry == other.onExpiry &&
        staleAfter == other.staleAfter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, onInverseEdge.hashCode);
    _$hash = $jc(_$hash, onTombstone.hashCode);
    _$hash = $jc(_$hash, onExpiry.hashCode);
    _$hash = $jc(_$hash, staleAfter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AutoResolve')
          ..add('onInverseEdge', onInverseEdge)
          ..add('onTombstone', onTombstone)
          ..add('onExpiry', onExpiry)
          ..add('staleAfter', staleAfter))
        .toString();
  }
}

class AutoResolveBuilder implements Builder<AutoResolve, AutoResolveBuilder> {
  _$AutoResolve? _$v;

  bool? _onInverseEdge;
  bool? get onInverseEdge => _$this._onInverseEdge;
  set onInverseEdge(bool? onInverseEdge) =>
      _$this._onInverseEdge = onInverseEdge;

  bool? _onTombstone;
  bool? get onTombstone => _$this._onTombstone;
  set onTombstone(bool? onTombstone) => _$this._onTombstone = onTombstone;

  bool? _onExpiry;
  bool? get onExpiry => _$this._onExpiry;
  set onExpiry(bool? onExpiry) => _$this._onExpiry = onExpiry;

  String? _staleAfter;
  String? get staleAfter => _$this._staleAfter;
  set staleAfter(String? staleAfter) => _$this._staleAfter = staleAfter;

  AutoResolveBuilder() {
    AutoResolve._defaults(this);
  }

  AutoResolveBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _onInverseEdge = $v.onInverseEdge;
      _onTombstone = $v.onTombstone;
      _onExpiry = $v.onExpiry;
      _staleAfter = $v.staleAfter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AutoResolve other) {
    _$v = other as _$AutoResolve;
  }

  @override
  void update(void Function(AutoResolveBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AutoResolve build() => _build();

  _$AutoResolve _build() {
    final _$result =
        _$v ??
        _$AutoResolve._(
          onInverseEdge: onInverseEdge,
          onTombstone: onTombstone,
          onExpiry: onExpiry,
          staleAfter: staleAfter,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

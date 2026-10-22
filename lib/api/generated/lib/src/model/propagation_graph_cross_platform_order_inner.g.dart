// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'propagation_graph_cross_platform_order_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PropagationGraphCrossPlatformOrderInner
    extends PropagationGraphCrossPlatformOrderInner {
  @override
  final String platform;
  @override
  final DateTime firstObservedAt;

  factory _$PropagationGraphCrossPlatformOrderInner(
          [void Function(PropagationGraphCrossPlatformOrderInnerBuilder)?
              updates]) =>
      (PropagationGraphCrossPlatformOrderInnerBuilder()..update(updates))
          ._build();

  _$PropagationGraphCrossPlatformOrderInner._(
      {required this.platform, required this.firstObservedAt})
      : super._();
  @override
  PropagationGraphCrossPlatformOrderInner rebuild(
          void Function(PropagationGraphCrossPlatformOrderInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PropagationGraphCrossPlatformOrderInnerBuilder toBuilder() =>
      PropagationGraphCrossPlatformOrderInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PropagationGraphCrossPlatformOrderInner &&
        platform == other.platform &&
        firstObservedAt == other.firstObservedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, firstObservedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PropagationGraphCrossPlatformOrderInner')
          ..add('platform', platform)
          ..add('firstObservedAt', firstObservedAt))
        .toString();
  }
}

class PropagationGraphCrossPlatformOrderInnerBuilder
    implements
        Builder<PropagationGraphCrossPlatformOrderInner,
            PropagationGraphCrossPlatformOrderInnerBuilder> {
  _$PropagationGraphCrossPlatformOrderInner? _$v;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  DateTime? _firstObservedAt;
  DateTime? get firstObservedAt => _$this._firstObservedAt;
  set firstObservedAt(DateTime? firstObservedAt) =>
      _$this._firstObservedAt = firstObservedAt;

  PropagationGraphCrossPlatformOrderInnerBuilder() {
    PropagationGraphCrossPlatformOrderInner._defaults(this);
  }

  PropagationGraphCrossPlatformOrderInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platform = $v.platform;
      _firstObservedAt = $v.firstObservedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PropagationGraphCrossPlatformOrderInner other) {
    _$v = other as _$PropagationGraphCrossPlatformOrderInner;
  }

  @override
  void update(
      void Function(PropagationGraphCrossPlatformOrderInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PropagationGraphCrossPlatformOrderInner build() => _build();

  _$PropagationGraphCrossPlatformOrderInner _build() {
    final _$result = _$v ??
        _$PropagationGraphCrossPlatformOrderInner._(
          platform: BuiltValueNullFieldError.checkNotNull(
              platform, r'PropagationGraphCrossPlatformOrderInner', 'platform'),
          firstObservedAt: BuiltValueNullFieldError.checkNotNull(
              firstObservedAt,
              r'PropagationGraphCrossPlatformOrderInner',
              'firstObservedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

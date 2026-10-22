// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'propagation_graph_earliest_by_platform_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PropagationGraphEarliestByPlatformInner
    extends PropagationGraphEarliestByPlatformInner {
  @override
  final String platform;
  @override
  final String postRef;
  @override
  final DateTime observedAt;

  factory _$PropagationGraphEarliestByPlatformInner([
    void Function(PropagationGraphEarliestByPlatformInnerBuilder)? updates,
  ]) => (PropagationGraphEarliestByPlatformInnerBuilder()..update(updates))
      ._build();

  _$PropagationGraphEarliestByPlatformInner._({
    required this.platform,
    required this.postRef,
    required this.observedAt,
  }) : super._();
  @override
  PropagationGraphEarliestByPlatformInner rebuild(
    void Function(PropagationGraphEarliestByPlatformInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PropagationGraphEarliestByPlatformInnerBuilder toBuilder() =>
      PropagationGraphEarliestByPlatformInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PropagationGraphEarliestByPlatformInner &&
        platform == other.platform &&
        postRef == other.postRef &&
        observedAt == other.observedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, postRef.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PropagationGraphEarliestByPlatformInner',
          )
          ..add('platform', platform)
          ..add('postRef', postRef)
          ..add('observedAt', observedAt))
        .toString();
  }
}

class PropagationGraphEarliestByPlatformInnerBuilder
    implements
        Builder<
          PropagationGraphEarliestByPlatformInner,
          PropagationGraphEarliestByPlatformInnerBuilder
        > {
  _$PropagationGraphEarliestByPlatformInner? _$v;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _postRef;
  String? get postRef => _$this._postRef;
  set postRef(String? postRef) => _$this._postRef = postRef;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  PropagationGraphEarliestByPlatformInnerBuilder() {
    PropagationGraphEarliestByPlatformInner._defaults(this);
  }

  PropagationGraphEarliestByPlatformInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platform = $v.platform;
      _postRef = $v.postRef;
      _observedAt = $v.observedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PropagationGraphEarliestByPlatformInner other) {
    _$v = other as _$PropagationGraphEarliestByPlatformInner;
  }

  @override
  void update(
    void Function(PropagationGraphEarliestByPlatformInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  PropagationGraphEarliestByPlatformInner build() => _build();

  _$PropagationGraphEarliestByPlatformInner _build() {
    final _$result =
        _$v ??
        _$PropagationGraphEarliestByPlatformInner._(
          platform: BuiltValueNullFieldError.checkNotNull(
            platform,
            r'PropagationGraphEarliestByPlatformInner',
            'platform',
          ),
          postRef: BuiltValueNullFieldError.checkNotNull(
            postRef,
            r'PropagationGraphEarliestByPlatformInner',
            'postRef',
          ),
          observedAt: BuiltValueNullFieldError.checkNotNull(
            observedAt,
            r'PropagationGraphEarliestByPlatformInner',
            'observedAt',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

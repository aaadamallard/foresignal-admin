// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raster_frame_page_prefetch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RasterFramePagePrefetch extends RasterFramePagePrefetch {
  @override
  final int recommendedFrames;
  @override
  final int? maxZoomForAnimation;

  factory _$RasterFramePagePrefetch(
          [void Function(RasterFramePagePrefetchBuilder)? updates]) =>
      (RasterFramePagePrefetchBuilder()..update(updates))._build();

  _$RasterFramePagePrefetch._(
      {required this.recommendedFrames, this.maxZoomForAnimation})
      : super._();
  @override
  RasterFramePagePrefetch rebuild(
          void Function(RasterFramePagePrefetchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RasterFramePagePrefetchBuilder toBuilder() =>
      RasterFramePagePrefetchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RasterFramePagePrefetch &&
        recommendedFrames == other.recommendedFrames &&
        maxZoomForAnimation == other.maxZoomForAnimation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, recommendedFrames.hashCode);
    _$hash = $jc(_$hash, maxZoomForAnimation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RasterFramePagePrefetch')
          ..add('recommendedFrames', recommendedFrames)
          ..add('maxZoomForAnimation', maxZoomForAnimation))
        .toString();
  }
}

class RasterFramePagePrefetchBuilder
    implements
        Builder<RasterFramePagePrefetch, RasterFramePagePrefetchBuilder> {
  _$RasterFramePagePrefetch? _$v;

  int? _recommendedFrames;
  int? get recommendedFrames => _$this._recommendedFrames;
  set recommendedFrames(int? recommendedFrames) =>
      _$this._recommendedFrames = recommendedFrames;

  int? _maxZoomForAnimation;
  int? get maxZoomForAnimation => _$this._maxZoomForAnimation;
  set maxZoomForAnimation(int? maxZoomForAnimation) =>
      _$this._maxZoomForAnimation = maxZoomForAnimation;

  RasterFramePagePrefetchBuilder() {
    RasterFramePagePrefetch._defaults(this);
  }

  RasterFramePagePrefetchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recommendedFrames = $v.recommendedFrames;
      _maxZoomForAnimation = $v.maxZoomForAnimation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RasterFramePagePrefetch other) {
    _$v = other as _$RasterFramePagePrefetch;
  }

  @override
  void update(void Function(RasterFramePagePrefetchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RasterFramePagePrefetch build() => _build();

  _$RasterFramePagePrefetch _build() {
    final _$result = _$v ??
        _$RasterFramePagePrefetch._(
          recommendedFrames: BuiltValueNullFieldError.checkNotNull(
              recommendedFrames,
              r'RasterFramePagePrefetch',
              'recommendedFrames'),
          maxZoomForAnimation: maxZoomForAnimation,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

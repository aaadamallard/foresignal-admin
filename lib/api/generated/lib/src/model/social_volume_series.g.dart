// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_volume_series.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialVolumeSeries extends SocialVolumeSeries {
  @override
  final String platform;
  @override
  final String? language;
  @override
  final String seriesRef;
  @override
  final SocialCollectionType collectionType;
  @override
  final bool baselineEligible;
  @override
  final BuiltList<SocialVolumePoint> points;

  factory _$SocialVolumeSeries(
          [void Function(SocialVolumeSeriesBuilder)? updates]) =>
      (SocialVolumeSeriesBuilder()..update(updates))._build();

  _$SocialVolumeSeries._(
      {required this.platform,
      this.language,
      required this.seriesRef,
      required this.collectionType,
      required this.baselineEligible,
      required this.points})
      : super._();
  @override
  SocialVolumeSeries rebuild(
          void Function(SocialVolumeSeriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialVolumeSeriesBuilder toBuilder() =>
      SocialVolumeSeriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialVolumeSeries &&
        platform == other.platform &&
        language == other.language &&
        seriesRef == other.seriesRef &&
        collectionType == other.collectionType &&
        baselineEligible == other.baselineEligible &&
        points == other.points;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, seriesRef.hashCode);
    _$hash = $jc(_$hash, collectionType.hashCode);
    _$hash = $jc(_$hash, baselineEligible.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialVolumeSeries')
          ..add('platform', platform)
          ..add('language', language)
          ..add('seriesRef', seriesRef)
          ..add('collectionType', collectionType)
          ..add('baselineEligible', baselineEligible)
          ..add('points', points))
        .toString();
  }
}

class SocialVolumeSeriesBuilder
    implements Builder<SocialVolumeSeries, SocialVolumeSeriesBuilder> {
  _$SocialVolumeSeries? _$v;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _seriesRef;
  String? get seriesRef => _$this._seriesRef;
  set seriesRef(String? seriesRef) => _$this._seriesRef = seriesRef;

  SocialCollectionType? _collectionType;
  SocialCollectionType? get collectionType => _$this._collectionType;
  set collectionType(SocialCollectionType? collectionType) =>
      _$this._collectionType = collectionType;

  bool? _baselineEligible;
  bool? get baselineEligible => _$this._baselineEligible;
  set baselineEligible(bool? baselineEligible) =>
      _$this._baselineEligible = baselineEligible;

  ListBuilder<SocialVolumePoint>? _points;
  ListBuilder<SocialVolumePoint> get points =>
      _$this._points ??= ListBuilder<SocialVolumePoint>();
  set points(ListBuilder<SocialVolumePoint>? points) => _$this._points = points;

  SocialVolumeSeriesBuilder() {
    SocialVolumeSeries._defaults(this);
  }

  SocialVolumeSeriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platform = $v.platform;
      _language = $v.language;
      _seriesRef = $v.seriesRef;
      _collectionType = $v.collectionType;
      _baselineEligible = $v.baselineEligible;
      _points = $v.points.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialVolumeSeries other) {
    _$v = other as _$SocialVolumeSeries;
  }

  @override
  void update(void Function(SocialVolumeSeriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialVolumeSeries build() => _build();

  _$SocialVolumeSeries _build() {
    _$SocialVolumeSeries _$result;
    try {
      _$result = _$v ??
          _$SocialVolumeSeries._(
            platform: BuiltValueNullFieldError.checkNotNull(
                platform, r'SocialVolumeSeries', 'platform'),
            language: language,
            seriesRef: BuiltValueNullFieldError.checkNotNull(
                seriesRef, r'SocialVolumeSeries', 'seriesRef'),
            collectionType: BuiltValueNullFieldError.checkNotNull(
                collectionType, r'SocialVolumeSeries', 'collectionType'),
            baselineEligible: BuiltValueNullFieldError.checkNotNull(
                baselineEligible, r'SocialVolumeSeries', 'baselineEligible'),
            points: points.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'points';
        points.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SocialVolumeSeries', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

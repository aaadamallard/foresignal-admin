// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_feature_properties.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcFeatureProperties extends OgcFeatureProperties {
  @override
  final String? title;
  @override
  final String? sourceId;
  @override
  final DateTime? observedAt;
  @override
  final DateTime? eventTime;
  @override
  final int? version;

  factory _$OgcFeatureProperties([
    void Function(OgcFeaturePropertiesBuilder)? updates,
  ]) => (OgcFeaturePropertiesBuilder()..update(updates))._build();

  _$OgcFeatureProperties._({
    this.title,
    this.sourceId,
    this.observedAt,
    this.eventTime,
    this.version,
  }) : super._();
  @override
  OgcFeatureProperties rebuild(
    void Function(OgcFeaturePropertiesBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OgcFeaturePropertiesBuilder toBuilder() =>
      OgcFeaturePropertiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcFeatureProperties &&
        title == other.title &&
        sourceId == other.sourceId &&
        observedAt == other.observedAt &&
        eventTime == other.eventTime &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, eventTime.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcFeatureProperties')
          ..add('title', title)
          ..add('sourceId', sourceId)
          ..add('observedAt', observedAt)
          ..add('eventTime', eventTime)
          ..add('version', version))
        .toString();
  }
}

class OgcFeaturePropertiesBuilder
    implements Builder<OgcFeatureProperties, OgcFeaturePropertiesBuilder> {
  _$OgcFeatureProperties? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  DateTime? _eventTime;
  DateTime? get eventTime => _$this._eventTime;
  set eventTime(DateTime? eventTime) => _$this._eventTime = eventTime;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  OgcFeaturePropertiesBuilder() {
    OgcFeatureProperties._defaults(this);
  }

  OgcFeaturePropertiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _sourceId = $v.sourceId;
      _observedAt = $v.observedAt;
      _eventTime = $v.eventTime;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcFeatureProperties other) {
    _$v = other as _$OgcFeatureProperties;
  }

  @override
  void update(void Function(OgcFeaturePropertiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcFeatureProperties build() => _build();

  _$OgcFeatureProperties _build() {
    final _$result =
        _$v ??
        _$OgcFeatureProperties._(
          title: title,
          sourceId: sourceId,
          observedAt: observedAt,
          eventTime: eventTime,
          version: version,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

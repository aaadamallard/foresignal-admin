// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Quality extends Quality {
  @override
  final num? accuracyMeters;
  @override
  final num? confidence;
  @override
  final String? positionSource;
  @override
  final BuiltMap<String, JsonObject?>? extra;

  factory _$Quality([void Function(QualityBuilder)? updates]) =>
      (QualityBuilder()..update(updates))._build();

  _$Quality._({
    this.accuracyMeters,
    this.confidence,
    this.positionSource,
    this.extra,
  }) : super._();
  @override
  Quality rebuild(void Function(QualityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QualityBuilder toBuilder() => QualityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Quality &&
        accuracyMeters == other.accuracyMeters &&
        confidence == other.confidence &&
        positionSource == other.positionSource &&
        extra == other.extra;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accuracyMeters.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, positionSource.hashCode);
    _$hash = $jc(_$hash, extra.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Quality')
          ..add('accuracyMeters', accuracyMeters)
          ..add('confidence', confidence)
          ..add('positionSource', positionSource)
          ..add('extra', extra))
        .toString();
  }
}

class QualityBuilder implements Builder<Quality, QualityBuilder> {
  _$Quality? _$v;

  num? _accuracyMeters;
  num? get accuracyMeters => _$this._accuracyMeters;
  set accuracyMeters(num? accuracyMeters) =>
      _$this._accuracyMeters = accuracyMeters;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  String? _positionSource;
  String? get positionSource => _$this._positionSource;
  set positionSource(String? positionSource) =>
      _$this._positionSource = positionSource;

  MapBuilder<String, JsonObject?>? _extra;
  MapBuilder<String, JsonObject?> get extra =>
      _$this._extra ??= MapBuilder<String, JsonObject?>();
  set extra(MapBuilder<String, JsonObject?>? extra) => _$this._extra = extra;

  QualityBuilder() {
    Quality._defaults(this);
  }

  QualityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accuracyMeters = $v.accuracyMeters;
      _confidence = $v.confidence;
      _positionSource = $v.positionSource;
      _extra = $v.extra?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Quality other) {
    _$v = other as _$Quality;
  }

  @override
  void update(void Function(QualityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Quality build() => _build();

  _$Quality _build() {
    _$Quality _$result;
    try {
      _$result =
          _$v ??
          _$Quality._(
            accuracyMeters: accuracyMeters,
            confidence: confidence,
            positionSource: positionSource,
            extra: _extra?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extra';
        _extra?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Quality',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

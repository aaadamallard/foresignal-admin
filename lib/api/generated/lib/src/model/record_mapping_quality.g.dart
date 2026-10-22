// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_mapping_quality.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecordMappingQuality extends RecordMappingQuality {
  @override
  final JsonObject? accuracyMeters;
  @override
  final BuiltMap<String, JsonObject?>? extra;

  factory _$RecordMappingQuality(
          [void Function(RecordMappingQualityBuilder)? updates]) =>
      (RecordMappingQualityBuilder()..update(updates))._build();

  _$RecordMappingQuality._({this.accuracyMeters, this.extra}) : super._();
  @override
  RecordMappingQuality rebuild(
          void Function(RecordMappingQualityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecordMappingQualityBuilder toBuilder() =>
      RecordMappingQualityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecordMappingQuality &&
        accuracyMeters == other.accuracyMeters &&
        extra == other.extra;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accuracyMeters.hashCode);
    _$hash = $jc(_$hash, extra.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecordMappingQuality')
          ..add('accuracyMeters', accuracyMeters)
          ..add('extra', extra))
        .toString();
  }
}

class RecordMappingQualityBuilder
    implements Builder<RecordMappingQuality, RecordMappingQualityBuilder> {
  _$RecordMappingQuality? _$v;

  JsonObject? _accuracyMeters;
  JsonObject? get accuracyMeters => _$this._accuracyMeters;
  set accuracyMeters(JsonObject? accuracyMeters) =>
      _$this._accuracyMeters = accuracyMeters;

  MapBuilder<String, JsonObject?>? _extra;
  MapBuilder<String, JsonObject?> get extra =>
      _$this._extra ??= MapBuilder<String, JsonObject?>();
  set extra(MapBuilder<String, JsonObject?>? extra) => _$this._extra = extra;

  RecordMappingQualityBuilder() {
    RecordMappingQuality._defaults(this);
  }

  RecordMappingQualityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accuracyMeters = $v.accuracyMeters;
      _extra = $v.extra?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecordMappingQuality other) {
    _$v = other as _$RecordMappingQuality;
  }

  @override
  void update(void Function(RecordMappingQualityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecordMappingQuality build() => _build();

  _$RecordMappingQuality _build() {
    _$RecordMappingQuality _$result;
    try {
      _$result = _$v ??
          _$RecordMappingQuality._(
            accuracyMeters: accuracyMeters,
            extra: _extra?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extra';
        _extra?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RecordMappingQuality', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

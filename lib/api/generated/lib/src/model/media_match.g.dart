// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_match.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaMatch extends MediaMatch {
  @override
  final MediaFingerprint fingerprint;
  @override
  final int distance;

  factory _$MediaMatch([void Function(MediaMatchBuilder)? updates]) =>
      (MediaMatchBuilder()..update(updates))._build();

  _$MediaMatch._({required this.fingerprint, required this.distance})
      : super._();
  @override
  MediaMatch rebuild(void Function(MediaMatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaMatchBuilder toBuilder() => MediaMatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaMatch &&
        fingerprint == other.fingerprint &&
        distance == other.distance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fingerprint.hashCode);
    _$hash = $jc(_$hash, distance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaMatch')
          ..add('fingerprint', fingerprint)
          ..add('distance', distance))
        .toString();
  }
}

class MediaMatchBuilder implements Builder<MediaMatch, MediaMatchBuilder> {
  _$MediaMatch? _$v;

  MediaFingerprintBuilder? _fingerprint;
  MediaFingerprintBuilder get fingerprint =>
      _$this._fingerprint ??= MediaFingerprintBuilder();
  set fingerprint(MediaFingerprintBuilder? fingerprint) =>
      _$this._fingerprint = fingerprint;

  int? _distance;
  int? get distance => _$this._distance;
  set distance(int? distance) => _$this._distance = distance;

  MediaMatchBuilder() {
    MediaMatch._defaults(this);
  }

  MediaMatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fingerprint = $v.fingerprint.toBuilder();
      _distance = $v.distance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaMatch other) {
    _$v = other as _$MediaMatch;
  }

  @override
  void update(void Function(MediaMatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaMatch build() => _build();

  _$MediaMatch _build() {
    _$MediaMatch _$result;
    try {
      _$result = _$v ??
          _$MediaMatch._(
            fingerprint: fingerprint.build(),
            distance: BuiltValueNullFieldError.checkNotNull(
                distance, r'MediaMatch', 'distance'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fingerprint';
        fingerprint.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MediaMatch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_settings_velocity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialSettingsVelocity extends SocialSettingsVelocity {
  @override
  final num? minRatio;
  @override
  final int? minUniqueAuthors;
  @override
  final int? dedupHours;

  factory _$SocialSettingsVelocity(
          [void Function(SocialSettingsVelocityBuilder)? updates]) =>
      (SocialSettingsVelocityBuilder()..update(updates))._build();

  _$SocialSettingsVelocity._(
      {this.minRatio, this.minUniqueAuthors, this.dedupHours})
      : super._();
  @override
  SocialSettingsVelocity rebuild(
          void Function(SocialSettingsVelocityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialSettingsVelocityBuilder toBuilder() =>
      SocialSettingsVelocityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialSettingsVelocity &&
        minRatio == other.minRatio &&
        minUniqueAuthors == other.minUniqueAuthors &&
        dedupHours == other.dedupHours;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minRatio.hashCode);
    _$hash = $jc(_$hash, minUniqueAuthors.hashCode);
    _$hash = $jc(_$hash, dedupHours.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialSettingsVelocity')
          ..add('minRatio', minRatio)
          ..add('minUniqueAuthors', minUniqueAuthors)
          ..add('dedupHours', dedupHours))
        .toString();
  }
}

class SocialSettingsVelocityBuilder
    implements Builder<SocialSettingsVelocity, SocialSettingsVelocityBuilder> {
  _$SocialSettingsVelocity? _$v;

  num? _minRatio;
  num? get minRatio => _$this._minRatio;
  set minRatio(num? minRatio) => _$this._minRatio = minRatio;

  int? _minUniqueAuthors;
  int? get minUniqueAuthors => _$this._minUniqueAuthors;
  set minUniqueAuthors(int? minUniqueAuthors) =>
      _$this._minUniqueAuthors = minUniqueAuthors;

  int? _dedupHours;
  int? get dedupHours => _$this._dedupHours;
  set dedupHours(int? dedupHours) => _$this._dedupHours = dedupHours;

  SocialSettingsVelocityBuilder() {
    SocialSettingsVelocity._defaults(this);
  }

  SocialSettingsVelocityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minRatio = $v.minRatio;
      _minUniqueAuthors = $v.minUniqueAuthors;
      _dedupHours = $v.dedupHours;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialSettingsVelocity other) {
    _$v = other as _$SocialSettingsVelocity;
  }

  @override
  void update(void Function(SocialSettingsVelocityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialSettingsVelocity build() => _build();

  _$SocialSettingsVelocity _build() {
    final _$result = _$v ??
        _$SocialSettingsVelocity._(
          minRatio: minRatio,
          minUniqueAuthors: minUniqueAuthors,
          dedupHours: dedupHours,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

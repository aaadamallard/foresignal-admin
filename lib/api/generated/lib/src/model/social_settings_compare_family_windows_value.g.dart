// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_settings_compare_family_windows_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialSettingsCompareFamilyWindowsValue
    extends SocialSettingsCompareFamilyWindowsValue {
  @override
  final String? before;
  @override
  final String? after;
  @override
  final num? toleranceKm;
  @override
  final String? publicationLag;

  factory _$SocialSettingsCompareFamilyWindowsValue([
    void Function(SocialSettingsCompareFamilyWindowsValueBuilder)? updates,
  ]) => (SocialSettingsCompareFamilyWindowsValueBuilder()..update(updates))
      ._build();

  _$SocialSettingsCompareFamilyWindowsValue._({
    this.before,
    this.after,
    this.toleranceKm,
    this.publicationLag,
  }) : super._();
  @override
  SocialSettingsCompareFamilyWindowsValue rebuild(
    void Function(SocialSettingsCompareFamilyWindowsValueBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialSettingsCompareFamilyWindowsValueBuilder toBuilder() =>
      SocialSettingsCompareFamilyWindowsValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialSettingsCompareFamilyWindowsValue &&
        before == other.before &&
        after == other.after &&
        toleranceKm == other.toleranceKm &&
        publicationLag == other.publicationLag;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, before.hashCode);
    _$hash = $jc(_$hash, after.hashCode);
    _$hash = $jc(_$hash, toleranceKm.hashCode);
    _$hash = $jc(_$hash, publicationLag.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SocialSettingsCompareFamilyWindowsValue',
          )
          ..add('before', before)
          ..add('after', after)
          ..add('toleranceKm', toleranceKm)
          ..add('publicationLag', publicationLag))
        .toString();
  }
}

class SocialSettingsCompareFamilyWindowsValueBuilder
    implements
        Builder<
          SocialSettingsCompareFamilyWindowsValue,
          SocialSettingsCompareFamilyWindowsValueBuilder
        > {
  _$SocialSettingsCompareFamilyWindowsValue? _$v;

  String? _before;
  String? get before => _$this._before;
  set before(String? before) => _$this._before = before;

  String? _after;
  String? get after => _$this._after;
  set after(String? after) => _$this._after = after;

  num? _toleranceKm;
  num? get toleranceKm => _$this._toleranceKm;
  set toleranceKm(num? toleranceKm) => _$this._toleranceKm = toleranceKm;

  String? _publicationLag;
  String? get publicationLag => _$this._publicationLag;
  set publicationLag(String? publicationLag) =>
      _$this._publicationLag = publicationLag;

  SocialSettingsCompareFamilyWindowsValueBuilder() {
    SocialSettingsCompareFamilyWindowsValue._defaults(this);
  }

  SocialSettingsCompareFamilyWindowsValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _before = $v.before;
      _after = $v.after;
      _toleranceKm = $v.toleranceKm;
      _publicationLag = $v.publicationLag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialSettingsCompareFamilyWindowsValue other) {
    _$v = other as _$SocialSettingsCompareFamilyWindowsValue;
  }

  @override
  void update(
    void Function(SocialSettingsCompareFamilyWindowsValueBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  SocialSettingsCompareFamilyWindowsValue build() => _build();

  _$SocialSettingsCompareFamilyWindowsValue _build() {
    final _$result =
        _$v ??
        _$SocialSettingsCompareFamilyWindowsValue._(
          before: before,
          after: after,
          toleranceKm: toleranceKm,
          publicationLag: publicationLag,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

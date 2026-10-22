// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_rate_refresh_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseRateRefreshResult extends BaseRateRefreshResult {
  @override
  final int profiles;
  @override
  final int rates;
  @override
  final int? skipped;
  @override
  final int? removed;
  @override
  final BuiltList<String> families;
  @override
  final int? regions;
  @override
  final DetectorRef? computer;

  factory _$BaseRateRefreshResult([
    void Function(BaseRateRefreshResultBuilder)? updates,
  ]) => (BaseRateRefreshResultBuilder()..update(updates))._build();

  _$BaseRateRefreshResult._({
    required this.profiles,
    required this.rates,
    this.skipped,
    this.removed,
    required this.families,
    this.regions,
    this.computer,
  }) : super._();
  @override
  BaseRateRefreshResult rebuild(
    void Function(BaseRateRefreshResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BaseRateRefreshResultBuilder toBuilder() =>
      BaseRateRefreshResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseRateRefreshResult &&
        profiles == other.profiles &&
        rates == other.rates &&
        skipped == other.skipped &&
        removed == other.removed &&
        families == other.families &&
        regions == other.regions &&
        computer == other.computer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, profiles.hashCode);
    _$hash = $jc(_$hash, rates.hashCode);
    _$hash = $jc(_$hash, skipped.hashCode);
    _$hash = $jc(_$hash, removed.hashCode);
    _$hash = $jc(_$hash, families.hashCode);
    _$hash = $jc(_$hash, regions.hashCode);
    _$hash = $jc(_$hash, computer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BaseRateRefreshResult')
          ..add('profiles', profiles)
          ..add('rates', rates)
          ..add('skipped', skipped)
          ..add('removed', removed)
          ..add('families', families)
          ..add('regions', regions)
          ..add('computer', computer))
        .toString();
  }
}

class BaseRateRefreshResultBuilder
    implements Builder<BaseRateRefreshResult, BaseRateRefreshResultBuilder> {
  _$BaseRateRefreshResult? _$v;

  int? _profiles;
  int? get profiles => _$this._profiles;
  set profiles(int? profiles) => _$this._profiles = profiles;

  int? _rates;
  int? get rates => _$this._rates;
  set rates(int? rates) => _$this._rates = rates;

  int? _skipped;
  int? get skipped => _$this._skipped;
  set skipped(int? skipped) => _$this._skipped = skipped;

  int? _removed;
  int? get removed => _$this._removed;
  set removed(int? removed) => _$this._removed = removed;

  ListBuilder<String>? _families;
  ListBuilder<String> get families =>
      _$this._families ??= ListBuilder<String>();
  set families(ListBuilder<String>? families) => _$this._families = families;

  int? _regions;
  int? get regions => _$this._regions;
  set regions(int? regions) => _$this._regions = regions;

  DetectorRefBuilder? _computer;
  DetectorRefBuilder get computer => _$this._computer ??= DetectorRefBuilder();
  set computer(DetectorRefBuilder? computer) => _$this._computer = computer;

  BaseRateRefreshResultBuilder() {
    BaseRateRefreshResult._defaults(this);
  }

  BaseRateRefreshResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _profiles = $v.profiles;
      _rates = $v.rates;
      _skipped = $v.skipped;
      _removed = $v.removed;
      _families = $v.families.toBuilder();
      _regions = $v.regions;
      _computer = $v.computer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseRateRefreshResult other) {
    _$v = other as _$BaseRateRefreshResult;
  }

  @override
  void update(void Function(BaseRateRefreshResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BaseRateRefreshResult build() => _build();

  _$BaseRateRefreshResult _build() {
    _$BaseRateRefreshResult _$result;
    try {
      _$result =
          _$v ??
          _$BaseRateRefreshResult._(
            profiles: BuiltValueNullFieldError.checkNotNull(
              profiles,
              r'BaseRateRefreshResult',
              'profiles',
            ),
            rates: BuiltValueNullFieldError.checkNotNull(
              rates,
              r'BaseRateRefreshResult',
              'rates',
            ),
            skipped: skipped,
            removed: removed,
            families: families.build(),
            regions: regions,
            computer: _computer?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'families';
        families.build();

        _$failedField = 'computer';
        _computer?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BaseRateRefreshResult',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_settings_cues.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialSettingsCues extends SocialSettingsCues {
  @override
  final bool? enabled;
  @override
  final SocialSettingsCuesTriggers? triggers;
  @override
  final int? maxPerDay;
  @override
  final num? maxCostUsdPerCue;
  @override
  final BuiltList<SocialPlatformId>? platforms;
  @override
  final SocialSettingsCuesXaiXSearch? xaiXSearch;

  factory _$SocialSettingsCues([
    void Function(SocialSettingsCuesBuilder)? updates,
  ]) => (SocialSettingsCuesBuilder()..update(updates))._build();

  _$SocialSettingsCues._({
    this.enabled,
    this.triggers,
    this.maxPerDay,
    this.maxCostUsdPerCue,
    this.platforms,
    this.xaiXSearch,
  }) : super._();
  @override
  SocialSettingsCues rebuild(
    void Function(SocialSettingsCuesBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialSettingsCuesBuilder toBuilder() =>
      SocialSettingsCuesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialSettingsCues &&
        enabled == other.enabled &&
        triggers == other.triggers &&
        maxPerDay == other.maxPerDay &&
        maxCostUsdPerCue == other.maxCostUsdPerCue &&
        platforms == other.platforms &&
        xaiXSearch == other.xaiXSearch;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, triggers.hashCode);
    _$hash = $jc(_$hash, maxPerDay.hashCode);
    _$hash = $jc(_$hash, maxCostUsdPerCue.hashCode);
    _$hash = $jc(_$hash, platforms.hashCode);
    _$hash = $jc(_$hash, xaiXSearch.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialSettingsCues')
          ..add('enabled', enabled)
          ..add('triggers', triggers)
          ..add('maxPerDay', maxPerDay)
          ..add('maxCostUsdPerCue', maxCostUsdPerCue)
          ..add('platforms', platforms)
          ..add('xaiXSearch', xaiXSearch))
        .toString();
  }
}

class SocialSettingsCuesBuilder
    implements Builder<SocialSettingsCues, SocialSettingsCuesBuilder> {
  _$SocialSettingsCues? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  SocialSettingsCuesTriggersBuilder? _triggers;
  SocialSettingsCuesTriggersBuilder get triggers =>
      _$this._triggers ??= SocialSettingsCuesTriggersBuilder();
  set triggers(SocialSettingsCuesTriggersBuilder? triggers) =>
      _$this._triggers = triggers;

  int? _maxPerDay;
  int? get maxPerDay => _$this._maxPerDay;
  set maxPerDay(int? maxPerDay) => _$this._maxPerDay = maxPerDay;

  num? _maxCostUsdPerCue;
  num? get maxCostUsdPerCue => _$this._maxCostUsdPerCue;
  set maxCostUsdPerCue(num? maxCostUsdPerCue) =>
      _$this._maxCostUsdPerCue = maxCostUsdPerCue;

  ListBuilder<SocialPlatformId>? _platforms;
  ListBuilder<SocialPlatformId> get platforms =>
      _$this._platforms ??= ListBuilder<SocialPlatformId>();
  set platforms(ListBuilder<SocialPlatformId>? platforms) =>
      _$this._platforms = platforms;

  SocialSettingsCuesXaiXSearchBuilder? _xaiXSearch;
  SocialSettingsCuesXaiXSearchBuilder get xaiXSearch =>
      _$this._xaiXSearch ??= SocialSettingsCuesXaiXSearchBuilder();
  set xaiXSearch(SocialSettingsCuesXaiXSearchBuilder? xaiXSearch) =>
      _$this._xaiXSearch = xaiXSearch;

  SocialSettingsCuesBuilder() {
    SocialSettingsCues._defaults(this);
  }

  SocialSettingsCuesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _triggers = $v.triggers?.toBuilder();
      _maxPerDay = $v.maxPerDay;
      _maxCostUsdPerCue = $v.maxCostUsdPerCue;
      _platforms = $v.platforms?.toBuilder();
      _xaiXSearch = $v.xaiXSearch?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialSettingsCues other) {
    _$v = other as _$SocialSettingsCues;
  }

  @override
  void update(void Function(SocialSettingsCuesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialSettingsCues build() => _build();

  _$SocialSettingsCues _build() {
    _$SocialSettingsCues _$result;
    try {
      _$result =
          _$v ??
          _$SocialSettingsCues._(
            enabled: enabled,
            triggers: _triggers?.build(),
            maxPerDay: maxPerDay,
            maxCostUsdPerCue: maxCostUsdPerCue,
            platforms: _platforms?.build(),
            xaiXSearch: _xaiXSearch?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'triggers';
        _triggers?.build();

        _$failedField = 'platforms';
        _platforms?.build();
        _$failedField = 'xaiXSearch';
        _xaiXSearch?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SocialSettingsCues',
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

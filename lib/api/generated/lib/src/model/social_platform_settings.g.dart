// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_platform_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialPlatformSettings extends SocialPlatformSettings {
  @override
  final bool enabled;
  @override
  final String? mode;
  @override
  final BuiltList<String>? channels;
  @override
  final bool? deletionSync;
  @override
  final String? postRetention;
  @override
  final Budget? budget;
  @override
  final num? monthlyCapUsd;
  @override
  final BuiltList<SocialPlatformPrice>? prices;
  @override
  final Date? pricesAsOf;
  @override
  final SocialPlatformSettingsOptions? options;

  factory _$SocialPlatformSettings([
    void Function(SocialPlatformSettingsBuilder)? updates,
  ]) => (SocialPlatformSettingsBuilder()..update(updates))._build();

  _$SocialPlatformSettings._({
    required this.enabled,
    this.mode,
    this.channels,
    this.deletionSync,
    this.postRetention,
    this.budget,
    this.monthlyCapUsd,
    this.prices,
    this.pricesAsOf,
    this.options,
  }) : super._();
  @override
  SocialPlatformSettings rebuild(
    void Function(SocialPlatformSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialPlatformSettingsBuilder toBuilder() =>
      SocialPlatformSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialPlatformSettings &&
        enabled == other.enabled &&
        mode == other.mode &&
        channels == other.channels &&
        deletionSync == other.deletionSync &&
        postRetention == other.postRetention &&
        budget == other.budget &&
        monthlyCapUsd == other.monthlyCapUsd &&
        prices == other.prices &&
        pricesAsOf == other.pricesAsOf &&
        options == other.options;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, channels.hashCode);
    _$hash = $jc(_$hash, deletionSync.hashCode);
    _$hash = $jc(_$hash, postRetention.hashCode);
    _$hash = $jc(_$hash, budget.hashCode);
    _$hash = $jc(_$hash, monthlyCapUsd.hashCode);
    _$hash = $jc(_$hash, prices.hashCode);
    _$hash = $jc(_$hash, pricesAsOf.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialPlatformSettings')
          ..add('enabled', enabled)
          ..add('mode', mode)
          ..add('channels', channels)
          ..add('deletionSync', deletionSync)
          ..add('postRetention', postRetention)
          ..add('budget', budget)
          ..add('monthlyCapUsd', monthlyCapUsd)
          ..add('prices', prices)
          ..add('pricesAsOf', pricesAsOf)
          ..add('options', options))
        .toString();
  }
}

class SocialPlatformSettingsBuilder
    implements Builder<SocialPlatformSettings, SocialPlatformSettingsBuilder> {
  _$SocialPlatformSettings? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _mode;
  String? get mode => _$this._mode;
  set mode(String? mode) => _$this._mode = mode;

  ListBuilder<String>? _channels;
  ListBuilder<String> get channels =>
      _$this._channels ??= ListBuilder<String>();
  set channels(ListBuilder<String>? channels) => _$this._channels = channels;

  bool? _deletionSync;
  bool? get deletionSync => _$this._deletionSync;
  set deletionSync(bool? deletionSync) => _$this._deletionSync = deletionSync;

  String? _postRetention;
  String? get postRetention => _$this._postRetention;
  set postRetention(String? postRetention) =>
      _$this._postRetention = postRetention;

  BudgetBuilder? _budget;
  BudgetBuilder get budget => _$this._budget ??= BudgetBuilder();
  set budget(BudgetBuilder? budget) => _$this._budget = budget;

  num? _monthlyCapUsd;
  num? get monthlyCapUsd => _$this._monthlyCapUsd;
  set monthlyCapUsd(num? monthlyCapUsd) =>
      _$this._monthlyCapUsd = monthlyCapUsd;

  ListBuilder<SocialPlatformPrice>? _prices;
  ListBuilder<SocialPlatformPrice> get prices =>
      _$this._prices ??= ListBuilder<SocialPlatformPrice>();
  set prices(ListBuilder<SocialPlatformPrice>? prices) =>
      _$this._prices = prices;

  Date? _pricesAsOf;
  Date? get pricesAsOf => _$this._pricesAsOf;
  set pricesAsOf(Date? pricesAsOf) => _$this._pricesAsOf = pricesAsOf;

  SocialPlatformSettingsOptionsBuilder? _options;
  SocialPlatformSettingsOptionsBuilder get options =>
      _$this._options ??= SocialPlatformSettingsOptionsBuilder();
  set options(SocialPlatformSettingsOptionsBuilder? options) =>
      _$this._options = options;

  SocialPlatformSettingsBuilder() {
    SocialPlatformSettings._defaults(this);
  }

  SocialPlatformSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _mode = $v.mode;
      _channels = $v.channels?.toBuilder();
      _deletionSync = $v.deletionSync;
      _postRetention = $v.postRetention;
      _budget = $v.budget?.toBuilder();
      _monthlyCapUsd = $v.monthlyCapUsd;
      _prices = $v.prices?.toBuilder();
      _pricesAsOf = $v.pricesAsOf;
      _options = $v.options?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialPlatformSettings other) {
    _$v = other as _$SocialPlatformSettings;
  }

  @override
  void update(void Function(SocialPlatformSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialPlatformSettings build() => _build();

  _$SocialPlatformSettings _build() {
    _$SocialPlatformSettings _$result;
    try {
      _$result =
          _$v ??
          _$SocialPlatformSettings._(
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'SocialPlatformSettings',
              'enabled',
            ),
            mode: mode,
            channels: _channels?.build(),
            deletionSync: deletionSync,
            postRetention: postRetention,
            budget: _budget?.build(),
            monthlyCapUsd: monthlyCapUsd,
            prices: _prices?.build(),
            pricesAsOf: pricesAsOf,
            options: _options?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'channels';
        _channels?.build();

        _$failedField = 'budget';
        _budget?.build();

        _$failedField = 'prices';
        _prices?.build();

        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SocialPlatformSettings',
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

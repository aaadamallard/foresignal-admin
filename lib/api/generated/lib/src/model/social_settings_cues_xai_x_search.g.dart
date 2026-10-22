// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_settings_cues_xai_x_search.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialSettingsCuesXaiXSearch extends SocialSettingsCuesXaiXSearch {
  @override
  final bool? enabled;
  @override
  final int? maxResults;

  factory _$SocialSettingsCuesXaiXSearch([
    void Function(SocialSettingsCuesXaiXSearchBuilder)? updates,
  ]) => (SocialSettingsCuesXaiXSearchBuilder()..update(updates))._build();

  _$SocialSettingsCuesXaiXSearch._({this.enabled, this.maxResults}) : super._();
  @override
  SocialSettingsCuesXaiXSearch rebuild(
    void Function(SocialSettingsCuesXaiXSearchBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialSettingsCuesXaiXSearchBuilder toBuilder() =>
      SocialSettingsCuesXaiXSearchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialSettingsCuesXaiXSearch &&
        enabled == other.enabled &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialSettingsCuesXaiXSearch')
          ..add('enabled', enabled)
          ..add('maxResults', maxResults))
        .toString();
  }
}

class SocialSettingsCuesXaiXSearchBuilder
    implements
        Builder<
          SocialSettingsCuesXaiXSearch,
          SocialSettingsCuesXaiXSearchBuilder
        > {
  _$SocialSettingsCuesXaiXSearch? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  SocialSettingsCuesXaiXSearchBuilder() {
    SocialSettingsCuesXaiXSearch._defaults(this);
  }

  SocialSettingsCuesXaiXSearchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialSettingsCuesXaiXSearch other) {
    _$v = other as _$SocialSettingsCuesXaiXSearch;
  }

  @override
  void update(void Function(SocialSettingsCuesXaiXSearchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialSettingsCuesXaiXSearch build() => _build();

  _$SocialSettingsCuesXaiXSearch _build() {
    final _$result =
        _$v ??
        _$SocialSettingsCuesXaiXSearch._(
          enabled: enabled,
          maxResults: maxResults,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

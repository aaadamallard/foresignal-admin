// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retention_settings_social.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RetentionSettingsSocial extends RetentionSettingsSocial {
  @override
  final String? posts;
  @override
  final BuiltMap<String, String>? platforms;

  factory _$RetentionSettingsSocial(
          [void Function(RetentionSettingsSocialBuilder)? updates]) =>
      (RetentionSettingsSocialBuilder()..update(updates))._build();

  _$RetentionSettingsSocial._({this.posts, this.platforms}) : super._();
  @override
  RetentionSettingsSocial rebuild(
          void Function(RetentionSettingsSocialBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RetentionSettingsSocialBuilder toBuilder() =>
      RetentionSettingsSocialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RetentionSettingsSocial &&
        posts == other.posts &&
        platforms == other.platforms;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, posts.hashCode);
    _$hash = $jc(_$hash, platforms.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RetentionSettingsSocial')
          ..add('posts', posts)
          ..add('platforms', platforms))
        .toString();
  }
}

class RetentionSettingsSocialBuilder
    implements
        Builder<RetentionSettingsSocial, RetentionSettingsSocialBuilder> {
  _$RetentionSettingsSocial? _$v;

  String? _posts;
  String? get posts => _$this._posts;
  set posts(String? posts) => _$this._posts = posts;

  MapBuilder<String, String>? _platforms;
  MapBuilder<String, String> get platforms =>
      _$this._platforms ??= MapBuilder<String, String>();
  set platforms(MapBuilder<String, String>? platforms) =>
      _$this._platforms = platforms;

  RetentionSettingsSocialBuilder() {
    RetentionSettingsSocial._defaults(this);
  }

  RetentionSettingsSocialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _posts = $v.posts;
      _platforms = $v.platforms?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RetentionSettingsSocial other) {
    _$v = other as _$RetentionSettingsSocial;
  }

  @override
  void update(void Function(RetentionSettingsSocialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RetentionSettingsSocial build() => _build();

  _$RetentionSettingsSocial _build() {
    _$RetentionSettingsSocial _$result;
    try {
      _$result = _$v ??
          _$RetentionSettingsSocial._(
            posts: posts,
            platforms: _platforms?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'platforms';
        _platforms?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RetentionSettingsSocial', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

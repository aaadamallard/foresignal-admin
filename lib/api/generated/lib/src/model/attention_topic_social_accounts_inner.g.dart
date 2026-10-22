// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attention_topic_social_accounts_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttentionTopicSocialAccountsInner
    extends AttentionTopicSocialAccountsInner {
  @override
  final String platform;
  @override
  final String handle;

  factory _$AttentionTopicSocialAccountsInner(
          [void Function(AttentionTopicSocialAccountsInnerBuilder)? updates]) =>
      (AttentionTopicSocialAccountsInnerBuilder()..update(updates))._build();

  _$AttentionTopicSocialAccountsInner._(
      {required this.platform, required this.handle})
      : super._();
  @override
  AttentionTopicSocialAccountsInner rebuild(
          void Function(AttentionTopicSocialAccountsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttentionTopicSocialAccountsInnerBuilder toBuilder() =>
      AttentionTopicSocialAccountsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttentionTopicSocialAccountsInner &&
        platform == other.platform &&
        handle == other.handle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, handle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttentionTopicSocialAccountsInner')
          ..add('platform', platform)
          ..add('handle', handle))
        .toString();
  }
}

class AttentionTopicSocialAccountsInnerBuilder
    implements
        Builder<AttentionTopicSocialAccountsInner,
            AttentionTopicSocialAccountsInnerBuilder> {
  _$AttentionTopicSocialAccountsInner? _$v;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  String? _handle;
  String? get handle => _$this._handle;
  set handle(String? handle) => _$this._handle = handle;

  AttentionTopicSocialAccountsInnerBuilder() {
    AttentionTopicSocialAccountsInner._defaults(this);
  }

  AttentionTopicSocialAccountsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platform = $v.platform;
      _handle = $v.handle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttentionTopicSocialAccountsInner other) {
    _$v = other as _$AttentionTopicSocialAccountsInner;
  }

  @override
  void update(
      void Function(AttentionTopicSocialAccountsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttentionTopicSocialAccountsInner build() => _build();

  _$AttentionTopicSocialAccountsInner _build() {
    final _$result = _$v ??
        _$AttentionTopicSocialAccountsInner._(
          platform: BuiltValueNullFieldError.checkNotNull(
              platform, r'AttentionTopicSocialAccountsInner', 'platform'),
          handle: BuiltValueNullFieldError.checkNotNull(
              handle, r'AttentionTopicSocialAccountsInner', 'handle'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

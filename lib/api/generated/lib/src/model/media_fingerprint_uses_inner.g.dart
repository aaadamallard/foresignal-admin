// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_fingerprint_uses_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaFingerprintUsesInner extends MediaFingerprintUsesInner {
  @override
  final String postRef;
  @override
  final DateTime seenAt;
  @override
  final String? platform;

  factory _$MediaFingerprintUsesInner([
    void Function(MediaFingerprintUsesInnerBuilder)? updates,
  ]) => (MediaFingerprintUsesInnerBuilder()..update(updates))._build();

  _$MediaFingerprintUsesInner._({
    required this.postRef,
    required this.seenAt,
    this.platform,
  }) : super._();
  @override
  MediaFingerprintUsesInner rebuild(
    void Function(MediaFingerprintUsesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MediaFingerprintUsesInnerBuilder toBuilder() =>
      MediaFingerprintUsesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaFingerprintUsesInner &&
        postRef == other.postRef &&
        seenAt == other.seenAt &&
        platform == other.platform;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postRef.hashCode);
    _$hash = $jc(_$hash, seenAt.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaFingerprintUsesInner')
          ..add('postRef', postRef)
          ..add('seenAt', seenAt)
          ..add('platform', platform))
        .toString();
  }
}

class MediaFingerprintUsesInnerBuilder
    implements
        Builder<MediaFingerprintUsesInner, MediaFingerprintUsesInnerBuilder> {
  _$MediaFingerprintUsesInner? _$v;

  String? _postRef;
  String? get postRef => _$this._postRef;
  set postRef(String? postRef) => _$this._postRef = postRef;

  DateTime? _seenAt;
  DateTime? get seenAt => _$this._seenAt;
  set seenAt(DateTime? seenAt) => _$this._seenAt = seenAt;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  MediaFingerprintUsesInnerBuilder() {
    MediaFingerprintUsesInner._defaults(this);
  }

  MediaFingerprintUsesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postRef = $v.postRef;
      _seenAt = $v.seenAt;
      _platform = $v.platform;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaFingerprintUsesInner other) {
    _$v = other as _$MediaFingerprintUsesInner;
  }

  @override
  void update(void Function(MediaFingerprintUsesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaFingerprintUsesInner build() => _build();

  _$MediaFingerprintUsesInner _build() {
    final _$result =
        _$v ??
        _$MediaFingerprintUsesInner._(
          postRef: BuiltValueNullFieldError.checkNotNull(
            postRef,
            r'MediaFingerprintUsesInner',
            'postRef',
          ),
          seenAt: BuiltValueNullFieldError.checkNotNull(
            seenAt,
            r'MediaFingerprintUsesInner',
            'seenAt',
          ),
          platform: platform,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

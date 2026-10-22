// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_media_accepted.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemoteMediaAccepted extends RemoteMediaAccepted {
  @override
  final String mediaId;
  @override
  final String sha256;
  @override
  final String? passId;

  factory _$RemoteMediaAccepted(
          [void Function(RemoteMediaAcceptedBuilder)? updates]) =>
      (RemoteMediaAcceptedBuilder()..update(updates))._build();

  _$RemoteMediaAccepted._(
      {required this.mediaId, required this.sha256, this.passId})
      : super._();
  @override
  RemoteMediaAccepted rebuild(
          void Function(RemoteMediaAcceptedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoteMediaAcceptedBuilder toBuilder() =>
      RemoteMediaAcceptedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoteMediaAccepted &&
        mediaId == other.mediaId &&
        sha256 == other.sha256 &&
        passId == other.passId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jc(_$hash, sha256.hashCode);
    _$hash = $jc(_$hash, passId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RemoteMediaAccepted')
          ..add('mediaId', mediaId)
          ..add('sha256', sha256)
          ..add('passId', passId))
        .toString();
  }
}

class RemoteMediaAcceptedBuilder
    implements Builder<RemoteMediaAccepted, RemoteMediaAcceptedBuilder> {
  _$RemoteMediaAccepted? _$v;

  String? _mediaId;
  String? get mediaId => _$this._mediaId;
  set mediaId(String? mediaId) => _$this._mediaId = mediaId;

  String? _sha256;
  String? get sha256 => _$this._sha256;
  set sha256(String? sha256) => _$this._sha256 = sha256;

  String? _passId;
  String? get passId => _$this._passId;
  set passId(String? passId) => _$this._passId = passId;

  RemoteMediaAcceptedBuilder() {
    RemoteMediaAccepted._defaults(this);
  }

  RemoteMediaAcceptedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mediaId = $v.mediaId;
      _sha256 = $v.sha256;
      _passId = $v.passId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoteMediaAccepted other) {
    _$v = other as _$RemoteMediaAccepted;
  }

  @override
  void update(void Function(RemoteMediaAcceptedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemoteMediaAccepted build() => _build();

  _$RemoteMediaAccepted _build() {
    final _$result = _$v ??
        _$RemoteMediaAccepted._(
          mediaId: BuiltValueNullFieldError.checkNotNull(
              mediaId, r'RemoteMediaAccepted', 'mediaId'),
          sha256: BuiltValueNullFieldError.checkNotNull(
              sha256, r'RemoteMediaAccepted', 'sha256'),
          passId: passId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

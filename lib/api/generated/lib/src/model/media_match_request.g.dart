// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_match_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaMatchRequest extends MediaMatchRequest {
  @override
  final String pdq;
  @override
  final int? maxDistance;
  @override
  final int? limit;

  factory _$MediaMatchRequest(
          [void Function(MediaMatchRequestBuilder)? updates]) =>
      (MediaMatchRequestBuilder()..update(updates))._build();

  _$MediaMatchRequest._({required this.pdq, this.maxDistance, this.limit})
      : super._();
  @override
  MediaMatchRequest rebuild(void Function(MediaMatchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaMatchRequestBuilder toBuilder() =>
      MediaMatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaMatchRequest &&
        pdq == other.pdq &&
        maxDistance == other.maxDistance &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pdq.hashCode);
    _$hash = $jc(_$hash, maxDistance.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaMatchRequest')
          ..add('pdq', pdq)
          ..add('maxDistance', maxDistance)
          ..add('limit', limit))
        .toString();
  }
}

class MediaMatchRequestBuilder
    implements Builder<MediaMatchRequest, MediaMatchRequestBuilder> {
  _$MediaMatchRequest? _$v;

  String? _pdq;
  String? get pdq => _$this._pdq;
  set pdq(String? pdq) => _$this._pdq = pdq;

  int? _maxDistance;
  int? get maxDistance => _$this._maxDistance;
  set maxDistance(int? maxDistance) => _$this._maxDistance = maxDistance;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  MediaMatchRequestBuilder() {
    MediaMatchRequest._defaults(this);
  }

  MediaMatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pdq = $v.pdq;
      _maxDistance = $v.maxDistance;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaMatchRequest other) {
    _$v = other as _$MediaMatchRequest;
  }

  @override
  void update(void Function(MediaMatchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaMatchRequest build() => _build();

  _$MediaMatchRequest _build() {
    final _$result = _$v ??
        _$MediaMatchRequest._(
          pdq: BuiltValueNullFieldError.checkNotNull(
              pdq, r'MediaMatchRequest', 'pdq'),
          maxDistance: maxDistance,
          limit: limit,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_coverage_bucket.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialCoverageBucket extends SocialCoverageBucket {
  @override
  final DateTime hour;
  @override
  final int postsSeen;
  @override
  final int? denominator;
  @override
  final bool complete;

  factory _$SocialCoverageBucket(
          [void Function(SocialCoverageBucketBuilder)? updates]) =>
      (SocialCoverageBucketBuilder()..update(updates))._build();

  _$SocialCoverageBucket._(
      {required this.hour,
      required this.postsSeen,
      this.denominator,
      required this.complete})
      : super._();
  @override
  SocialCoverageBucket rebuild(
          void Function(SocialCoverageBucketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialCoverageBucketBuilder toBuilder() =>
      SocialCoverageBucketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialCoverageBucket &&
        hour == other.hour &&
        postsSeen == other.postsSeen &&
        denominator == other.denominator &&
        complete == other.complete;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hour.hashCode);
    _$hash = $jc(_$hash, postsSeen.hashCode);
    _$hash = $jc(_$hash, denominator.hashCode);
    _$hash = $jc(_$hash, complete.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialCoverageBucket')
          ..add('hour', hour)
          ..add('postsSeen', postsSeen)
          ..add('denominator', denominator)
          ..add('complete', complete))
        .toString();
  }
}

class SocialCoverageBucketBuilder
    implements Builder<SocialCoverageBucket, SocialCoverageBucketBuilder> {
  _$SocialCoverageBucket? _$v;

  DateTime? _hour;
  DateTime? get hour => _$this._hour;
  set hour(DateTime? hour) => _$this._hour = hour;

  int? _postsSeen;
  int? get postsSeen => _$this._postsSeen;
  set postsSeen(int? postsSeen) => _$this._postsSeen = postsSeen;

  int? _denominator;
  int? get denominator => _$this._denominator;
  set denominator(int? denominator) => _$this._denominator = denominator;

  bool? _complete;
  bool? get complete => _$this._complete;
  set complete(bool? complete) => _$this._complete = complete;

  SocialCoverageBucketBuilder() {
    SocialCoverageBucket._defaults(this);
  }

  SocialCoverageBucketBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hour = $v.hour;
      _postsSeen = $v.postsSeen;
      _denominator = $v.denominator;
      _complete = $v.complete;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialCoverageBucket other) {
    _$v = other as _$SocialCoverageBucket;
  }

  @override
  void update(void Function(SocialCoverageBucketBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialCoverageBucket build() => _build();

  _$SocialCoverageBucket _build() {
    final _$result = _$v ??
        _$SocialCoverageBucket._(
          hour: BuiltValueNullFieldError.checkNotNull(
              hour, r'SocialCoverageBucket', 'hour'),
          postsSeen: BuiltValueNullFieldError.checkNotNull(
              postsSeen, r'SocialCoverageBucket', 'postsSeen'),
          denominator: denominator,
          complete: BuiltValueNullFieldError.checkNotNull(
              complete, r'SocialCoverageBucket', 'complete'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

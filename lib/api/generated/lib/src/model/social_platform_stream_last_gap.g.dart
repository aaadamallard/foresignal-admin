// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_platform_stream_last_gap.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialPlatformStreamLastGap extends SocialPlatformStreamLastGap {
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final bool replayed;

  factory _$SocialPlatformStreamLastGap(
          [void Function(SocialPlatformStreamLastGapBuilder)? updates]) =>
      (SocialPlatformStreamLastGapBuilder()..update(updates))._build();

  _$SocialPlatformStreamLastGap._(
      {required this.from, required this.to, required this.replayed})
      : super._();
  @override
  SocialPlatformStreamLastGap rebuild(
          void Function(SocialPlatformStreamLastGapBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialPlatformStreamLastGapBuilder toBuilder() =>
      SocialPlatformStreamLastGapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialPlatformStreamLastGap &&
        from == other.from &&
        to == other.to &&
        replayed == other.replayed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, replayed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialPlatformStreamLastGap')
          ..add('from', from)
          ..add('to', to)
          ..add('replayed', replayed))
        .toString();
  }
}

class SocialPlatformStreamLastGapBuilder
    implements
        Builder<SocialPlatformStreamLastGap,
            SocialPlatformStreamLastGapBuilder> {
  _$SocialPlatformStreamLastGap? _$v;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  bool? _replayed;
  bool? get replayed => _$this._replayed;
  set replayed(bool? replayed) => _$this._replayed = replayed;

  SocialPlatformStreamLastGapBuilder() {
    SocialPlatformStreamLastGap._defaults(this);
  }

  SocialPlatformStreamLastGapBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _replayed = $v.replayed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialPlatformStreamLastGap other) {
    _$v = other as _$SocialPlatformStreamLastGap;
  }

  @override
  void update(void Function(SocialPlatformStreamLastGapBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialPlatformStreamLastGap build() => _build();

  _$SocialPlatformStreamLastGap _build() {
    final _$result = _$v ??
        _$SocialPlatformStreamLastGap._(
          from: BuiltValueNullFieldError.checkNotNull(
              from, r'SocialPlatformStreamLastGap', 'from'),
          to: BuiltValueNullFieldError.checkNotNull(
              to, r'SocialPlatformStreamLastGap', 'to'),
          replayed: BuiltValueNullFieldError.checkNotNull(
              replayed, r'SocialPlatformStreamLastGap', 'replayed'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

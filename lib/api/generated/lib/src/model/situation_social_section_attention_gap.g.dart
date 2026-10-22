// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_social_section_attention_gap.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationSocialSectionAttentionGap
    extends SituationSocialSectionAttentionGap {
  @override
  final String findingId;
  @override
  final num expected;
  @override
  final num observed;
  @override
  final BuiltList<String>? platforms;

  factory _$SituationSocialSectionAttentionGap(
          [void Function(SituationSocialSectionAttentionGapBuilder)?
              updates]) =>
      (SituationSocialSectionAttentionGapBuilder()..update(updates))._build();

  _$SituationSocialSectionAttentionGap._(
      {required this.findingId,
      required this.expected,
      required this.observed,
      this.platforms})
      : super._();
  @override
  SituationSocialSectionAttentionGap rebuild(
          void Function(SituationSocialSectionAttentionGapBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationSocialSectionAttentionGapBuilder toBuilder() =>
      SituationSocialSectionAttentionGapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationSocialSectionAttentionGap &&
        findingId == other.findingId &&
        expected == other.expected &&
        observed == other.observed &&
        platforms == other.platforms;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, findingId.hashCode);
    _$hash = $jc(_$hash, expected.hashCode);
    _$hash = $jc(_$hash, observed.hashCode);
    _$hash = $jc(_$hash, platforms.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationSocialSectionAttentionGap')
          ..add('findingId', findingId)
          ..add('expected', expected)
          ..add('observed', observed)
          ..add('platforms', platforms))
        .toString();
  }
}

class SituationSocialSectionAttentionGapBuilder
    implements
        Builder<SituationSocialSectionAttentionGap,
            SituationSocialSectionAttentionGapBuilder> {
  _$SituationSocialSectionAttentionGap? _$v;

  String? _findingId;
  String? get findingId => _$this._findingId;
  set findingId(String? findingId) => _$this._findingId = findingId;

  num? _expected;
  num? get expected => _$this._expected;
  set expected(num? expected) => _$this._expected = expected;

  num? _observed;
  num? get observed => _$this._observed;
  set observed(num? observed) => _$this._observed = observed;

  ListBuilder<String>? _platforms;
  ListBuilder<String> get platforms =>
      _$this._platforms ??= ListBuilder<String>();
  set platforms(ListBuilder<String>? platforms) =>
      _$this._platforms = platforms;

  SituationSocialSectionAttentionGapBuilder() {
    SituationSocialSectionAttentionGap._defaults(this);
  }

  SituationSocialSectionAttentionGapBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _findingId = $v.findingId;
      _expected = $v.expected;
      _observed = $v.observed;
      _platforms = $v.platforms?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationSocialSectionAttentionGap other) {
    _$v = other as _$SituationSocialSectionAttentionGap;
  }

  @override
  void update(
      void Function(SituationSocialSectionAttentionGapBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationSocialSectionAttentionGap build() => _build();

  _$SituationSocialSectionAttentionGap _build() {
    _$SituationSocialSectionAttentionGap _$result;
    try {
      _$result = _$v ??
          _$SituationSocialSectionAttentionGap._(
            findingId: BuiltValueNullFieldError.checkNotNull(
                findingId, r'SituationSocialSectionAttentionGap', 'findingId'),
            expected: BuiltValueNullFieldError.checkNotNull(
                expected, r'SituationSocialSectionAttentionGap', 'expected'),
            observed: BuiltValueNullFieldError.checkNotNull(
                observed, r'SituationSocialSectionAttentionGap', 'observed'),
            platforms: _platforms?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'platforms';
        _platforms?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SituationSocialSectionAttentionGap', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

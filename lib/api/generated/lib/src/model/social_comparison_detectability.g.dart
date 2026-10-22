// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_comparison_detectability.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialComparisonDetectability extends SocialComparisonDetectability {
  @override
  final num p;
  @override
  final num lo;
  @override
  final num hi;
  @override
  final BuiltList<String> methods;
  @override
  final bool ok;
  @override
  final String? reason;

  factory _$SocialComparisonDetectability([
    void Function(SocialComparisonDetectabilityBuilder)? updates,
  ]) => (SocialComparisonDetectabilityBuilder()..update(updates))._build();

  _$SocialComparisonDetectability._({
    required this.p,
    required this.lo,
    required this.hi,
    required this.methods,
    required this.ok,
    this.reason,
  }) : super._();
  @override
  SocialComparisonDetectability rebuild(
    void Function(SocialComparisonDetectabilityBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialComparisonDetectabilityBuilder toBuilder() =>
      SocialComparisonDetectabilityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialComparisonDetectability &&
        p == other.p &&
        lo == other.lo &&
        hi == other.hi &&
        methods == other.methods &&
        ok == other.ok &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, p.hashCode);
    _$hash = $jc(_$hash, lo.hashCode);
    _$hash = $jc(_$hash, hi.hashCode);
    _$hash = $jc(_$hash, methods.hashCode);
    _$hash = $jc(_$hash, ok.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialComparisonDetectability')
          ..add('p', p)
          ..add('lo', lo)
          ..add('hi', hi)
          ..add('methods', methods)
          ..add('ok', ok)
          ..add('reason', reason))
        .toString();
  }
}

class SocialComparisonDetectabilityBuilder
    implements
        Builder<
          SocialComparisonDetectability,
          SocialComparisonDetectabilityBuilder
        > {
  _$SocialComparisonDetectability? _$v;

  num? _p;
  num? get p => _$this._p;
  set p(num? p) => _$this._p = p;

  num? _lo;
  num? get lo => _$this._lo;
  set lo(num? lo) => _$this._lo = lo;

  num? _hi;
  num? get hi => _$this._hi;
  set hi(num? hi) => _$this._hi = hi;

  ListBuilder<String>? _methods;
  ListBuilder<String> get methods => _$this._methods ??= ListBuilder<String>();
  set methods(ListBuilder<String>? methods) => _$this._methods = methods;

  bool? _ok;
  bool? get ok => _$this._ok;
  set ok(bool? ok) => _$this._ok = ok;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  SocialComparisonDetectabilityBuilder() {
    SocialComparisonDetectability._defaults(this);
  }

  SocialComparisonDetectabilityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _p = $v.p;
      _lo = $v.lo;
      _hi = $v.hi;
      _methods = $v.methods.toBuilder();
      _ok = $v.ok;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialComparisonDetectability other) {
    _$v = other as _$SocialComparisonDetectability;
  }

  @override
  void update(void Function(SocialComparisonDetectabilityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialComparisonDetectability build() => _build();

  _$SocialComparisonDetectability _build() {
    _$SocialComparisonDetectability _$result;
    try {
      _$result =
          _$v ??
          _$SocialComparisonDetectability._(
            p: BuiltValueNullFieldError.checkNotNull(
              p,
              r'SocialComparisonDetectability',
              'p',
            ),
            lo: BuiltValueNullFieldError.checkNotNull(
              lo,
              r'SocialComparisonDetectability',
              'lo',
            ),
            hi: BuiltValueNullFieldError.checkNotNull(
              hi,
              r'SocialComparisonDetectability',
              'hi',
            ),
            methods: methods.build(),
            ok: BuiltValueNullFieldError.checkNotNull(
              ok,
              r'SocialComparisonDetectability',
              'ok',
            ),
            reason: reason,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'methods';
        methods.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SocialComparisonDetectability',
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

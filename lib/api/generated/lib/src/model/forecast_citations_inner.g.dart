// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_citations_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastCitationsInner extends ForecastCitationsInner {
  @override
  final String ref;
  @override
  final String? quote;
  @override
  final String? claim;

  factory _$ForecastCitationsInner([
    void Function(ForecastCitationsInnerBuilder)? updates,
  ]) => (ForecastCitationsInnerBuilder()..update(updates))._build();

  _$ForecastCitationsInner._({required this.ref, this.quote, this.claim})
    : super._();
  @override
  ForecastCitationsInner rebuild(
    void Function(ForecastCitationsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ForecastCitationsInnerBuilder toBuilder() =>
      ForecastCitationsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastCitationsInner &&
        ref == other.ref &&
        quote == other.quote &&
        claim == other.claim;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, quote.hashCode);
    _$hash = $jc(_$hash, claim.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastCitationsInner')
          ..add('ref', ref)
          ..add('quote', quote)
          ..add('claim', claim))
        .toString();
  }
}

class ForecastCitationsInnerBuilder
    implements Builder<ForecastCitationsInner, ForecastCitationsInnerBuilder> {
  _$ForecastCitationsInner? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _quote;
  String? get quote => _$this._quote;
  set quote(String? quote) => _$this._quote = quote;

  String? _claim;
  String? get claim => _$this._claim;
  set claim(String? claim) => _$this._claim = claim;

  ForecastCitationsInnerBuilder() {
    ForecastCitationsInner._defaults(this);
  }

  ForecastCitationsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _quote = $v.quote;
      _claim = $v.claim;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastCitationsInner other) {
    _$v = other as _$ForecastCitationsInner;
  }

  @override
  void update(void Function(ForecastCitationsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastCitationsInner build() => _build();

  _$ForecastCitationsInner _build() {
    final _$result =
        _$v ??
        _$ForecastCitationsInner._(
          ref: BuiltValueNullFieldError.checkNotNull(
            ref,
            r'ForecastCitationsInner',
            'ref',
          ),
          quote: quote,
          claim: claim,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

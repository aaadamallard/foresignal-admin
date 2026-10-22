// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_platform_price.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialPlatformPrice extends SocialPlatformPrice {
  @override
  final String item;
  @override
  final num usd;
  @override
  final int? per;

  factory _$SocialPlatformPrice([
    void Function(SocialPlatformPriceBuilder)? updates,
  ]) => (SocialPlatformPriceBuilder()..update(updates))._build();

  _$SocialPlatformPrice._({required this.item, required this.usd, this.per})
    : super._();
  @override
  SocialPlatformPrice rebuild(
    void Function(SocialPlatformPriceBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialPlatformPriceBuilder toBuilder() =>
      SocialPlatformPriceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialPlatformPrice &&
        item == other.item &&
        usd == other.usd &&
        per == other.per;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, item.hashCode);
    _$hash = $jc(_$hash, usd.hashCode);
    _$hash = $jc(_$hash, per.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialPlatformPrice')
          ..add('item', item)
          ..add('usd', usd)
          ..add('per', per))
        .toString();
  }
}

class SocialPlatformPriceBuilder
    implements Builder<SocialPlatformPrice, SocialPlatformPriceBuilder> {
  _$SocialPlatformPrice? _$v;

  String? _item;
  String? get item => _$this._item;
  set item(String? item) => _$this._item = item;

  num? _usd;
  num? get usd => _$this._usd;
  set usd(num? usd) => _$this._usd = usd;

  int? _per;
  int? get per => _$this._per;
  set per(int? per) => _$this._per = per;

  SocialPlatformPriceBuilder() {
    SocialPlatformPrice._defaults(this);
  }

  SocialPlatformPriceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item;
      _usd = $v.usd;
      _per = $v.per;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialPlatformPrice other) {
    _$v = other as _$SocialPlatformPrice;
  }

  @override
  void update(void Function(SocialPlatformPriceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialPlatformPrice build() => _build();

  _$SocialPlatformPrice _build() {
    final _$result =
        _$v ??
        _$SocialPlatformPrice._(
          item: BuiltValueNullFieldError.checkNotNull(
            item,
            r'SocialPlatformPrice',
            'item',
          ),
          usd: BuiltValueNullFieldError.checkNotNull(
            usd,
            r'SocialPlatformPrice',
            'usd',
          ),
          per: per,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

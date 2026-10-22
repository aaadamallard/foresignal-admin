// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_request_offer_share.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessRequestOfferShare extends AccessRequestOfferShare {
  @override
  final String chronicleId;

  factory _$AccessRequestOfferShare(
          [void Function(AccessRequestOfferShareBuilder)? updates]) =>
      (AccessRequestOfferShareBuilder()..update(updates))._build();

  _$AccessRequestOfferShare._({required this.chronicleId}) : super._();
  @override
  AccessRequestOfferShare rebuild(
          void Function(AccessRequestOfferShareBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessRequestOfferShareBuilder toBuilder() =>
      AccessRequestOfferShareBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessRequestOfferShare && chronicleId == other.chronicleId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, chronicleId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccessRequestOfferShare')
          ..add('chronicleId', chronicleId))
        .toString();
  }
}

class AccessRequestOfferShareBuilder
    implements
        Builder<AccessRequestOfferShare, AccessRequestOfferShareBuilder> {
  _$AccessRequestOfferShare? _$v;

  String? _chronicleId;
  String? get chronicleId => _$this._chronicleId;
  set chronicleId(String? chronicleId) => _$this._chronicleId = chronicleId;

  AccessRequestOfferShareBuilder() {
    AccessRequestOfferShare._defaults(this);
  }

  AccessRequestOfferShareBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chronicleId = $v.chronicleId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessRequestOfferShare other) {
    _$v = other as _$AccessRequestOfferShare;
  }

  @override
  void update(void Function(AccessRequestOfferShareBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessRequestOfferShare build() => _build();

  _$AccessRequestOfferShare _build() {
    final _$result = _$v ??
        _$AccessRequestOfferShare._(
          chronicleId: BuiltValueNullFieldError.checkNotNull(
              chronicleId, r'AccessRequestOfferShare', 'chronicleId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

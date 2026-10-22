// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_vapid_public_key200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetVapidPublicKey200Response extends GetVapidPublicKey200Response {
  @override
  final String publicKey;

  factory _$GetVapidPublicKey200Response([
    void Function(GetVapidPublicKey200ResponseBuilder)? updates,
  ]) => (GetVapidPublicKey200ResponseBuilder()..update(updates))._build();

  _$GetVapidPublicKey200Response._({required this.publicKey}) : super._();
  @override
  GetVapidPublicKey200Response rebuild(
    void Function(GetVapidPublicKey200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetVapidPublicKey200ResponseBuilder toBuilder() =>
      GetVapidPublicKey200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVapidPublicKey200Response &&
        publicKey == other.publicKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publicKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GetVapidPublicKey200Response',
    )..add('publicKey', publicKey)).toString();
  }
}

class GetVapidPublicKey200ResponseBuilder
    implements
        Builder<
          GetVapidPublicKey200Response,
          GetVapidPublicKey200ResponseBuilder
        > {
  _$GetVapidPublicKey200Response? _$v;

  String? _publicKey;
  String? get publicKey => _$this._publicKey;
  set publicKey(String? publicKey) => _$this._publicKey = publicKey;

  GetVapidPublicKey200ResponseBuilder() {
    GetVapidPublicKey200Response._defaults(this);
  }

  GetVapidPublicKey200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publicKey = $v.publicKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetVapidPublicKey200Response other) {
    _$v = other as _$GetVapidPublicKey200Response;
  }

  @override
  void update(void Function(GetVapidPublicKey200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVapidPublicKey200Response build() => _build();

  _$GetVapidPublicKey200Response _build() {
    final _$result =
        _$v ??
        _$GetVapidPublicKey200Response._(
          publicKey: BuiltValueNullFieldError.checkNotNull(
            publicKey,
            r'GetVapidPublicKey200Response',
            'publicKey',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

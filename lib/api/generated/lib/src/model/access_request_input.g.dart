// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_request_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessRequestInput extends AccessRequestInput {
  @override
  final String? message;
  @override
  final String? offerShare;

  factory _$AccessRequestInput([
    void Function(AccessRequestInputBuilder)? updates,
  ]) => (AccessRequestInputBuilder()..update(updates))._build();

  _$AccessRequestInput._({this.message, this.offerShare}) : super._();
  @override
  AccessRequestInput rebuild(
    void Function(AccessRequestInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AccessRequestInputBuilder toBuilder() =>
      AccessRequestInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessRequestInput &&
        message == other.message &&
        offerShare == other.offerShare;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, offerShare.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccessRequestInput')
          ..add('message', message)
          ..add('offerShare', offerShare))
        .toString();
  }
}

class AccessRequestInputBuilder
    implements Builder<AccessRequestInput, AccessRequestInputBuilder> {
  _$AccessRequestInput? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _offerShare;
  String? get offerShare => _$this._offerShare;
  set offerShare(String? offerShare) => _$this._offerShare = offerShare;

  AccessRequestInputBuilder() {
    AccessRequestInput._defaults(this);
  }

  AccessRequestInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _offerShare = $v.offerShare;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessRequestInput other) {
    _$v = other as _$AccessRequestInput;
  }

  @override
  void update(void Function(AccessRequestInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessRequestInput build() => _build();

  _$AccessRequestInput _build() {
    final _$result =
        _$v ?? _$AccessRequestInput._(message: message, offerShare: offerShare);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

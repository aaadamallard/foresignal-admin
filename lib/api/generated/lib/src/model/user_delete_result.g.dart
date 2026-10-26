// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_delete_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserDeleteResult extends UserDeleteResult {
  @override
  final String deletedUserId;
  @override
  final String ownedConfigDisposition;
  @override
  final String? reassignedTo;

  factory _$UserDeleteResult([
    void Function(UserDeleteResultBuilder)? updates,
  ]) => (UserDeleteResultBuilder()..update(updates))._build();

  _$UserDeleteResult._({
    required this.deletedUserId,
    required this.ownedConfigDisposition,
    this.reassignedTo,
  }) : super._();
  @override
  UserDeleteResult rebuild(void Function(UserDeleteResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDeleteResultBuilder toBuilder() =>
      UserDeleteResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDeleteResult &&
        deletedUserId == other.deletedUserId &&
        ownedConfigDisposition == other.ownedConfigDisposition &&
        reassignedTo == other.reassignedTo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deletedUserId.hashCode);
    _$hash = $jc(_$hash, ownedConfigDisposition.hashCode);
    _$hash = $jc(_$hash, reassignedTo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserDeleteResult')
          ..add('deletedUserId', deletedUserId)
          ..add('ownedConfigDisposition', ownedConfigDisposition)
          ..add('reassignedTo', reassignedTo))
        .toString();
  }
}

class UserDeleteResultBuilder
    implements Builder<UserDeleteResult, UserDeleteResultBuilder> {
  _$UserDeleteResult? _$v;

  String? _deletedUserId;
  String? get deletedUserId => _$this._deletedUserId;
  set deletedUserId(String? deletedUserId) =>
      _$this._deletedUserId = deletedUserId;

  String? _ownedConfigDisposition;
  String? get ownedConfigDisposition => _$this._ownedConfigDisposition;
  set ownedConfigDisposition(String? ownedConfigDisposition) =>
      _$this._ownedConfigDisposition = ownedConfigDisposition;

  String? _reassignedTo;
  String? get reassignedTo => _$this._reassignedTo;
  set reassignedTo(String? reassignedTo) => _$this._reassignedTo = reassignedTo;

  UserDeleteResultBuilder() {
    UserDeleteResult._defaults(this);
  }

  UserDeleteResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deletedUserId = $v.deletedUserId;
      _ownedConfigDisposition = $v.ownedConfigDisposition;
      _reassignedTo = $v.reassignedTo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserDeleteResult other) {
    _$v = other as _$UserDeleteResult;
  }

  @override
  void update(void Function(UserDeleteResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserDeleteResult build() => _build();

  _$UserDeleteResult _build() {
    final _$result =
        _$v ??
        _$UserDeleteResult._(
          deletedUserId: BuiltValueNullFieldError.checkNotNull(
            deletedUserId,
            r'UserDeleteResult',
            'deletedUserId',
          ),
          ownedConfigDisposition: BuiltValueNullFieldError.checkNotNull(
            ownedConfigDisposition,
            r'UserDeleteResult',
            'ownedConfigDisposition',
          ),
          reassignedTo: reassignedTo,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_restore_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupRestoreRequest extends BackupRestoreRequest {
  @override
  final bool confirm;

  factory _$BackupRestoreRequest([
    void Function(BackupRestoreRequestBuilder)? updates,
  ]) => (BackupRestoreRequestBuilder()..update(updates))._build();

  _$BackupRestoreRequest._({required this.confirm}) : super._();
  @override
  BackupRestoreRequest rebuild(
    void Function(BackupRestoreRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BackupRestoreRequestBuilder toBuilder() =>
      BackupRestoreRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackupRestoreRequest && confirm == other.confirm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, confirm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'BackupRestoreRequest',
    )..add('confirm', confirm)).toString();
  }
}

class BackupRestoreRequestBuilder
    implements Builder<BackupRestoreRequest, BackupRestoreRequestBuilder> {
  _$BackupRestoreRequest? _$v;

  bool? _confirm;
  bool? get confirm => _$this._confirm;
  set confirm(bool? confirm) => _$this._confirm = confirm;

  BackupRestoreRequestBuilder() {
    BackupRestoreRequest._defaults(this);
  }

  BackupRestoreRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _confirm = $v.confirm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BackupRestoreRequest other) {
    _$v = other as _$BackupRestoreRequest;
  }

  @override
  void update(void Function(BackupRestoreRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackupRestoreRequest build() => _build();

  _$BackupRestoreRequest _build() {
    final _$result =
        _$v ??
        _$BackupRestoreRequest._(
          confirm: BuiltValueNullFieldError.checkNotNull(
            confirm,
            r'BackupRestoreRequest',
            'confirm',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive_restore_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArchiveRestoreRequest extends ArchiveRestoreRequest {
  @override
  final bool confirm;

  factory _$ArchiveRestoreRequest([
    void Function(ArchiveRestoreRequestBuilder)? updates,
  ]) => (ArchiveRestoreRequestBuilder()..update(updates))._build();

  _$ArchiveRestoreRequest._({required this.confirm}) : super._();
  @override
  ArchiveRestoreRequest rebuild(
    void Function(ArchiveRestoreRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ArchiveRestoreRequestBuilder toBuilder() =>
      ArchiveRestoreRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArchiveRestoreRequest && confirm == other.confirm;
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
      r'ArchiveRestoreRequest',
    )..add('confirm', confirm)).toString();
  }
}

class ArchiveRestoreRequestBuilder
    implements Builder<ArchiveRestoreRequest, ArchiveRestoreRequestBuilder> {
  _$ArchiveRestoreRequest? _$v;

  bool? _confirm;
  bool? get confirm => _$this._confirm;
  set confirm(bool? confirm) => _$this._confirm = confirm;

  ArchiveRestoreRequestBuilder() {
    ArchiveRestoreRequest._defaults(this);
  }

  ArchiveRestoreRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _confirm = $v.confirm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArchiveRestoreRequest other) {
    _$v = other as _$ArchiveRestoreRequest;
  }

  @override
  void update(void Function(ArchiveRestoreRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArchiveRestoreRequest build() => _build();

  _$ArchiveRestoreRequest _build() {
    final _$result =
        _$v ??
        _$ArchiveRestoreRequest._(
          confirm: BuiltValueNullFieldError.checkNotNull(
            confirm,
            r'ArchiveRestoreRequest',
            'confirm',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

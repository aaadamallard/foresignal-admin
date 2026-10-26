// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_run_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupRunRequest extends BackupRunRequest {
  @override
  final String? type;
  @override
  final String? label;

  factory _$BackupRunRequest([
    void Function(BackupRunRequestBuilder)? updates,
  ]) => (BackupRunRequestBuilder()..update(updates))._build();

  _$BackupRunRequest._({this.type, this.label}) : super._();
  @override
  BackupRunRequest rebuild(void Function(BackupRunRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackupRunRequestBuilder toBuilder() =>
      BackupRunRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackupRunRequest &&
        type == other.type &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BackupRunRequest')
          ..add('type', type)
          ..add('label', label))
        .toString();
  }
}

class BackupRunRequestBuilder
    implements Builder<BackupRunRequest, BackupRunRequestBuilder> {
  _$BackupRunRequest? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  BackupRunRequestBuilder() {
    BackupRunRequest._defaults(this);
  }

  BackupRunRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BackupRunRequest other) {
    _$v = other as _$BackupRunRequest;
  }

  @override
  void update(void Function(BackupRunRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackupRunRequest build() => _build();

  _$BackupRunRequest _build() {
    final _$result = _$v ?? _$BackupRunRequest._(type: type, label: label);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

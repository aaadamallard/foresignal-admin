// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retention_run_result_db_cap.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RetentionRunResultDbCap extends RetentionRunResultDbCap {
  @override
  final int? capBytes;
  @override
  final int? sizeBeforeBytes;
  @override
  final int? sizeAfterBytes;
  @override
  final int? bytesReclaimed;
  @override
  final int? windowDays;
  @override
  final int? steps;
  @override
  final String? action;
  @override
  final BuiltMap<String, int>? deleted;

  factory _$RetentionRunResultDbCap([
    void Function(RetentionRunResultDbCapBuilder)? updates,
  ]) => (RetentionRunResultDbCapBuilder()..update(updates))._build();

  _$RetentionRunResultDbCap._({
    this.capBytes,
    this.sizeBeforeBytes,
    this.sizeAfterBytes,
    this.bytesReclaimed,
    this.windowDays,
    this.steps,
    this.action,
    this.deleted,
  }) : super._();
  @override
  RetentionRunResultDbCap rebuild(
    void Function(RetentionRunResultDbCapBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RetentionRunResultDbCapBuilder toBuilder() =>
      RetentionRunResultDbCapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RetentionRunResultDbCap &&
        capBytes == other.capBytes &&
        sizeBeforeBytes == other.sizeBeforeBytes &&
        sizeAfterBytes == other.sizeAfterBytes &&
        bytesReclaimed == other.bytesReclaimed &&
        windowDays == other.windowDays &&
        steps == other.steps &&
        action == other.action &&
        deleted == other.deleted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capBytes.hashCode);
    _$hash = $jc(_$hash, sizeBeforeBytes.hashCode);
    _$hash = $jc(_$hash, sizeAfterBytes.hashCode);
    _$hash = $jc(_$hash, bytesReclaimed.hashCode);
    _$hash = $jc(_$hash, windowDays.hashCode);
    _$hash = $jc(_$hash, steps.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, deleted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RetentionRunResultDbCap')
          ..add('capBytes', capBytes)
          ..add('sizeBeforeBytes', sizeBeforeBytes)
          ..add('sizeAfterBytes', sizeAfterBytes)
          ..add('bytesReclaimed', bytesReclaimed)
          ..add('windowDays', windowDays)
          ..add('steps', steps)
          ..add('action', action)
          ..add('deleted', deleted))
        .toString();
  }
}

class RetentionRunResultDbCapBuilder
    implements
        Builder<RetentionRunResultDbCap, RetentionRunResultDbCapBuilder> {
  _$RetentionRunResultDbCap? _$v;

  int? _capBytes;
  int? get capBytes => _$this._capBytes;
  set capBytes(int? capBytes) => _$this._capBytes = capBytes;

  int? _sizeBeforeBytes;
  int? get sizeBeforeBytes => _$this._sizeBeforeBytes;
  set sizeBeforeBytes(int? sizeBeforeBytes) =>
      _$this._sizeBeforeBytes = sizeBeforeBytes;

  int? _sizeAfterBytes;
  int? get sizeAfterBytes => _$this._sizeAfterBytes;
  set sizeAfterBytes(int? sizeAfterBytes) =>
      _$this._sizeAfterBytes = sizeAfterBytes;

  int? _bytesReclaimed;
  int? get bytesReclaimed => _$this._bytesReclaimed;
  set bytesReclaimed(int? bytesReclaimed) =>
      _$this._bytesReclaimed = bytesReclaimed;

  int? _windowDays;
  int? get windowDays => _$this._windowDays;
  set windowDays(int? windowDays) => _$this._windowDays = windowDays;

  int? _steps;
  int? get steps => _$this._steps;
  set steps(int? steps) => _$this._steps = steps;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  MapBuilder<String, int>? _deleted;
  MapBuilder<String, int> get deleted =>
      _$this._deleted ??= MapBuilder<String, int>();
  set deleted(MapBuilder<String, int>? deleted) => _$this._deleted = deleted;

  RetentionRunResultDbCapBuilder() {
    RetentionRunResultDbCap._defaults(this);
  }

  RetentionRunResultDbCapBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capBytes = $v.capBytes;
      _sizeBeforeBytes = $v.sizeBeforeBytes;
      _sizeAfterBytes = $v.sizeAfterBytes;
      _bytesReclaimed = $v.bytesReclaimed;
      _windowDays = $v.windowDays;
      _steps = $v.steps;
      _action = $v.action;
      _deleted = $v.deleted?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RetentionRunResultDbCap other) {
    _$v = other as _$RetentionRunResultDbCap;
  }

  @override
  void update(void Function(RetentionRunResultDbCapBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RetentionRunResultDbCap build() => _build();

  _$RetentionRunResultDbCap _build() {
    _$RetentionRunResultDbCap _$result;
    try {
      _$result =
          _$v ??
          _$RetentionRunResultDbCap._(
            capBytes: capBytes,
            sizeBeforeBytes: sizeBeforeBytes,
            sizeAfterBytes: sizeAfterBytes,
            bytesReclaimed: bytesReclaimed,
            windowDays: windowDays,
            steps: steps,
            action: action,
            deleted: _deleted?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleted';
        _deleted?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RetentionRunResultDbCap',
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

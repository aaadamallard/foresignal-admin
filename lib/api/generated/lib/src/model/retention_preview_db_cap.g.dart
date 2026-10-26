// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retention_preview_db_cap.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RetentionPreviewDbCap extends RetentionPreviewDbCap {
  @override
  final int? capBytes;
  @override
  final int? sizeBytes;
  @override
  final bool? exceeded;
  @override
  final int? windowDays;
  @override
  final bool? overwriteOldest;

  factory _$RetentionPreviewDbCap([
    void Function(RetentionPreviewDbCapBuilder)? updates,
  ]) => (RetentionPreviewDbCapBuilder()..update(updates))._build();

  _$RetentionPreviewDbCap._({
    this.capBytes,
    this.sizeBytes,
    this.exceeded,
    this.windowDays,
    this.overwriteOldest,
  }) : super._();
  @override
  RetentionPreviewDbCap rebuild(
    void Function(RetentionPreviewDbCapBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RetentionPreviewDbCapBuilder toBuilder() =>
      RetentionPreviewDbCapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RetentionPreviewDbCap &&
        capBytes == other.capBytes &&
        sizeBytes == other.sizeBytes &&
        exceeded == other.exceeded &&
        windowDays == other.windowDays &&
        overwriteOldest == other.overwriteOldest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capBytes.hashCode);
    _$hash = $jc(_$hash, sizeBytes.hashCode);
    _$hash = $jc(_$hash, exceeded.hashCode);
    _$hash = $jc(_$hash, windowDays.hashCode);
    _$hash = $jc(_$hash, overwriteOldest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RetentionPreviewDbCap')
          ..add('capBytes', capBytes)
          ..add('sizeBytes', sizeBytes)
          ..add('exceeded', exceeded)
          ..add('windowDays', windowDays)
          ..add('overwriteOldest', overwriteOldest))
        .toString();
  }
}

class RetentionPreviewDbCapBuilder
    implements Builder<RetentionPreviewDbCap, RetentionPreviewDbCapBuilder> {
  _$RetentionPreviewDbCap? _$v;

  int? _capBytes;
  int? get capBytes => _$this._capBytes;
  set capBytes(int? capBytes) => _$this._capBytes = capBytes;

  int? _sizeBytes;
  int? get sizeBytes => _$this._sizeBytes;
  set sizeBytes(int? sizeBytes) => _$this._sizeBytes = sizeBytes;

  bool? _exceeded;
  bool? get exceeded => _$this._exceeded;
  set exceeded(bool? exceeded) => _$this._exceeded = exceeded;

  int? _windowDays;
  int? get windowDays => _$this._windowDays;
  set windowDays(int? windowDays) => _$this._windowDays = windowDays;

  bool? _overwriteOldest;
  bool? get overwriteOldest => _$this._overwriteOldest;
  set overwriteOldest(bool? overwriteOldest) =>
      _$this._overwriteOldest = overwriteOldest;

  RetentionPreviewDbCapBuilder() {
    RetentionPreviewDbCap._defaults(this);
  }

  RetentionPreviewDbCapBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capBytes = $v.capBytes;
      _sizeBytes = $v.sizeBytes;
      _exceeded = $v.exceeded;
      _windowDays = $v.windowDays;
      _overwriteOldest = $v.overwriteOldest;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RetentionPreviewDbCap other) {
    _$v = other as _$RetentionPreviewDbCap;
  }

  @override
  void update(void Function(RetentionPreviewDbCapBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RetentionPreviewDbCap build() => _build();

  _$RetentionPreviewDbCap _build() {
    final _$result =
        _$v ??
        _$RetentionPreviewDbCap._(
          capBytes: capBytes,
          sizeBytes: sizeBytes,
          exceeded: exceeded,
          windowDays: windowDays,
          overwriteOldest: overwriteOldest,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

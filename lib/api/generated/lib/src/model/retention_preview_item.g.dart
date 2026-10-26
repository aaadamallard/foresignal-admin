// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retention_preview_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RetentionPreviewItem extends RetentionPreviewItem {
  @override
  final String subsystem;
  @override
  final String? kind;
  @override
  final DateTime? cutoff;
  @override
  final int affectedCount;
  @override
  final int? bytesEstimate;

  factory _$RetentionPreviewItem([
    void Function(RetentionPreviewItemBuilder)? updates,
  ]) => (RetentionPreviewItemBuilder()..update(updates))._build();

  _$RetentionPreviewItem._({
    required this.subsystem,
    this.kind,
    this.cutoff,
    required this.affectedCount,
    this.bytesEstimate,
  }) : super._();
  @override
  RetentionPreviewItem rebuild(
    void Function(RetentionPreviewItemBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RetentionPreviewItemBuilder toBuilder() =>
      RetentionPreviewItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RetentionPreviewItem &&
        subsystem == other.subsystem &&
        kind == other.kind &&
        cutoff == other.cutoff &&
        affectedCount == other.affectedCount &&
        bytesEstimate == other.bytesEstimate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subsystem.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, cutoff.hashCode);
    _$hash = $jc(_$hash, affectedCount.hashCode);
    _$hash = $jc(_$hash, bytesEstimate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RetentionPreviewItem')
          ..add('subsystem', subsystem)
          ..add('kind', kind)
          ..add('cutoff', cutoff)
          ..add('affectedCount', affectedCount)
          ..add('bytesEstimate', bytesEstimate))
        .toString();
  }
}

class RetentionPreviewItemBuilder
    implements Builder<RetentionPreviewItem, RetentionPreviewItemBuilder> {
  _$RetentionPreviewItem? _$v;

  String? _subsystem;
  String? get subsystem => _$this._subsystem;
  set subsystem(String? subsystem) => _$this._subsystem = subsystem;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  DateTime? _cutoff;
  DateTime? get cutoff => _$this._cutoff;
  set cutoff(DateTime? cutoff) => _$this._cutoff = cutoff;

  int? _affectedCount;
  int? get affectedCount => _$this._affectedCount;
  set affectedCount(int? affectedCount) =>
      _$this._affectedCount = affectedCount;

  int? _bytesEstimate;
  int? get bytesEstimate => _$this._bytesEstimate;
  set bytesEstimate(int? bytesEstimate) =>
      _$this._bytesEstimate = bytesEstimate;

  RetentionPreviewItemBuilder() {
    RetentionPreviewItem._defaults(this);
  }

  RetentionPreviewItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subsystem = $v.subsystem;
      _kind = $v.kind;
      _cutoff = $v.cutoff;
      _affectedCount = $v.affectedCount;
      _bytesEstimate = $v.bytesEstimate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RetentionPreviewItem other) {
    _$v = other as _$RetentionPreviewItem;
  }

  @override
  void update(void Function(RetentionPreviewItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RetentionPreviewItem build() => _build();

  _$RetentionPreviewItem _build() {
    final _$result =
        _$v ??
        _$RetentionPreviewItem._(
          subsystem: BuiltValueNullFieldError.checkNotNull(
            subsystem,
            r'RetentionPreviewItem',
            'subsystem',
          ),
          kind: kind,
          cutoff: cutoff,
          affectedCount: BuiltValueNullFieldError.checkNotNull(
            affectedCount,
            r'RetentionPreviewItem',
            'affectedCount',
          ),
          bytesEstimate: bytesEstimate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retention_preview.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RetentionPreview extends RetentionPreview {
  @override
  final BuiltList<RetentionPreviewItem> items;
  @override
  final int totalAffected;
  @override
  final int? totalBytesEstimate;
  @override
  final DateTime generatedAt;

  factory _$RetentionPreview([
    void Function(RetentionPreviewBuilder)? updates,
  ]) => (RetentionPreviewBuilder()..update(updates))._build();

  _$RetentionPreview._({
    required this.items,
    required this.totalAffected,
    this.totalBytesEstimate,
    required this.generatedAt,
  }) : super._();
  @override
  RetentionPreview rebuild(void Function(RetentionPreviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RetentionPreviewBuilder toBuilder() =>
      RetentionPreviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RetentionPreview &&
        items == other.items &&
        totalAffected == other.totalAffected &&
        totalBytesEstimate == other.totalBytesEstimate &&
        generatedAt == other.generatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, totalAffected.hashCode);
    _$hash = $jc(_$hash, totalBytesEstimate.hashCode);
    _$hash = $jc(_$hash, generatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RetentionPreview')
          ..add('items', items)
          ..add('totalAffected', totalAffected)
          ..add('totalBytesEstimate', totalBytesEstimate)
          ..add('generatedAt', generatedAt))
        .toString();
  }
}

class RetentionPreviewBuilder
    implements Builder<RetentionPreview, RetentionPreviewBuilder> {
  _$RetentionPreview? _$v;

  ListBuilder<RetentionPreviewItem>? _items;
  ListBuilder<RetentionPreviewItem> get items =>
      _$this._items ??= ListBuilder<RetentionPreviewItem>();
  set items(ListBuilder<RetentionPreviewItem>? items) => _$this._items = items;

  int? _totalAffected;
  int? get totalAffected => _$this._totalAffected;
  set totalAffected(int? totalAffected) =>
      _$this._totalAffected = totalAffected;

  int? _totalBytesEstimate;
  int? get totalBytesEstimate => _$this._totalBytesEstimate;
  set totalBytesEstimate(int? totalBytesEstimate) =>
      _$this._totalBytesEstimate = totalBytesEstimate;

  DateTime? _generatedAt;
  DateTime? get generatedAt => _$this._generatedAt;
  set generatedAt(DateTime? generatedAt) => _$this._generatedAt = generatedAt;

  RetentionPreviewBuilder() {
    RetentionPreview._defaults(this);
  }

  RetentionPreviewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _totalAffected = $v.totalAffected;
      _totalBytesEstimate = $v.totalBytesEstimate;
      _generatedAt = $v.generatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RetentionPreview other) {
    _$v = other as _$RetentionPreview;
  }

  @override
  void update(void Function(RetentionPreviewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RetentionPreview build() => _build();

  _$RetentionPreview _build() {
    _$RetentionPreview _$result;
    try {
      _$result =
          _$v ??
          _$RetentionPreview._(
            items: items.build(),
            totalAffected: BuiltValueNullFieldError.checkNotNull(
              totalAffected,
              r'RetentionPreview',
              'totalAffected',
            ),
            totalBytesEstimate: totalBytesEstimate,
            generatedAt: BuiltValueNullFieldError.checkNotNull(
              generatedAt,
              r'RetentionPreview',
              'generatedAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RetentionPreview',
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

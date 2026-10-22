// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_candidate_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrecursorCandidatePage extends PrecursorCandidatePage {
  @override
  final BuiltList<PrecursorCandidate> items;
  @override
  final String? nextCursor;

  factory _$PrecursorCandidatePage([
    void Function(PrecursorCandidatePageBuilder)? updates,
  ]) => (PrecursorCandidatePageBuilder()..update(updates))._build();

  _$PrecursorCandidatePage._({required this.items, this.nextCursor})
    : super._();
  @override
  PrecursorCandidatePage rebuild(
    void Function(PrecursorCandidatePageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PrecursorCandidatePageBuilder toBuilder() =>
      PrecursorCandidatePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorCandidatePage &&
        items == other.items &&
        nextCursor == other.nextCursor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorCandidatePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class PrecursorCandidatePageBuilder
    implements Builder<PrecursorCandidatePage, PrecursorCandidatePageBuilder> {
  _$PrecursorCandidatePage? _$v;

  ListBuilder<PrecursorCandidate>? _items;
  ListBuilder<PrecursorCandidate> get items =>
      _$this._items ??= ListBuilder<PrecursorCandidate>();
  set items(ListBuilder<PrecursorCandidate>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  PrecursorCandidatePageBuilder() {
    PrecursorCandidatePage._defaults(this);
  }

  PrecursorCandidatePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorCandidatePage other) {
    _$v = other as _$PrecursorCandidatePage;
  }

  @override
  void update(void Function(PrecursorCandidatePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorCandidatePage build() => _build();

  _$PrecursorCandidatePage _build() {
    _$PrecursorCandidatePage _$result;
    try {
      _$result =
          _$v ??
          _$PrecursorCandidatePage._(
            items: items.build(),
            nextCursor: nextCursor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PrecursorCandidatePage',
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

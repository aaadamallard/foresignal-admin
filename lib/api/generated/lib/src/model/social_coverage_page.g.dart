// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_coverage_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialCoveragePage extends SocialCoveragePage {
  @override
  final BuiltList<SocialCoverage> items;
  @override
  final String? nextCursor;

  factory _$SocialCoveragePage(
          [void Function(SocialCoveragePageBuilder)? updates]) =>
      (SocialCoveragePageBuilder()..update(updates))._build();

  _$SocialCoveragePage._({required this.items, this.nextCursor}) : super._();
  @override
  SocialCoveragePage rebuild(
          void Function(SocialCoveragePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialCoveragePageBuilder toBuilder() =>
      SocialCoveragePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialCoveragePage &&
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
    return (newBuiltValueToStringHelper(r'SocialCoveragePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class SocialCoveragePageBuilder
    implements Builder<SocialCoveragePage, SocialCoveragePageBuilder> {
  _$SocialCoveragePage? _$v;

  ListBuilder<SocialCoverage>? _items;
  ListBuilder<SocialCoverage> get items =>
      _$this._items ??= ListBuilder<SocialCoverage>();
  set items(ListBuilder<SocialCoverage>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  SocialCoveragePageBuilder() {
    SocialCoveragePage._defaults(this);
  }

  SocialCoveragePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialCoveragePage other) {
    _$v = other as _$SocialCoveragePage;
  }

  @override
  void update(void Function(SocialCoveragePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialCoveragePage build() => _build();

  _$SocialCoveragePage _build() {
    _$SocialCoveragePage _$result;
    try {
      _$result = _$v ??
          _$SocialCoveragePage._(
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
            r'SocialCoveragePage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

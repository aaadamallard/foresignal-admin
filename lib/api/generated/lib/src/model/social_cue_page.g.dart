// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_cue_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialCuePage extends SocialCuePage {
  @override
  final BuiltList<SocialCue> items;
  @override
  final String? nextCursor;

  factory _$SocialCuePage([void Function(SocialCuePageBuilder)? updates]) =>
      (SocialCuePageBuilder()..update(updates))._build();

  _$SocialCuePage._({required this.items, this.nextCursor}) : super._();
  @override
  SocialCuePage rebuild(void Function(SocialCuePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialCuePageBuilder toBuilder() => SocialCuePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialCuePage &&
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
    return (newBuiltValueToStringHelper(r'SocialCuePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class SocialCuePageBuilder
    implements Builder<SocialCuePage, SocialCuePageBuilder> {
  _$SocialCuePage? _$v;

  ListBuilder<SocialCue>? _items;
  ListBuilder<SocialCue> get items =>
      _$this._items ??= ListBuilder<SocialCue>();
  set items(ListBuilder<SocialCue>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  SocialCuePageBuilder() {
    SocialCuePage._defaults(this);
  }

  SocialCuePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialCuePage other) {
    _$v = other as _$SocialCuePage;
  }

  @override
  void update(void Function(SocialCuePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialCuePage build() => _build();

  _$SocialCuePage _build() {
    _$SocialCuePage _$result;
    try {
      _$result = _$v ??
          _$SocialCuePage._(
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
            r'SocialCuePage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

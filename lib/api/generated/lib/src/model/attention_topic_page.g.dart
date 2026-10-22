// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attention_topic_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttentionTopicPage extends AttentionTopicPage {
  @override
  final BuiltList<AttentionTopic> items;
  @override
  final String? nextCursor;

  factory _$AttentionTopicPage(
          [void Function(AttentionTopicPageBuilder)? updates]) =>
      (AttentionTopicPageBuilder()..update(updates))._build();

  _$AttentionTopicPage._({required this.items, this.nextCursor}) : super._();
  @override
  AttentionTopicPage rebuild(
          void Function(AttentionTopicPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttentionTopicPageBuilder toBuilder() =>
      AttentionTopicPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttentionTopicPage &&
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
    return (newBuiltValueToStringHelper(r'AttentionTopicPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class AttentionTopicPageBuilder
    implements Builder<AttentionTopicPage, AttentionTopicPageBuilder> {
  _$AttentionTopicPage? _$v;

  ListBuilder<AttentionTopic>? _items;
  ListBuilder<AttentionTopic> get items =>
      _$this._items ??= ListBuilder<AttentionTopic>();
  set items(ListBuilder<AttentionTopic>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  AttentionTopicPageBuilder() {
    AttentionTopicPage._defaults(this);
  }

  AttentionTopicPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttentionTopicPage other) {
    _$v = other as _$AttentionTopicPage;
  }

  @override
  void update(void Function(AttentionTopicPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttentionTopicPage build() => _build();

  _$AttentionTopicPage _build() {
    _$AttentionTopicPage _$result;
    try {
      _$result = _$v ??
          _$AttentionTopicPage._(
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
            r'AttentionTopicPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

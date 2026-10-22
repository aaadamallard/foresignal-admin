// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_thread_page_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AskThreadPageItemsInner extends AskThreadPageItemsInner {
  @override
  final String? id;
  @override
  final String? title;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? messageCount;

  factory _$AskThreadPageItemsInner(
          [void Function(AskThreadPageItemsInnerBuilder)? updates]) =>
      (AskThreadPageItemsInnerBuilder()..update(updates))._build();

  _$AskThreadPageItemsInner._(
      {this.id, this.title, this.createdAt, this.updatedAt, this.messageCount})
      : super._();
  @override
  AskThreadPageItemsInner rebuild(
          void Function(AskThreadPageItemsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AskThreadPageItemsInnerBuilder toBuilder() =>
      AskThreadPageItemsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AskThreadPageItemsInner &&
        id == other.id &&
        title == other.title &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        messageCount == other.messageCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, messageCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AskThreadPageItemsInner')
          ..add('id', id)
          ..add('title', title)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('messageCount', messageCount))
        .toString();
  }
}

class AskThreadPageItemsInnerBuilder
    implements
        Builder<AskThreadPageItemsInner, AskThreadPageItemsInnerBuilder> {
  _$AskThreadPageItemsInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  int? _messageCount;
  int? get messageCount => _$this._messageCount;
  set messageCount(int? messageCount) => _$this._messageCount = messageCount;

  AskThreadPageItemsInnerBuilder() {
    AskThreadPageItemsInner._defaults(this);
  }

  AskThreadPageItemsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _messageCount = $v.messageCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AskThreadPageItemsInner other) {
    _$v = other as _$AskThreadPageItemsInner;
  }

  @override
  void update(void Function(AskThreadPageItemsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AskThreadPageItemsInner build() => _build();

  _$AskThreadPageItemsInner _build() {
    final _$result = _$v ??
        _$AskThreadPageItemsInner._(
          id: id,
          title: title,
          createdAt: createdAt,
          updatedAt: updatedAt,
          messageCount: messageCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

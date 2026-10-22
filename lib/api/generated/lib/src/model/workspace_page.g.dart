// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkspacePage extends WorkspacePage {
  @override
  final BuiltList<Workspace> items;
  @override
  final String? nextCursor;

  factory _$WorkspacePage([void Function(WorkspacePageBuilder)? updates]) =>
      (WorkspacePageBuilder()..update(updates))._build();

  _$WorkspacePage._({required this.items, this.nextCursor}) : super._();
  @override
  WorkspacePage rebuild(void Function(WorkspacePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkspacePageBuilder toBuilder() => WorkspacePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkspacePage &&
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
    return (newBuiltValueToStringHelper(r'WorkspacePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class WorkspacePageBuilder
    implements Builder<WorkspacePage, WorkspacePageBuilder> {
  _$WorkspacePage? _$v;

  ListBuilder<Workspace>? _items;
  ListBuilder<Workspace> get items =>
      _$this._items ??= ListBuilder<Workspace>();
  set items(ListBuilder<Workspace>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  WorkspacePageBuilder() {
    WorkspacePage._defaults(this);
  }

  WorkspacePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkspacePage other) {
    _$v = other as _$WorkspacePage;
  }

  @override
  void update(void Function(WorkspacePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkspacePage build() => _build();

  _$WorkspacePage _build() {
    _$WorkspacePage _$result;
    try {
      _$result =
          _$v ??
          _$WorkspacePage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WorkspacePage',
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

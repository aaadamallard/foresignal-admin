// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prompt_template_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PromptTemplateList extends PromptTemplateList {
  @override
  final BuiltList<PromptTemplateSummary> items;

  factory _$PromptTemplateList([
    void Function(PromptTemplateListBuilder)? updates,
  ]) => (PromptTemplateListBuilder()..update(updates))._build();

  _$PromptTemplateList._({required this.items}) : super._();
  @override
  PromptTemplateList rebuild(
    void Function(PromptTemplateListBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PromptTemplateListBuilder toBuilder() =>
      PromptTemplateListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PromptTemplateList && items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'PromptTemplateList',
    )..add('items', items)).toString();
  }
}

class PromptTemplateListBuilder
    implements Builder<PromptTemplateList, PromptTemplateListBuilder> {
  _$PromptTemplateList? _$v;

  ListBuilder<PromptTemplateSummary>? _items;
  ListBuilder<PromptTemplateSummary> get items =>
      _$this._items ??= ListBuilder<PromptTemplateSummary>();
  set items(ListBuilder<PromptTemplateSummary>? items) => _$this._items = items;

  PromptTemplateListBuilder() {
    PromptTemplateList._defaults(this);
  }

  PromptTemplateListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PromptTemplateList other) {
    _$v = other as _$PromptTemplateList;
  }

  @override
  void update(void Function(PromptTemplateListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PromptTemplateList build() => _build();

  _$PromptTemplateList _build() {
    _$PromptTemplateList _$result;
    try {
      _$result = _$v ?? _$PromptTemplateList._(items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PromptTemplateList',
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

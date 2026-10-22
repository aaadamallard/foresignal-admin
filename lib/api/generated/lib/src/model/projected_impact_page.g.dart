// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projected_impact_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectedImpactPage extends ProjectedImpactPage {
  @override
  final BuiltList<ProjectedImpact> items;
  @override
  final String? nextCursor;

  factory _$ProjectedImpactPage(
          [void Function(ProjectedImpactPageBuilder)? updates]) =>
      (ProjectedImpactPageBuilder()..update(updates))._build();

  _$ProjectedImpactPage._({required this.items, this.nextCursor}) : super._();
  @override
  ProjectedImpactPage rebuild(
          void Function(ProjectedImpactPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectedImpactPageBuilder toBuilder() =>
      ProjectedImpactPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectedImpactPage &&
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
    return (newBuiltValueToStringHelper(r'ProjectedImpactPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ProjectedImpactPageBuilder
    implements Builder<ProjectedImpactPage, ProjectedImpactPageBuilder> {
  _$ProjectedImpactPage? _$v;

  ListBuilder<ProjectedImpact>? _items;
  ListBuilder<ProjectedImpact> get items =>
      _$this._items ??= ListBuilder<ProjectedImpact>();
  set items(ListBuilder<ProjectedImpact>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ProjectedImpactPageBuilder() {
    ProjectedImpactPage._defaults(this);
  }

  ProjectedImpactPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectedImpactPage other) {
    _$v = other as _$ProjectedImpactPage;
  }

  @override
  void update(void Function(ProjectedImpactPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectedImpactPage build() => _build();

  _$ProjectedImpactPage _build() {
    _$ProjectedImpactPage _$result;
    try {
      _$result = _$v ??
          _$ProjectedImpactPage._(
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
            r'ProjectedImpactPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

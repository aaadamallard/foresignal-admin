// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annotation_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnnotationPage extends AnnotationPage {
  @override
  final BuiltList<Annotation> items;
  @override
  final String? nextCursor;

  factory _$AnnotationPage([void Function(AnnotationPageBuilder)? updates]) =>
      (AnnotationPageBuilder()..update(updates))._build();

  _$AnnotationPage._({required this.items, this.nextCursor}) : super._();
  @override
  AnnotationPage rebuild(void Function(AnnotationPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnnotationPageBuilder toBuilder() => AnnotationPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnnotationPage &&
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
    return (newBuiltValueToStringHelper(r'AnnotationPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class AnnotationPageBuilder
    implements Builder<AnnotationPage, AnnotationPageBuilder> {
  _$AnnotationPage? _$v;

  ListBuilder<Annotation>? _items;
  ListBuilder<Annotation> get items =>
      _$this._items ??= ListBuilder<Annotation>();
  set items(ListBuilder<Annotation>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  AnnotationPageBuilder() {
    AnnotationPage._defaults(this);
  }

  AnnotationPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnnotationPage other) {
    _$v = other as _$AnnotationPage;
  }

  @override
  void update(void Function(AnnotationPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnnotationPage build() => _build();

  _$AnnotationPage _build() {
    _$AnnotationPage _$result;
    try {
      _$result =
          _$v ??
          _$AnnotationPage._(items: items.build(), nextCursor: nextCursor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnnotationPage',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_assign_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagAssignResult extends TagAssignResult {
  @override
  final String tagId;
  @override
  final int changed;
  @override
  final int unchanged;
  @override
  final BuiltList<TagAssignResultSkippedInner> skipped;

  factory _$TagAssignResult([void Function(TagAssignResultBuilder)? updates]) =>
      (TagAssignResultBuilder()..update(updates))._build();

  _$TagAssignResult._(
      {required this.tagId,
      required this.changed,
      required this.unchanged,
      required this.skipped})
      : super._();
  @override
  TagAssignResult rebuild(void Function(TagAssignResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagAssignResultBuilder toBuilder() => TagAssignResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagAssignResult &&
        tagId == other.tagId &&
        changed == other.changed &&
        unchanged == other.unchanged &&
        skipped == other.skipped;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tagId.hashCode);
    _$hash = $jc(_$hash, changed.hashCode);
    _$hash = $jc(_$hash, unchanged.hashCode);
    _$hash = $jc(_$hash, skipped.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TagAssignResult')
          ..add('tagId', tagId)
          ..add('changed', changed)
          ..add('unchanged', unchanged)
          ..add('skipped', skipped))
        .toString();
  }
}

class TagAssignResultBuilder
    implements Builder<TagAssignResult, TagAssignResultBuilder> {
  _$TagAssignResult? _$v;

  String? _tagId;
  String? get tagId => _$this._tagId;
  set tagId(String? tagId) => _$this._tagId = tagId;

  int? _changed;
  int? get changed => _$this._changed;
  set changed(int? changed) => _$this._changed = changed;

  int? _unchanged;
  int? get unchanged => _$this._unchanged;
  set unchanged(int? unchanged) => _$this._unchanged = unchanged;

  ListBuilder<TagAssignResultSkippedInner>? _skipped;
  ListBuilder<TagAssignResultSkippedInner> get skipped =>
      _$this._skipped ??= ListBuilder<TagAssignResultSkippedInner>();
  set skipped(ListBuilder<TagAssignResultSkippedInner>? skipped) =>
      _$this._skipped = skipped;

  TagAssignResultBuilder() {
    TagAssignResult._defaults(this);
  }

  TagAssignResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tagId = $v.tagId;
      _changed = $v.changed;
      _unchanged = $v.unchanged;
      _skipped = $v.skipped.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagAssignResult other) {
    _$v = other as _$TagAssignResult;
  }

  @override
  void update(void Function(TagAssignResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagAssignResult build() => _build();

  _$TagAssignResult _build() {
    _$TagAssignResult _$result;
    try {
      _$result = _$v ??
          _$TagAssignResult._(
            tagId: BuiltValueNullFieldError.checkNotNull(
                tagId, r'TagAssignResult', 'tagId'),
            changed: BuiltValueNullFieldError.checkNotNull(
                changed, r'TagAssignResult', 'changed'),
            unchanged: BuiltValueNullFieldError.checkNotNull(
                unchanged, r'TagAssignResult', 'unchanged'),
            skipped: skipped.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'skipped';
        skipped.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TagAssignResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

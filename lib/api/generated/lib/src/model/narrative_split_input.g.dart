// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative_split_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NarrativeSplitInput extends NarrativeSplitInput {
  @override
  final BuiltList<String> postRefs;
  @override
  final String? reason;

  factory _$NarrativeSplitInput(
          [void Function(NarrativeSplitInputBuilder)? updates]) =>
      (NarrativeSplitInputBuilder()..update(updates))._build();

  _$NarrativeSplitInput._({required this.postRefs, this.reason}) : super._();
  @override
  NarrativeSplitInput rebuild(
          void Function(NarrativeSplitInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NarrativeSplitInputBuilder toBuilder() =>
      NarrativeSplitInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NarrativeSplitInput &&
        postRefs == other.postRefs &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postRefs.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NarrativeSplitInput')
          ..add('postRefs', postRefs)
          ..add('reason', reason))
        .toString();
  }
}

class NarrativeSplitInputBuilder
    implements Builder<NarrativeSplitInput, NarrativeSplitInputBuilder> {
  _$NarrativeSplitInput? _$v;

  ListBuilder<String>? _postRefs;
  ListBuilder<String> get postRefs =>
      _$this._postRefs ??= ListBuilder<String>();
  set postRefs(ListBuilder<String>? postRefs) => _$this._postRefs = postRefs;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  NarrativeSplitInputBuilder() {
    NarrativeSplitInput._defaults(this);
  }

  NarrativeSplitInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postRefs = $v.postRefs.toBuilder();
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NarrativeSplitInput other) {
    _$v = other as _$NarrativeSplitInput;
  }

  @override
  void update(void Function(NarrativeSplitInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NarrativeSplitInput build() => _build();

  _$NarrativeSplitInput _build() {
    _$NarrativeSplitInput _$result;
    try {
      _$result = _$v ??
          _$NarrativeSplitInput._(
            postRefs: postRefs.build(),
            reason: reason,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postRefs';
        postRefs.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NarrativeSplitInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

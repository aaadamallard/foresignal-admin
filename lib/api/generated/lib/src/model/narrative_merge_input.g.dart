// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative_merge_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NarrativeMergeInput extends NarrativeMergeInput {
  @override
  final BuiltList<String> narrativeIds;
  @override
  final String? reason;

  factory _$NarrativeMergeInput([
    void Function(NarrativeMergeInputBuilder)? updates,
  ]) => (NarrativeMergeInputBuilder()..update(updates))._build();

  _$NarrativeMergeInput._({required this.narrativeIds, this.reason})
    : super._();
  @override
  NarrativeMergeInput rebuild(
    void Function(NarrativeMergeInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NarrativeMergeInputBuilder toBuilder() =>
      NarrativeMergeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NarrativeMergeInput &&
        narrativeIds == other.narrativeIds &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, narrativeIds.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NarrativeMergeInput')
          ..add('narrativeIds', narrativeIds)
          ..add('reason', reason))
        .toString();
  }
}

class NarrativeMergeInputBuilder
    implements Builder<NarrativeMergeInput, NarrativeMergeInputBuilder> {
  _$NarrativeMergeInput? _$v;

  ListBuilder<String>? _narrativeIds;
  ListBuilder<String> get narrativeIds =>
      _$this._narrativeIds ??= ListBuilder<String>();
  set narrativeIds(ListBuilder<String>? narrativeIds) =>
      _$this._narrativeIds = narrativeIds;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  NarrativeMergeInputBuilder() {
    NarrativeMergeInput._defaults(this);
  }

  NarrativeMergeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _narrativeIds = $v.narrativeIds.toBuilder();
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NarrativeMergeInput other) {
    _$v = other as _$NarrativeMergeInput;
  }

  @override
  void update(void Function(NarrativeMergeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NarrativeMergeInput build() => _build();

  _$NarrativeMergeInput _build() {
    _$NarrativeMergeInput _$result;
    try {
      _$result =
          _$v ??
          _$NarrativeMergeInput._(
            narrativeIds: narrativeIds.build(),
            reason: reason,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'narrativeIds';
        narrativeIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NarrativeMergeInput',
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

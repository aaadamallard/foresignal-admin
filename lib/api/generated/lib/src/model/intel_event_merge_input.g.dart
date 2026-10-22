// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_event_merge_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelEventMergeInput extends IntelEventMergeInput {
  @override
  final String intoId;

  factory _$IntelEventMergeInput([
    void Function(IntelEventMergeInputBuilder)? updates,
  ]) => (IntelEventMergeInputBuilder()..update(updates))._build();

  _$IntelEventMergeInput._({required this.intoId}) : super._();
  @override
  IntelEventMergeInput rebuild(
    void Function(IntelEventMergeInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelEventMergeInputBuilder toBuilder() =>
      IntelEventMergeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelEventMergeInput && intoId == other.intoId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, intoId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'IntelEventMergeInput',
    )..add('intoId', intoId)).toString();
  }
}

class IntelEventMergeInputBuilder
    implements Builder<IntelEventMergeInput, IntelEventMergeInputBuilder> {
  _$IntelEventMergeInput? _$v;

  String? _intoId;
  String? get intoId => _$this._intoId;
  set intoId(String? intoId) => _$this._intoId = intoId;

  IntelEventMergeInputBuilder() {
    IntelEventMergeInput._defaults(this);
  }

  IntelEventMergeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _intoId = $v.intoId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelEventMergeInput other) {
    _$v = other as _$IntelEventMergeInput;
  }

  @override
  void update(void Function(IntelEventMergeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelEventMergeInput build() => _build();

  _$IntelEventMergeInput _build() {
    final _$result =
        _$v ??
        _$IntelEventMergeInput._(
          intoId: BuiltValueNullFieldError.checkNotNull(
            intoId,
            r'IntelEventMergeInput',
            'intoId',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

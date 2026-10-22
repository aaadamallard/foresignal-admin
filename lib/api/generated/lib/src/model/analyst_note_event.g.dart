// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_note_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalystNoteEvent extends AnalystNoteEvent {
  @override
  final AnalystNote note;

  factory _$AnalystNoteEvent([
    void Function(AnalystNoteEventBuilder)? updates,
  ]) => (AnalystNoteEventBuilder()..update(updates))._build();

  _$AnalystNoteEvent._({required this.note}) : super._();
  @override
  AnalystNoteEvent rebuild(void Function(AnalystNoteEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalystNoteEventBuilder toBuilder() =>
      AnalystNoteEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystNoteEvent && note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AnalystNoteEvent',
    )..add('note', note)).toString();
  }
}

class AnalystNoteEventBuilder
    implements Builder<AnalystNoteEvent, AnalystNoteEventBuilder> {
  _$AnalystNoteEvent? _$v;

  AnalystNoteBuilder? _note;
  AnalystNoteBuilder get note => _$this._note ??= AnalystNoteBuilder();
  set note(AnalystNoteBuilder? note) => _$this._note = note;

  AnalystNoteEventBuilder() {
    AnalystNoteEvent._defaults(this);
  }

  AnalystNoteEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _note = $v.note.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystNoteEvent other) {
    _$v = other as _$AnalystNoteEvent;
  }

  @override
  void update(void Function(AnalystNoteEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystNoteEvent build() => _build();

  _$AnalystNoteEvent _build() {
    _$AnalystNoteEvent _$result;
    try {
      _$result = _$v ?? _$AnalystNoteEvent._(note: note.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'note';
        note.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnalystNoteEvent',
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

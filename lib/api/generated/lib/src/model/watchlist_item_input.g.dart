// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_item_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WatchlistItemInput extends WatchlistItemInput {
  @override
  final String value;
  @override
  final String? label;
  @override
  final String? notes;
  @override
  final BuiltList<String>? tags;

  factory _$WatchlistItemInput([
    void Function(WatchlistItemInputBuilder)? updates,
  ]) => (WatchlistItemInputBuilder()..update(updates))._build();

  _$WatchlistItemInput._({
    required this.value,
    this.label,
    this.notes,
    this.tags,
  }) : super._();
  @override
  WatchlistItemInput rebuild(
    void Function(WatchlistItemInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WatchlistItemInputBuilder toBuilder() =>
      WatchlistItemInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WatchlistItemInput &&
        value == other.value &&
        label == other.label &&
        notes == other.notes &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WatchlistItemInput')
          ..add('value', value)
          ..add('label', label)
          ..add('notes', notes)
          ..add('tags', tags))
        .toString();
  }
}

class WatchlistItemInputBuilder
    implements Builder<WatchlistItemInput, WatchlistItemInputBuilder> {
  _$WatchlistItemInput? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  WatchlistItemInputBuilder() {
    WatchlistItemInput._defaults(this);
  }

  WatchlistItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _label = $v.label;
      _notes = $v.notes;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WatchlistItemInput other) {
    _$v = other as _$WatchlistItemInput;
  }

  @override
  void update(void Function(WatchlistItemInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WatchlistItemInput build() => _build();

  _$WatchlistItemInput _build() {
    _$WatchlistItemInput _$result;
    try {
      _$result =
          _$v ??
          _$WatchlistItemInput._(
            value: BuiltValueNullFieldError.checkNotNull(
              value,
              r'WatchlistItemInput',
              'value',
            ),
            label: label,
            notes: notes,
            tags: _tags?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WatchlistItemInput',
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

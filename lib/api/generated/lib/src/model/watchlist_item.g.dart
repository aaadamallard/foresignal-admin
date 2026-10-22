// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WatchlistItemOriginEnum _$watchlistItemOriginEnum_manual =
    const WatchlistItemOriginEnum._('manual');
const WatchlistItemOriginEnum _$watchlistItemOriginEnum_csv =
    const WatchlistItemOriginEnum._('csv');
const WatchlistItemOriginEnum _$watchlistItemOriginEnum_json =
    const WatchlistItemOriginEnum._('json');

WatchlistItemOriginEnum _$watchlistItemOriginEnumValueOf(String name) {
  switch (name) {
    case 'manual':
      return _$watchlistItemOriginEnum_manual;
    case 'csv':
      return _$watchlistItemOriginEnum_csv;
    case 'json':
      return _$watchlistItemOriginEnum_json;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WatchlistItemOriginEnum> _$watchlistItemOriginEnumValues =
    BuiltSet<WatchlistItemOriginEnum>(const <WatchlistItemOriginEnum>[
      _$watchlistItemOriginEnum_manual,
      _$watchlistItemOriginEnum_csv,
      _$watchlistItemOriginEnum_json,
    ]);

Serializer<WatchlistItemOriginEnum> _$watchlistItemOriginEnumSerializer =
    _$WatchlistItemOriginEnumSerializer();

class _$WatchlistItemOriginEnumSerializer
    implements PrimitiveSerializer<WatchlistItemOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'manual': 'manual',
    'csv': 'csv',
    'json': 'json',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'manual': 'manual',
    'csv': 'csv',
    'json': 'json',
  };

  @override
  final Iterable<Type> types = const <Type>[WatchlistItemOriginEnum];
  @override
  final String wireName = 'WatchlistItemOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    WatchlistItemOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WatchlistItemOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WatchlistItemOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WatchlistItem extends WatchlistItem {
  @override
  final String value;
  @override
  final String? label;
  @override
  final String? notes;
  @override
  final BuiltList<String>? tags;
  @override
  final DateTime addedAt;
  @override
  final WatchlistItemOriginEnum origin;

  factory _$WatchlistItem([void Function(WatchlistItemBuilder)? updates]) =>
      (WatchlistItemBuilder()..update(updates))._build();

  _$WatchlistItem._({
    required this.value,
    this.label,
    this.notes,
    this.tags,
    required this.addedAt,
    required this.origin,
  }) : super._();
  @override
  WatchlistItem rebuild(void Function(WatchlistItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WatchlistItemBuilder toBuilder() => WatchlistItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WatchlistItem &&
        value == other.value &&
        label == other.label &&
        notes == other.notes &&
        tags == other.tags &&
        addedAt == other.addedAt &&
        origin == other.origin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WatchlistItem')
          ..add('value', value)
          ..add('label', label)
          ..add('notes', notes)
          ..add('tags', tags)
          ..add('addedAt', addedAt)
          ..add('origin', origin))
        .toString();
  }
}

class WatchlistItemBuilder
    implements Builder<WatchlistItem, WatchlistItemBuilder> {
  _$WatchlistItem? _$v;

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

  DateTime? _addedAt;
  DateTime? get addedAt => _$this._addedAt;
  set addedAt(DateTime? addedAt) => _$this._addedAt = addedAt;

  WatchlistItemOriginEnum? _origin;
  WatchlistItemOriginEnum? get origin => _$this._origin;
  set origin(WatchlistItemOriginEnum? origin) => _$this._origin = origin;

  WatchlistItemBuilder() {
    WatchlistItem._defaults(this);
  }

  WatchlistItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _label = $v.label;
      _notes = $v.notes;
      _tags = $v.tags?.toBuilder();
      _addedAt = $v.addedAt;
      _origin = $v.origin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WatchlistItem other) {
    _$v = other as _$WatchlistItem;
  }

  @override
  void update(void Function(WatchlistItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WatchlistItem build() => _build();

  _$WatchlistItem _build() {
    _$WatchlistItem _$result;
    try {
      _$result =
          _$v ??
          _$WatchlistItem._(
            value: BuiltValueNullFieldError.checkNotNull(
              value,
              r'WatchlistItem',
              'value',
            ),
            label: label,
            notes: notes,
            tags: _tags?.build(),
            addedAt: BuiltValueNullFieldError.checkNotNull(
              addedAt,
              r'WatchlistItem',
              'addedAt',
            ),
            origin: BuiltValueNullFieldError.checkNotNull(
              origin,
              r'WatchlistItem',
              'origin',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WatchlistItem',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_import_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WatchlistImportResultModeEnum _$watchlistImportResultModeEnum_merge =
    const WatchlistImportResultModeEnum._('merge');
const WatchlistImportResultModeEnum _$watchlistImportResultModeEnum_replace =
    const WatchlistImportResultModeEnum._('replace');

WatchlistImportResultModeEnum _$watchlistImportResultModeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'merge':
      return _$watchlistImportResultModeEnum_merge;
    case 'replace':
      return _$watchlistImportResultModeEnum_replace;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WatchlistImportResultModeEnum>
_$watchlistImportResultModeEnumValues = BuiltSet<WatchlistImportResultModeEnum>(
  const <WatchlistImportResultModeEnum>[
    _$watchlistImportResultModeEnum_merge,
    _$watchlistImportResultModeEnum_replace,
  ],
);

Serializer<WatchlistImportResultModeEnum>
_$watchlistImportResultModeEnumSerializer =
    _$WatchlistImportResultModeEnumSerializer();

class _$WatchlistImportResultModeEnumSerializer
    implements PrimitiveSerializer<WatchlistImportResultModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'merge': 'merge',
    'replace': 'replace',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'merge': 'merge',
    'replace': 'replace',
  };

  @override
  final Iterable<Type> types = const <Type>[WatchlistImportResultModeEnum];
  @override
  final String wireName = 'WatchlistImportResultModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    WatchlistImportResultModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WatchlistImportResultModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WatchlistImportResultModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WatchlistImportResult extends WatchlistImportResult {
  @override
  final bool dryRun;
  @override
  final WatchlistImportResultModeEnum? mode;
  @override
  final int added;
  @override
  final int updated;
  @override
  final int removed;
  @override
  final int? unchanged;
  @override
  final BuiltList<WatchlistImportResultInvalidInner> invalid;
  @override
  final int itemCount;

  factory _$WatchlistImportResult([
    void Function(WatchlistImportResultBuilder)? updates,
  ]) => (WatchlistImportResultBuilder()..update(updates))._build();

  _$WatchlistImportResult._({
    required this.dryRun,
    this.mode,
    required this.added,
    required this.updated,
    required this.removed,
    this.unchanged,
    required this.invalid,
    required this.itemCount,
  }) : super._();
  @override
  WatchlistImportResult rebuild(
    void Function(WatchlistImportResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WatchlistImportResultBuilder toBuilder() =>
      WatchlistImportResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WatchlistImportResult &&
        dryRun == other.dryRun &&
        mode == other.mode &&
        added == other.added &&
        updated == other.updated &&
        removed == other.removed &&
        unchanged == other.unchanged &&
        invalid == other.invalid &&
        itemCount == other.itemCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, added.hashCode);
    _$hash = $jc(_$hash, updated.hashCode);
    _$hash = $jc(_$hash, removed.hashCode);
    _$hash = $jc(_$hash, unchanged.hashCode);
    _$hash = $jc(_$hash, invalid.hashCode);
    _$hash = $jc(_$hash, itemCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WatchlistImportResult')
          ..add('dryRun', dryRun)
          ..add('mode', mode)
          ..add('added', added)
          ..add('updated', updated)
          ..add('removed', removed)
          ..add('unchanged', unchanged)
          ..add('invalid', invalid)
          ..add('itemCount', itemCount))
        .toString();
  }
}

class WatchlistImportResultBuilder
    implements Builder<WatchlistImportResult, WatchlistImportResultBuilder> {
  _$WatchlistImportResult? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  WatchlistImportResultModeEnum? _mode;
  WatchlistImportResultModeEnum? get mode => _$this._mode;
  set mode(WatchlistImportResultModeEnum? mode) => _$this._mode = mode;

  int? _added;
  int? get added => _$this._added;
  set added(int? added) => _$this._added = added;

  int? _updated;
  int? get updated => _$this._updated;
  set updated(int? updated) => _$this._updated = updated;

  int? _removed;
  int? get removed => _$this._removed;
  set removed(int? removed) => _$this._removed = removed;

  int? _unchanged;
  int? get unchanged => _$this._unchanged;
  set unchanged(int? unchanged) => _$this._unchanged = unchanged;

  ListBuilder<WatchlistImportResultInvalidInner>? _invalid;
  ListBuilder<WatchlistImportResultInvalidInner> get invalid =>
      _$this._invalid ??= ListBuilder<WatchlistImportResultInvalidInner>();
  set invalid(ListBuilder<WatchlistImportResultInvalidInner>? invalid) =>
      _$this._invalid = invalid;

  int? _itemCount;
  int? get itemCount => _$this._itemCount;
  set itemCount(int? itemCount) => _$this._itemCount = itemCount;

  WatchlistImportResultBuilder() {
    WatchlistImportResult._defaults(this);
  }

  WatchlistImportResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _mode = $v.mode;
      _added = $v.added;
      _updated = $v.updated;
      _removed = $v.removed;
      _unchanged = $v.unchanged;
      _invalid = $v.invalid.toBuilder();
      _itemCount = $v.itemCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WatchlistImportResult other) {
    _$v = other as _$WatchlistImportResult;
  }

  @override
  void update(void Function(WatchlistImportResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WatchlistImportResult build() => _build();

  _$WatchlistImportResult _build() {
    _$WatchlistImportResult _$result;
    try {
      _$result =
          _$v ??
          _$WatchlistImportResult._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
              dryRun,
              r'WatchlistImportResult',
              'dryRun',
            ),
            mode: mode,
            added: BuiltValueNullFieldError.checkNotNull(
              added,
              r'WatchlistImportResult',
              'added',
            ),
            updated: BuiltValueNullFieldError.checkNotNull(
              updated,
              r'WatchlistImportResult',
              'updated',
            ),
            removed: BuiltValueNullFieldError.checkNotNull(
              removed,
              r'WatchlistImportResult',
              'removed',
            ),
            unchanged: unchanged,
            invalid: invalid.build(),
            itemCount: BuiltValueNullFieldError.checkNotNull(
              itemCount,
              r'WatchlistImportResult',
              'itemCount',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'invalid';
        invalid.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WatchlistImportResult',
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

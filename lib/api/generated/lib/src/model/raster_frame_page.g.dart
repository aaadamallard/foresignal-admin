// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raster_frame_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RasterFramePage extends RasterFramePage {
  @override
  final BuiltList<RasterFrame> items;
  @override
  final String? nextCursor;
  @override
  final RasterFramePagePrefetch? prefetch;
  @override
  final DateTime serverTime;
  @override
  final DateTime? earliest;

  factory _$RasterFramePage([void Function(RasterFramePageBuilder)? updates]) =>
      (RasterFramePageBuilder()..update(updates))._build();

  _$RasterFramePage._(
      {required this.items,
      this.nextCursor,
      this.prefetch,
      required this.serverTime,
      this.earliest})
      : super._();
  @override
  RasterFramePage rebuild(void Function(RasterFramePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RasterFramePageBuilder toBuilder() => RasterFramePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RasterFramePage &&
        items == other.items &&
        nextCursor == other.nextCursor &&
        prefetch == other.prefetch &&
        serverTime == other.serverTime &&
        earliest == other.earliest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jc(_$hash, prefetch.hashCode);
    _$hash = $jc(_$hash, serverTime.hashCode);
    _$hash = $jc(_$hash, earliest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RasterFramePage')
          ..add('items', items)
          ..add('nextCursor', nextCursor)
          ..add('prefetch', prefetch)
          ..add('serverTime', serverTime)
          ..add('earliest', earliest))
        .toString();
  }
}

class RasterFramePageBuilder
    implements Builder<RasterFramePage, RasterFramePageBuilder> {
  _$RasterFramePage? _$v;

  ListBuilder<RasterFrame>? _items;
  ListBuilder<RasterFrame> get items =>
      _$this._items ??= ListBuilder<RasterFrame>();
  set items(ListBuilder<RasterFrame>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  RasterFramePagePrefetchBuilder? _prefetch;
  RasterFramePagePrefetchBuilder get prefetch =>
      _$this._prefetch ??= RasterFramePagePrefetchBuilder();
  set prefetch(RasterFramePagePrefetchBuilder? prefetch) =>
      _$this._prefetch = prefetch;

  DateTime? _serverTime;
  DateTime? get serverTime => _$this._serverTime;
  set serverTime(DateTime? serverTime) => _$this._serverTime = serverTime;

  DateTime? _earliest;
  DateTime? get earliest => _$this._earliest;
  set earliest(DateTime? earliest) => _$this._earliest = earliest;

  RasterFramePageBuilder() {
    RasterFramePage._defaults(this);
  }

  RasterFramePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _prefetch = $v.prefetch?.toBuilder();
      _serverTime = $v.serverTime;
      _earliest = $v.earliest;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RasterFramePage other) {
    _$v = other as _$RasterFramePage;
  }

  @override
  void update(void Function(RasterFramePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RasterFramePage build() => _build();

  _$RasterFramePage _build() {
    _$RasterFramePage _$result;
    try {
      _$result = _$v ??
          _$RasterFramePage._(
            items: items.build(),
            nextCursor: nextCursor,
            prefetch: _prefetch?.build(),
            serverTime: BuiltValueNullFieldError.checkNotNull(
                serverTime, r'RasterFramePage', 'serverTime'),
            earliest: earliest,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();

        _$failedField = 'prefetch';
        _prefetch?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RasterFramePage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

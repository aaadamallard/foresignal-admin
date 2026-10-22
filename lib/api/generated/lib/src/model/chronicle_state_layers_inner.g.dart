// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_state_layers_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleStateLayersInner extends ChronicleStateLayersInner {
  @override
  final String layerId;
  @override
  final String? name;
  @override
  final CaptureMode? capture;
  @override
  final int count;
  @override
  final BuiltList<ChronicleRecordVersion> items;
  @override
  final BuiltList<ChronicleStateLayersInnerRollupsInner>? rollups;
  @override
  final String? nextCursor;

  factory _$ChronicleStateLayersInner(
          [void Function(ChronicleStateLayersInnerBuilder)? updates]) =>
      (ChronicleStateLayersInnerBuilder()..update(updates))._build();

  _$ChronicleStateLayersInner._(
      {required this.layerId,
      this.name,
      this.capture,
      required this.count,
      required this.items,
      this.rollups,
      this.nextCursor})
      : super._();
  @override
  ChronicleStateLayersInner rebuild(
          void Function(ChronicleStateLayersInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleStateLayersInnerBuilder toBuilder() =>
      ChronicleStateLayersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleStateLayersInner &&
        layerId == other.layerId &&
        name == other.name &&
        capture == other.capture &&
        count == other.count &&
        items == other.items &&
        rollups == other.rollups &&
        nextCursor == other.nextCursor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, layerId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, capture.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, rollups.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleStateLayersInner')
          ..add('layerId', layerId)
          ..add('name', name)
          ..add('capture', capture)
          ..add('count', count)
          ..add('items', items)
          ..add('rollups', rollups)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ChronicleStateLayersInnerBuilder
    implements
        Builder<ChronicleStateLayersInner, ChronicleStateLayersInnerBuilder> {
  _$ChronicleStateLayersInner? _$v;

  String? _layerId;
  String? get layerId => _$this._layerId;
  set layerId(String? layerId) => _$this._layerId = layerId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CaptureModeBuilder? _capture;
  CaptureModeBuilder get capture => _$this._capture ??= CaptureModeBuilder();
  set capture(CaptureModeBuilder? capture) => _$this._capture = capture;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<ChronicleRecordVersion>? _items;
  ListBuilder<ChronicleRecordVersion> get items =>
      _$this._items ??= ListBuilder<ChronicleRecordVersion>();
  set items(ListBuilder<ChronicleRecordVersion>? items) =>
      _$this._items = items;

  ListBuilder<ChronicleStateLayersInnerRollupsInner>? _rollups;
  ListBuilder<ChronicleStateLayersInnerRollupsInner> get rollups =>
      _$this._rollups ??= ListBuilder<ChronicleStateLayersInnerRollupsInner>();
  set rollups(ListBuilder<ChronicleStateLayersInnerRollupsInner>? rollups) =>
      _$this._rollups = rollups;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ChronicleStateLayersInnerBuilder() {
    ChronicleStateLayersInner._defaults(this);
  }

  ChronicleStateLayersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _layerId = $v.layerId;
      _name = $v.name;
      _capture = $v.capture?.toBuilder();
      _count = $v.count;
      _items = $v.items.toBuilder();
      _rollups = $v.rollups?.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleStateLayersInner other) {
    _$v = other as _$ChronicleStateLayersInner;
  }

  @override
  void update(void Function(ChronicleStateLayersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleStateLayersInner build() => _build();

  _$ChronicleStateLayersInner _build() {
    _$ChronicleStateLayersInner _$result;
    try {
      _$result = _$v ??
          _$ChronicleStateLayersInner._(
            layerId: BuiltValueNullFieldError.checkNotNull(
                layerId, r'ChronicleStateLayersInner', 'layerId'),
            name: name,
            capture: _capture?.build(),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'ChronicleStateLayersInner', 'count'),
            items: items.build(),
            rollups: _rollups?.build(),
            nextCursor: nextCursor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capture';
        _capture?.build();

        _$failedField = 'items';
        items.build();
        _$failedField = 'rollups';
        _rollups?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChronicleStateLayersInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

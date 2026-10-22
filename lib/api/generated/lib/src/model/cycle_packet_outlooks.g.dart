// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_packet_outlooks.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CyclePacketOutlooks extends CyclePacketOutlooks {
  @override
  final BuiltList<CyclePacketItem>? indexChanges;
  @override
  final BuiltList<CyclePacketItem>? windowsOutsideP10P90;

  factory _$CyclePacketOutlooks([
    void Function(CyclePacketOutlooksBuilder)? updates,
  ]) => (CyclePacketOutlooksBuilder()..update(updates))._build();

  _$CyclePacketOutlooks._({this.indexChanges, this.windowsOutsideP10P90})
    : super._();
  @override
  CyclePacketOutlooks rebuild(
    void Function(CyclePacketOutlooksBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CyclePacketOutlooksBuilder toBuilder() =>
      CyclePacketOutlooksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CyclePacketOutlooks &&
        indexChanges == other.indexChanges &&
        windowsOutsideP10P90 == other.windowsOutsideP10P90;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexChanges.hashCode);
    _$hash = $jc(_$hash, windowsOutsideP10P90.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CyclePacketOutlooks')
          ..add('indexChanges', indexChanges)
          ..add('windowsOutsideP10P90', windowsOutsideP10P90))
        .toString();
  }
}

class CyclePacketOutlooksBuilder
    implements Builder<CyclePacketOutlooks, CyclePacketOutlooksBuilder> {
  _$CyclePacketOutlooks? _$v;

  ListBuilder<CyclePacketItem>? _indexChanges;
  ListBuilder<CyclePacketItem> get indexChanges =>
      _$this._indexChanges ??= ListBuilder<CyclePacketItem>();
  set indexChanges(ListBuilder<CyclePacketItem>? indexChanges) =>
      _$this._indexChanges = indexChanges;

  ListBuilder<CyclePacketItem>? _windowsOutsideP10P90;
  ListBuilder<CyclePacketItem> get windowsOutsideP10P90 =>
      _$this._windowsOutsideP10P90 ??= ListBuilder<CyclePacketItem>();
  set windowsOutsideP10P90(
    ListBuilder<CyclePacketItem>? windowsOutsideP10P90,
  ) => _$this._windowsOutsideP10P90 = windowsOutsideP10P90;

  CyclePacketOutlooksBuilder() {
    CyclePacketOutlooks._defaults(this);
  }

  CyclePacketOutlooksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexChanges = $v.indexChanges?.toBuilder();
      _windowsOutsideP10P90 = $v.windowsOutsideP10P90?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CyclePacketOutlooks other) {
    _$v = other as _$CyclePacketOutlooks;
  }

  @override
  void update(void Function(CyclePacketOutlooksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CyclePacketOutlooks build() => _build();

  _$CyclePacketOutlooks _build() {
    _$CyclePacketOutlooks _$result;
    try {
      _$result =
          _$v ??
          _$CyclePacketOutlooks._(
            indexChanges: _indexChanges?.build(),
            windowsOutsideP10P90: _windowsOutsideP10P90?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'indexChanges';
        _indexChanges?.build();
        _$failedField = 'windowsOutsideP10P90';
        _windowsOutsideP10P90?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CyclePacketOutlooks',
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

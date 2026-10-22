// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_state_layers_inner_rollups_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleStateLayersInnerRollupsInner
    extends ChronicleStateLayersInnerRollupsInner {
  @override
  final String region;
  @override
  final DateTime hour;
  @override
  final int count;

  factory _$ChronicleStateLayersInnerRollupsInner([
    void Function(ChronicleStateLayersInnerRollupsInnerBuilder)? updates,
  ]) => (ChronicleStateLayersInnerRollupsInnerBuilder()..update(updates))
      ._build();

  _$ChronicleStateLayersInnerRollupsInner._({
    required this.region,
    required this.hour,
    required this.count,
  }) : super._();
  @override
  ChronicleStateLayersInnerRollupsInner rebuild(
    void Function(ChronicleStateLayersInnerRollupsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleStateLayersInnerRollupsInnerBuilder toBuilder() =>
      ChronicleStateLayersInnerRollupsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleStateLayersInnerRollupsInner &&
        region == other.region &&
        hour == other.hour &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, hour.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ChronicleStateLayersInnerRollupsInner',
          )
          ..add('region', region)
          ..add('hour', hour)
          ..add('count', count))
        .toString();
  }
}

class ChronicleStateLayersInnerRollupsInnerBuilder
    implements
        Builder<
          ChronicleStateLayersInnerRollupsInner,
          ChronicleStateLayersInnerRollupsInnerBuilder
        > {
  _$ChronicleStateLayersInnerRollupsInner? _$v;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  DateTime? _hour;
  DateTime? get hour => _$this._hour;
  set hour(DateTime? hour) => _$this._hour = hour;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ChronicleStateLayersInnerRollupsInnerBuilder() {
    ChronicleStateLayersInnerRollupsInner._defaults(this);
  }

  ChronicleStateLayersInnerRollupsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _region = $v.region;
      _hour = $v.hour;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleStateLayersInnerRollupsInner other) {
    _$v = other as _$ChronicleStateLayersInnerRollupsInner;
  }

  @override
  void update(
    void Function(ChronicleStateLayersInnerRollupsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleStateLayersInnerRollupsInner build() => _build();

  _$ChronicleStateLayersInnerRollupsInner _build() {
    final _$result =
        _$v ??
        _$ChronicleStateLayersInnerRollupsInner._(
          region: BuiltValueNullFieldError.checkNotNull(
            region,
            r'ChronicleStateLayersInnerRollupsInner',
            'region',
          ),
          hour: BuiltValueNullFieldError.checkNotNull(
            hour,
            r'ChronicleStateLayersInnerRollupsInner',
            'hour',
          ),
          count: BuiltValueNullFieldError.checkNotNull(
            count,
            r'ChronicleStateLayersInnerRollupsInner',
            'count',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

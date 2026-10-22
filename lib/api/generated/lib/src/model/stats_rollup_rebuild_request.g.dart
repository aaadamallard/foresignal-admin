// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_rollup_rebuild_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatsRollupRebuildRequest extends StatsRollupRebuildRequest {
  @override
  final DateTime from;
  @override
  final DateTime to;

  factory _$StatsRollupRebuildRequest(
          [void Function(StatsRollupRebuildRequestBuilder)? updates]) =>
      (StatsRollupRebuildRequestBuilder()..update(updates))._build();

  _$StatsRollupRebuildRequest._({required this.from, required this.to})
      : super._();
  @override
  StatsRollupRebuildRequest rebuild(
          void Function(StatsRollupRebuildRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsRollupRebuildRequestBuilder toBuilder() =>
      StatsRollupRebuildRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsRollupRebuildRequest &&
        from == other.from &&
        to == other.to;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatsRollupRebuildRequest')
          ..add('from', from)
          ..add('to', to))
        .toString();
  }
}

class StatsRollupRebuildRequestBuilder
    implements
        Builder<StatsRollupRebuildRequest, StatsRollupRebuildRequestBuilder> {
  _$StatsRollupRebuildRequest? _$v;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  StatsRollupRebuildRequestBuilder() {
    StatsRollupRebuildRequest._defaults(this);
  }

  StatsRollupRebuildRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsRollupRebuildRequest other) {
    _$v = other as _$StatsRollupRebuildRequest;
  }

  @override
  void update(void Function(StatsRollupRebuildRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatsRollupRebuildRequest build() => _build();

  _$StatsRollupRebuildRequest _build() {
    final _$result = _$v ??
        _$StatsRollupRebuildRequest._(
          from: BuiltValueNullFieldError.checkNotNull(
              from, r'StatsRollupRebuildRequest', 'from'),
          to: BuiltValueNullFieldError.checkNotNull(
              to, r'StatsRollupRebuildRequest', 'to'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

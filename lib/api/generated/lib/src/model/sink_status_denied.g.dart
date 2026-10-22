// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sink_status_denied.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SinkStatusDenied extends SinkStatusDenied {
  @override
  final int total;
  @override
  final BuiltMap<String, int>? byReason;
  @override
  final BuiltMap<String, int>? bySource;

  factory _$SinkStatusDenied([
    void Function(SinkStatusDeniedBuilder)? updates,
  ]) => (SinkStatusDeniedBuilder()..update(updates))._build();

  _$SinkStatusDenied._({required this.total, this.byReason, this.bySource})
    : super._();
  @override
  SinkStatusDenied rebuild(void Function(SinkStatusDeniedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SinkStatusDeniedBuilder toBuilder() =>
      SinkStatusDeniedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SinkStatusDenied &&
        total == other.total &&
        byReason == other.byReason &&
        bySource == other.bySource;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, byReason.hashCode);
    _$hash = $jc(_$hash, bySource.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SinkStatusDenied')
          ..add('total', total)
          ..add('byReason', byReason)
          ..add('bySource', bySource))
        .toString();
  }
}

class SinkStatusDeniedBuilder
    implements Builder<SinkStatusDenied, SinkStatusDeniedBuilder> {
  _$SinkStatusDenied? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  MapBuilder<String, int>? _byReason;
  MapBuilder<String, int> get byReason =>
      _$this._byReason ??= MapBuilder<String, int>();
  set byReason(MapBuilder<String, int>? byReason) =>
      _$this._byReason = byReason;

  MapBuilder<String, int>? _bySource;
  MapBuilder<String, int> get bySource =>
      _$this._bySource ??= MapBuilder<String, int>();
  set bySource(MapBuilder<String, int>? bySource) =>
      _$this._bySource = bySource;

  SinkStatusDeniedBuilder() {
    SinkStatusDenied._defaults(this);
  }

  SinkStatusDeniedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _byReason = $v.byReason?.toBuilder();
      _bySource = $v.bySource?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SinkStatusDenied other) {
    _$v = other as _$SinkStatusDenied;
  }

  @override
  void update(void Function(SinkStatusDeniedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SinkStatusDenied build() => _build();

  _$SinkStatusDenied _build() {
    _$SinkStatusDenied _$result;
    try {
      _$result =
          _$v ??
          _$SinkStatusDenied._(
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'SinkStatusDenied',
              'total',
            ),
            byReason: _byReason?.build(),
            bySource: _bySource?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'byReason';
        _byReason?.build();
        _$failedField = 'bySource';
        _bySource?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SinkStatusDenied',
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

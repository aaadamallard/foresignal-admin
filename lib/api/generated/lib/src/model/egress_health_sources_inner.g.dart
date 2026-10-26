// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'egress_health_sources_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EgressHealthSourcesInner extends EgressHealthSourcesInner {
  @override
  final String sourceId;
  @override
  final DateTime backoffUntil;
  @override
  final int consecutiveThrottles;

  factory _$EgressHealthSourcesInner([
    void Function(EgressHealthSourcesInnerBuilder)? updates,
  ]) => (EgressHealthSourcesInnerBuilder()..update(updates))._build();

  _$EgressHealthSourcesInner._({
    required this.sourceId,
    required this.backoffUntil,
    required this.consecutiveThrottles,
  }) : super._();
  @override
  EgressHealthSourcesInner rebuild(
    void Function(EgressHealthSourcesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EgressHealthSourcesInnerBuilder toBuilder() =>
      EgressHealthSourcesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EgressHealthSourcesInner &&
        sourceId == other.sourceId &&
        backoffUntil == other.backoffUntil &&
        consecutiveThrottles == other.consecutiveThrottles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, backoffUntil.hashCode);
    _$hash = $jc(_$hash, consecutiveThrottles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EgressHealthSourcesInner')
          ..add('sourceId', sourceId)
          ..add('backoffUntil', backoffUntil)
          ..add('consecutiveThrottles', consecutiveThrottles))
        .toString();
  }
}

class EgressHealthSourcesInnerBuilder
    implements
        Builder<EgressHealthSourcesInner, EgressHealthSourcesInnerBuilder> {
  _$EgressHealthSourcesInner? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  DateTime? _backoffUntil;
  DateTime? get backoffUntil => _$this._backoffUntil;
  set backoffUntil(DateTime? backoffUntil) =>
      _$this._backoffUntil = backoffUntil;

  int? _consecutiveThrottles;
  int? get consecutiveThrottles => _$this._consecutiveThrottles;
  set consecutiveThrottles(int? consecutiveThrottles) =>
      _$this._consecutiveThrottles = consecutiveThrottles;

  EgressHealthSourcesInnerBuilder() {
    EgressHealthSourcesInner._defaults(this);
  }

  EgressHealthSourcesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _backoffUntil = $v.backoffUntil;
      _consecutiveThrottles = $v.consecutiveThrottles;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EgressHealthSourcesInner other) {
    _$v = other as _$EgressHealthSourcesInner;
  }

  @override
  void update(void Function(EgressHealthSourcesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EgressHealthSourcesInner build() => _build();

  _$EgressHealthSourcesInner _build() {
    final _$result =
        _$v ??
        _$EgressHealthSourcesInner._(
          sourceId: BuiltValueNullFieldError.checkNotNull(
            sourceId,
            r'EgressHealthSourcesInner',
            'sourceId',
          ),
          backoffUntil: BuiltValueNullFieldError.checkNotNull(
            backoffUntil,
            r'EgressHealthSourcesInner',
            'backoffUntil',
          ),
          consecutiveThrottles: BuiltValueNullFieldError.checkNotNull(
            consecutiveThrottles,
            r'EgressHealthSourcesInner',
            'consecutiveThrottles',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

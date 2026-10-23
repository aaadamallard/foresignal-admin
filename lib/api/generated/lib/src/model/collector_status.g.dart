// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collector_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CollectorStatus extends CollectorStatus {
  @override
  final int cap;
  @override
  final int inUse;
  @override
  final int waiting;

  factory _$CollectorStatus([void Function(CollectorStatusBuilder)? updates]) =>
      (CollectorStatusBuilder()..update(updates))._build();

  _$CollectorStatus._({
    required this.cap,
    required this.inUse,
    required this.waiting,
  }) : super._();
  @override
  CollectorStatus rebuild(void Function(CollectorStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectorStatusBuilder toBuilder() => CollectorStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectorStatus &&
        cap == other.cap &&
        inUse == other.inUse &&
        waiting == other.waiting;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cap.hashCode);
    _$hash = $jc(_$hash, inUse.hashCode);
    _$hash = $jc(_$hash, waiting.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollectorStatus')
          ..add('cap', cap)
          ..add('inUse', inUse)
          ..add('waiting', waiting))
        .toString();
  }
}

class CollectorStatusBuilder
    implements Builder<CollectorStatus, CollectorStatusBuilder> {
  _$CollectorStatus? _$v;

  int? _cap;
  int? get cap => _$this._cap;
  set cap(int? cap) => _$this._cap = cap;

  int? _inUse;
  int? get inUse => _$this._inUse;
  set inUse(int? inUse) => _$this._inUse = inUse;

  int? _waiting;
  int? get waiting => _$this._waiting;
  set waiting(int? waiting) => _$this._waiting = waiting;

  CollectorStatusBuilder() {
    CollectorStatus._defaults(this);
  }

  CollectorStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cap = $v.cap;
      _inUse = $v.inUse;
      _waiting = $v.waiting;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectorStatus other) {
    _$v = other as _$CollectorStatus;
  }

  @override
  void update(void Function(CollectorStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollectorStatus build() => _build();

  _$CollectorStatus _build() {
    final _$result =
        _$v ??
        _$CollectorStatus._(
          cap: BuiltValueNullFieldError.checkNotNull(
            cap,
            r'CollectorStatus',
            'cap',
          ),
          inUse: BuiltValueNullFieldError.checkNotNull(
            inUse,
            r'CollectorStatus',
            'inUse',
          ),
          waiting: BuiltValueNullFieldError.checkNotNull(
            waiting,
            r'CollectorStatus',
            'waiting',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

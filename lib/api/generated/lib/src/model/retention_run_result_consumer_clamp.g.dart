// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retention_run_result_consumer_clamp.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RetentionRunResultConsumerClamp
    extends RetentionRunResultConsumerClamp {
  @override
  final bool? active;
  @override
  final String? consumer;
  @override
  final int? cursorSeq;

  factory _$RetentionRunResultConsumerClamp(
          [void Function(RetentionRunResultConsumerClampBuilder)? updates]) =>
      (RetentionRunResultConsumerClampBuilder()..update(updates))._build();

  _$RetentionRunResultConsumerClamp._(
      {this.active, this.consumer, this.cursorSeq})
      : super._();
  @override
  RetentionRunResultConsumerClamp rebuild(
          void Function(RetentionRunResultConsumerClampBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RetentionRunResultConsumerClampBuilder toBuilder() =>
      RetentionRunResultConsumerClampBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RetentionRunResultConsumerClamp &&
        active == other.active &&
        consumer == other.consumer &&
        cursorSeq == other.cursorSeq;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, consumer.hashCode);
    _$hash = $jc(_$hash, cursorSeq.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RetentionRunResultConsumerClamp')
          ..add('active', active)
          ..add('consumer', consumer)
          ..add('cursorSeq', cursorSeq))
        .toString();
  }
}

class RetentionRunResultConsumerClampBuilder
    implements
        Builder<RetentionRunResultConsumerClamp,
            RetentionRunResultConsumerClampBuilder> {
  _$RetentionRunResultConsumerClamp? _$v;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  String? _consumer;
  String? get consumer => _$this._consumer;
  set consumer(String? consumer) => _$this._consumer = consumer;

  int? _cursorSeq;
  int? get cursorSeq => _$this._cursorSeq;
  set cursorSeq(int? cursorSeq) => _$this._cursorSeq = cursorSeq;

  RetentionRunResultConsumerClampBuilder() {
    RetentionRunResultConsumerClamp._defaults(this);
  }

  RetentionRunResultConsumerClampBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _active = $v.active;
      _consumer = $v.consumer;
      _cursorSeq = $v.cursorSeq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RetentionRunResultConsumerClamp other) {
    _$v = other as _$RetentionRunResultConsumerClamp;
  }

  @override
  void update(void Function(RetentionRunResultConsumerClampBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RetentionRunResultConsumerClamp build() => _build();

  _$RetentionRunResultConsumerClamp _build() {
    final _$result = _$v ??
        _$RetentionRunResultConsumerClamp._(
          active: active,
          consumer: consumer,
          cursorSeq: cursorSeq,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

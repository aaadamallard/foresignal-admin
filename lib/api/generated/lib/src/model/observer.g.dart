// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Observer extends Observer {
  @override
  final String receiverId;
  @override
  final int? frequencyHz;
  @override
  final num? rssi;
  @override
  final num? snr;
  @override
  final num? decodeQuality;

  factory _$Observer([void Function(ObserverBuilder)? updates]) =>
      (ObserverBuilder()..update(updates))._build();

  _$Observer._(
      {required this.receiverId,
      this.frequencyHz,
      this.rssi,
      this.snr,
      this.decodeQuality})
      : super._();
  @override
  Observer rebuild(void Function(ObserverBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObserverBuilder toBuilder() => ObserverBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Observer &&
        receiverId == other.receiverId &&
        frequencyHz == other.frequencyHz &&
        rssi == other.rssi &&
        snr == other.snr &&
        decodeQuality == other.decodeQuality;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, receiverId.hashCode);
    _$hash = $jc(_$hash, frequencyHz.hashCode);
    _$hash = $jc(_$hash, rssi.hashCode);
    _$hash = $jc(_$hash, snr.hashCode);
    _$hash = $jc(_$hash, decodeQuality.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Observer')
          ..add('receiverId', receiverId)
          ..add('frequencyHz', frequencyHz)
          ..add('rssi', rssi)
          ..add('snr', snr)
          ..add('decodeQuality', decodeQuality))
        .toString();
  }
}

class ObserverBuilder implements Builder<Observer, ObserverBuilder> {
  _$Observer? _$v;

  String? _receiverId;
  String? get receiverId => _$this._receiverId;
  set receiverId(String? receiverId) => _$this._receiverId = receiverId;

  int? _frequencyHz;
  int? get frequencyHz => _$this._frequencyHz;
  set frequencyHz(int? frequencyHz) => _$this._frequencyHz = frequencyHz;

  num? _rssi;
  num? get rssi => _$this._rssi;
  set rssi(num? rssi) => _$this._rssi = rssi;

  num? _snr;
  num? get snr => _$this._snr;
  set snr(num? snr) => _$this._snr = snr;

  num? _decodeQuality;
  num? get decodeQuality => _$this._decodeQuality;
  set decodeQuality(num? decodeQuality) =>
      _$this._decodeQuality = decodeQuality;

  ObserverBuilder() {
    Observer._defaults(this);
  }

  ObserverBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _receiverId = $v.receiverId;
      _frequencyHz = $v.frequencyHz;
      _rssi = $v.rssi;
      _snr = $v.snr;
      _decodeQuality = $v.decodeQuality;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Observer other) {
    _$v = other as _$Observer;
  }

  @override
  void update(void Function(ObserverBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Observer build() => _build();

  _$Observer _build() {
    final _$result = _$v ??
        _$Observer._(
          receiverId: BuiltValueNullFieldError.checkNotNull(
              receiverId, r'Observer', 'receiverId'),
          frequencyHz: frequencyHz,
          rssi: rssi,
          snr: snr,
          decodeQuality: decodeQuality,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

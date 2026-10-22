// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fire_cluster_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FireClusterPayload extends FireClusterPayload {
  @override
  final int pixels;
  @override
  final num? frpTotalMw;
  @override
  final num? frpMaxMw;
  @override
  final DateTime? firstSeenAt;
  @override
  final String label;

  factory _$FireClusterPayload(
          [void Function(FireClusterPayloadBuilder)? updates]) =>
      (FireClusterPayloadBuilder()..update(updates))._build();

  _$FireClusterPayload._(
      {required this.pixels,
      this.frpTotalMw,
      this.frpMaxMw,
      this.firstSeenAt,
      required this.label})
      : super._();
  @override
  FireClusterPayload rebuild(
          void Function(FireClusterPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FireClusterPayloadBuilder toBuilder() =>
      FireClusterPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FireClusterPayload &&
        pixels == other.pixels &&
        frpTotalMw == other.frpTotalMw &&
        frpMaxMw == other.frpMaxMw &&
        firstSeenAt == other.firstSeenAt &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pixels.hashCode);
    _$hash = $jc(_$hash, frpTotalMw.hashCode);
    _$hash = $jc(_$hash, frpMaxMw.hashCode);
    _$hash = $jc(_$hash, firstSeenAt.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FireClusterPayload')
          ..add('pixels', pixels)
          ..add('frpTotalMw', frpTotalMw)
          ..add('frpMaxMw', frpMaxMw)
          ..add('firstSeenAt', firstSeenAt)
          ..add('label', label))
        .toString();
  }
}

class FireClusterPayloadBuilder
    implements Builder<FireClusterPayload, FireClusterPayloadBuilder> {
  _$FireClusterPayload? _$v;

  int? _pixels;
  int? get pixels => _$this._pixels;
  set pixels(int? pixels) => _$this._pixels = pixels;

  num? _frpTotalMw;
  num? get frpTotalMw => _$this._frpTotalMw;
  set frpTotalMw(num? frpTotalMw) => _$this._frpTotalMw = frpTotalMw;

  num? _frpMaxMw;
  num? get frpMaxMw => _$this._frpMaxMw;
  set frpMaxMw(num? frpMaxMw) => _$this._frpMaxMw = frpMaxMw;

  DateTime? _firstSeenAt;
  DateTime? get firstSeenAt => _$this._firstSeenAt;
  set firstSeenAt(DateTime? firstSeenAt) => _$this._firstSeenAt = firstSeenAt;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  FireClusterPayloadBuilder() {
    FireClusterPayload._defaults(this);
  }

  FireClusterPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pixels = $v.pixels;
      _frpTotalMw = $v.frpTotalMw;
      _frpMaxMw = $v.frpMaxMw;
      _firstSeenAt = $v.firstSeenAt;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FireClusterPayload other) {
    _$v = other as _$FireClusterPayload;
  }

  @override
  void update(void Function(FireClusterPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FireClusterPayload build() => _build();

  _$FireClusterPayload _build() {
    final _$result = _$v ??
        _$FireClusterPayload._(
          pixels: BuiltValueNullFieldError.checkNotNull(
              pixels, r'FireClusterPayload', 'pixels'),
          frpTotalMw: frpTotalMw,
          frpMaxMw: frpMaxMw,
          firstSeenAt: firstSeenAt,
          label: BuiltValueNullFieldError.checkNotNull(
              label, r'FireClusterPayload', 'label'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

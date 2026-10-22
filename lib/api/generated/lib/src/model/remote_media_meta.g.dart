// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_media_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemoteMediaMeta extends RemoteMediaMeta {
  @override
  final String? passId;
  @override
  final String composite;
  @override
  final DateTime timestamp;
  @override
  final String satellite;

  factory _$RemoteMediaMeta([void Function(RemoteMediaMetaBuilder)? updates]) =>
      (RemoteMediaMetaBuilder()..update(updates))._build();

  _$RemoteMediaMeta._(
      {this.passId,
      required this.composite,
      required this.timestamp,
      required this.satellite})
      : super._();
  @override
  RemoteMediaMeta rebuild(void Function(RemoteMediaMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoteMediaMetaBuilder toBuilder() => RemoteMediaMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoteMediaMeta &&
        passId == other.passId &&
        composite == other.composite &&
        timestamp == other.timestamp &&
        satellite == other.satellite;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, passId.hashCode);
    _$hash = $jc(_$hash, composite.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, satellite.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RemoteMediaMeta')
          ..add('passId', passId)
          ..add('composite', composite)
          ..add('timestamp', timestamp)
          ..add('satellite', satellite))
        .toString();
  }
}

class RemoteMediaMetaBuilder
    implements Builder<RemoteMediaMeta, RemoteMediaMetaBuilder> {
  _$RemoteMediaMeta? _$v;

  String? _passId;
  String? get passId => _$this._passId;
  set passId(String? passId) => _$this._passId = passId;

  String? _composite;
  String? get composite => _$this._composite;
  set composite(String? composite) => _$this._composite = composite;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  String? _satellite;
  String? get satellite => _$this._satellite;
  set satellite(String? satellite) => _$this._satellite = satellite;

  RemoteMediaMetaBuilder() {
    RemoteMediaMeta._defaults(this);
  }

  RemoteMediaMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passId = $v.passId;
      _composite = $v.composite;
      _timestamp = $v.timestamp;
      _satellite = $v.satellite;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoteMediaMeta other) {
    _$v = other as _$RemoteMediaMeta;
  }

  @override
  void update(void Function(RemoteMediaMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemoteMediaMeta build() => _build();

  _$RemoteMediaMeta _build() {
    final _$result = _$v ??
        _$RemoteMediaMeta._(
          passId: passId,
          composite: BuiltValueNullFieldError.checkNotNull(
              composite, r'RemoteMediaMeta', 'composite'),
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'RemoteMediaMeta', 'timestamp'),
          satellite: BuiltValueNullFieldError.checkNotNull(
              satellite, r'RemoteMediaMeta', 'satellite'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

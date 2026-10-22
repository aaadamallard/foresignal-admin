// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_context_anchor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlertContextAnchor extends AlertContextAnchor {
  @override
  final String? source_;
  @override
  final String? externalId;
  @override
  final int? seq;
  @override
  final num? distanceKm;

  factory _$AlertContextAnchor(
          [void Function(AlertContextAnchorBuilder)? updates]) =>
      (AlertContextAnchorBuilder()..update(updates))._build();

  _$AlertContextAnchor._(
      {this.source_, this.externalId, this.seq, this.distanceKm})
      : super._();
  @override
  AlertContextAnchor rebuild(
          void Function(AlertContextAnchorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlertContextAnchorBuilder toBuilder() =>
      AlertContextAnchorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlertContextAnchor &&
        source_ == other.source_ &&
        externalId == other.externalId &&
        seq == other.seq &&
        distanceKm == other.distanceKm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, distanceKm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlertContextAnchor')
          ..add('source_', source_)
          ..add('externalId', externalId)
          ..add('seq', seq)
          ..add('distanceKm', distanceKm))
        .toString();
  }
}

class AlertContextAnchorBuilder
    implements Builder<AlertContextAnchor, AlertContextAnchorBuilder> {
  _$AlertContextAnchor? _$v;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  num? _distanceKm;
  num? get distanceKm => _$this._distanceKm;
  set distanceKm(num? distanceKm) => _$this._distanceKm = distanceKm;

  AlertContextAnchorBuilder() {
    AlertContextAnchor._defaults(this);
  }

  AlertContextAnchorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source_ = $v.source_;
      _externalId = $v.externalId;
      _seq = $v.seq;
      _distanceKm = $v.distanceKm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlertContextAnchor other) {
    _$v = other as _$AlertContextAnchor;
  }

  @override
  void update(void Function(AlertContextAnchorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlertContextAnchor build() => _build();

  _$AlertContextAnchor _build() {
    final _$result = _$v ??
        _$AlertContextAnchor._(
          source_: source_,
          externalId: externalId,
          seq: seq,
          distanceKm: distanceKm,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

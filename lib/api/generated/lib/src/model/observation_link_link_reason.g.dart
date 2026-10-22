// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observation_link_link_reason.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObservationLinkLinkReason extends ObservationLinkLinkReason {
  @override
  final String rule;
  @override
  final num? dtSeconds;
  @override
  final num? distanceKm;
  @override
  final BuiltMap<String, JsonObject?>? attributeDeltas;
  @override
  final bool? upstreamIdMatch;

  factory _$ObservationLinkLinkReason([
    void Function(ObservationLinkLinkReasonBuilder)? updates,
  ]) => (ObservationLinkLinkReasonBuilder()..update(updates))._build();

  _$ObservationLinkLinkReason._({
    required this.rule,
    this.dtSeconds,
    this.distanceKm,
    this.attributeDeltas,
    this.upstreamIdMatch,
  }) : super._();
  @override
  ObservationLinkLinkReason rebuild(
    void Function(ObservationLinkLinkReasonBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ObservationLinkLinkReasonBuilder toBuilder() =>
      ObservationLinkLinkReasonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObservationLinkLinkReason &&
        rule == other.rule &&
        dtSeconds == other.dtSeconds &&
        distanceKm == other.distanceKm &&
        attributeDeltas == other.attributeDeltas &&
        upstreamIdMatch == other.upstreamIdMatch;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rule.hashCode);
    _$hash = $jc(_$hash, dtSeconds.hashCode);
    _$hash = $jc(_$hash, distanceKm.hashCode);
    _$hash = $jc(_$hash, attributeDeltas.hashCode);
    _$hash = $jc(_$hash, upstreamIdMatch.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObservationLinkLinkReason')
          ..add('rule', rule)
          ..add('dtSeconds', dtSeconds)
          ..add('distanceKm', distanceKm)
          ..add('attributeDeltas', attributeDeltas)
          ..add('upstreamIdMatch', upstreamIdMatch))
        .toString();
  }
}

class ObservationLinkLinkReasonBuilder
    implements
        Builder<ObservationLinkLinkReason, ObservationLinkLinkReasonBuilder> {
  _$ObservationLinkLinkReason? _$v;

  String? _rule;
  String? get rule => _$this._rule;
  set rule(String? rule) => _$this._rule = rule;

  num? _dtSeconds;
  num? get dtSeconds => _$this._dtSeconds;
  set dtSeconds(num? dtSeconds) => _$this._dtSeconds = dtSeconds;

  num? _distanceKm;
  num? get distanceKm => _$this._distanceKm;
  set distanceKm(num? distanceKm) => _$this._distanceKm = distanceKm;

  MapBuilder<String, JsonObject?>? _attributeDeltas;
  MapBuilder<String, JsonObject?> get attributeDeltas =>
      _$this._attributeDeltas ??= MapBuilder<String, JsonObject?>();
  set attributeDeltas(MapBuilder<String, JsonObject?>? attributeDeltas) =>
      _$this._attributeDeltas = attributeDeltas;

  bool? _upstreamIdMatch;
  bool? get upstreamIdMatch => _$this._upstreamIdMatch;
  set upstreamIdMatch(bool? upstreamIdMatch) =>
      _$this._upstreamIdMatch = upstreamIdMatch;

  ObservationLinkLinkReasonBuilder() {
    ObservationLinkLinkReason._defaults(this);
  }

  ObservationLinkLinkReasonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rule = $v.rule;
      _dtSeconds = $v.dtSeconds;
      _distanceKm = $v.distanceKm;
      _attributeDeltas = $v.attributeDeltas?.toBuilder();
      _upstreamIdMatch = $v.upstreamIdMatch;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObservationLinkLinkReason other) {
    _$v = other as _$ObservationLinkLinkReason;
  }

  @override
  void update(void Function(ObservationLinkLinkReasonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObservationLinkLinkReason build() => _build();

  _$ObservationLinkLinkReason _build() {
    _$ObservationLinkLinkReason _$result;
    try {
      _$result =
          _$v ??
          _$ObservationLinkLinkReason._(
            rule: BuiltValueNullFieldError.checkNotNull(
              rule,
              r'ObservationLinkLinkReason',
              'rule',
            ),
            dtSeconds: dtSeconds,
            distanceKm: distanceKm,
            attributeDeltas: _attributeDeltas?.build(),
            upstreamIdMatch: upstreamIdMatch,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributeDeltas';
        _attributeDeltas?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ObservationLinkLinkReason',
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

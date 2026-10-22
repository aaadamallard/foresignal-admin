// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_coincidence_baseline.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HypothesisCoincidenceBaseline extends HypothesisCoincidenceBaseline {
  @override
  final num placeboRate;
  @override
  final String method;
  @override
  final String? eventStudyId;
  @override
  final int? nPlacebo;

  factory _$HypothesisCoincidenceBaseline(
          [void Function(HypothesisCoincidenceBaselineBuilder)? updates]) =>
      (HypothesisCoincidenceBaselineBuilder()..update(updates))._build();

  _$HypothesisCoincidenceBaseline._(
      {required this.placeboRate,
      required this.method,
      this.eventStudyId,
      this.nPlacebo})
      : super._();
  @override
  HypothesisCoincidenceBaseline rebuild(
          void Function(HypothesisCoincidenceBaselineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HypothesisCoincidenceBaselineBuilder toBuilder() =>
      HypothesisCoincidenceBaselineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisCoincidenceBaseline &&
        placeboRate == other.placeboRate &&
        method == other.method &&
        eventStudyId == other.eventStudyId &&
        nPlacebo == other.nPlacebo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, placeboRate.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, eventStudyId.hashCode);
    _$hash = $jc(_$hash, nPlacebo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisCoincidenceBaseline')
          ..add('placeboRate', placeboRate)
          ..add('method', method)
          ..add('eventStudyId', eventStudyId)
          ..add('nPlacebo', nPlacebo))
        .toString();
  }
}

class HypothesisCoincidenceBaselineBuilder
    implements
        Builder<HypothesisCoincidenceBaseline,
            HypothesisCoincidenceBaselineBuilder> {
  _$HypothesisCoincidenceBaseline? _$v;

  num? _placeboRate;
  num? get placeboRate => _$this._placeboRate;
  set placeboRate(num? placeboRate) => _$this._placeboRate = placeboRate;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  String? _eventStudyId;
  String? get eventStudyId => _$this._eventStudyId;
  set eventStudyId(String? eventStudyId) => _$this._eventStudyId = eventStudyId;

  int? _nPlacebo;
  int? get nPlacebo => _$this._nPlacebo;
  set nPlacebo(int? nPlacebo) => _$this._nPlacebo = nPlacebo;

  HypothesisCoincidenceBaselineBuilder() {
    HypothesisCoincidenceBaseline._defaults(this);
  }

  HypothesisCoincidenceBaselineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _placeboRate = $v.placeboRate;
      _method = $v.method;
      _eventStudyId = $v.eventStudyId;
      _nPlacebo = $v.nPlacebo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisCoincidenceBaseline other) {
    _$v = other as _$HypothesisCoincidenceBaseline;
  }

  @override
  void update(void Function(HypothesisCoincidenceBaselineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisCoincidenceBaseline build() => _build();

  _$HypothesisCoincidenceBaseline _build() {
    final _$result = _$v ??
        _$HypothesisCoincidenceBaseline._(
          placeboRate: BuiltValueNullFieldError.checkNotNull(
              placeboRate, r'HypothesisCoincidenceBaseline', 'placeboRate'),
          method: BuiltValueNullFieldError.checkNotNull(
              method, r'HypothesisCoincidenceBaseline', 'method'),
          eventStudyId: eventStudyId,
          nPlacebo: nPlacebo,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

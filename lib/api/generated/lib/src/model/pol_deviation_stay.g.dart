// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pol_deviation_stay.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolDeviationStay extends PolDeviationStay {
  @override
  final DateTime? arrive;
  @override
  final DateTime? depart;
  @override
  final Geometry? centroid;

  factory _$PolDeviationStay(
          [void Function(PolDeviationStayBuilder)? updates]) =>
      (PolDeviationStayBuilder()..update(updates))._build();

  _$PolDeviationStay._({this.arrive, this.depart, this.centroid}) : super._();
  @override
  PolDeviationStay rebuild(void Function(PolDeviationStayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolDeviationStayBuilder toBuilder() =>
      PolDeviationStayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolDeviationStay &&
        arrive == other.arrive &&
        depart == other.depart &&
        centroid == other.centroid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arrive.hashCode);
    _$hash = $jc(_$hash, depart.hashCode);
    _$hash = $jc(_$hash, centroid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PolDeviationStay')
          ..add('arrive', arrive)
          ..add('depart', depart)
          ..add('centroid', centroid))
        .toString();
  }
}

class PolDeviationStayBuilder
    implements Builder<PolDeviationStay, PolDeviationStayBuilder> {
  _$PolDeviationStay? _$v;

  DateTime? _arrive;
  DateTime? get arrive => _$this._arrive;
  set arrive(DateTime? arrive) => _$this._arrive = arrive;

  DateTime? _depart;
  DateTime? get depart => _$this._depart;
  set depart(DateTime? depart) => _$this._depart = depart;

  GeometryBuilder? _centroid;
  GeometryBuilder get centroid => _$this._centroid ??= GeometryBuilder();
  set centroid(GeometryBuilder? centroid) => _$this._centroid = centroid;

  PolDeviationStayBuilder() {
    PolDeviationStay._defaults(this);
  }

  PolDeviationStayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arrive = $v.arrive;
      _depart = $v.depart;
      _centroid = $v.centroid?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolDeviationStay other) {
    _$v = other as _$PolDeviationStay;
  }

  @override
  void update(void Function(PolDeviationStayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolDeviationStay build() => _build();

  _$PolDeviationStay _build() {
    _$PolDeviationStay _$result;
    try {
      _$result = _$v ??
          _$PolDeviationStay._(
            arrive: arrive,
            depart: depart,
            centroid: _centroid?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'centroid';
        _centroid?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PolDeviationStay', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

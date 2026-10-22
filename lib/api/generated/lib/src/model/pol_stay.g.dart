// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pol_stay.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolStay extends PolStay {
  @override
  final String id;
  @override
  final String subjectId;
  @override
  final DateTime arrive;
  @override
  final DateTime depart;
  @override
  final Geometry centroid;
  @override
  final String? placeId;
  @override
  final int? clusterId;
  @override
  final int? fixes;

  factory _$PolStay([void Function(PolStayBuilder)? updates]) =>
      (PolStayBuilder()..update(updates))._build();

  _$PolStay._(
      {required this.id,
      required this.subjectId,
      required this.arrive,
      required this.depart,
      required this.centroid,
      this.placeId,
      this.clusterId,
      this.fixes})
      : super._();
  @override
  PolStay rebuild(void Function(PolStayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolStayBuilder toBuilder() => PolStayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolStay &&
        id == other.id &&
        subjectId == other.subjectId &&
        arrive == other.arrive &&
        depart == other.depart &&
        centroid == other.centroid &&
        placeId == other.placeId &&
        clusterId == other.clusterId &&
        fixes == other.fixes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, subjectId.hashCode);
    _$hash = $jc(_$hash, arrive.hashCode);
    _$hash = $jc(_$hash, depart.hashCode);
    _$hash = $jc(_$hash, centroid.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, clusterId.hashCode);
    _$hash = $jc(_$hash, fixes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PolStay')
          ..add('id', id)
          ..add('subjectId', subjectId)
          ..add('arrive', arrive)
          ..add('depart', depart)
          ..add('centroid', centroid)
          ..add('placeId', placeId)
          ..add('clusterId', clusterId)
          ..add('fixes', fixes))
        .toString();
  }
}

class PolStayBuilder implements Builder<PolStay, PolStayBuilder> {
  _$PolStay? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _subjectId;
  String? get subjectId => _$this._subjectId;
  set subjectId(String? subjectId) => _$this._subjectId = subjectId;

  DateTime? _arrive;
  DateTime? get arrive => _$this._arrive;
  set arrive(DateTime? arrive) => _$this._arrive = arrive;

  DateTime? _depart;
  DateTime? get depart => _$this._depart;
  set depart(DateTime? depart) => _$this._depart = depart;

  GeometryBuilder? _centroid;
  GeometryBuilder get centroid => _$this._centroid ??= GeometryBuilder();
  set centroid(GeometryBuilder? centroid) => _$this._centroid = centroid;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  int? _clusterId;
  int? get clusterId => _$this._clusterId;
  set clusterId(int? clusterId) => _$this._clusterId = clusterId;

  int? _fixes;
  int? get fixes => _$this._fixes;
  set fixes(int? fixes) => _$this._fixes = fixes;

  PolStayBuilder() {
    PolStay._defaults(this);
  }

  PolStayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _subjectId = $v.subjectId;
      _arrive = $v.arrive;
      _depart = $v.depart;
      _centroid = $v.centroid.toBuilder();
      _placeId = $v.placeId;
      _clusterId = $v.clusterId;
      _fixes = $v.fixes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolStay other) {
    _$v = other as _$PolStay;
  }

  @override
  void update(void Function(PolStayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolStay build() => _build();

  _$PolStay _build() {
    _$PolStay _$result;
    try {
      _$result = _$v ??
          _$PolStay._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'PolStay', 'id'),
            subjectId: BuiltValueNullFieldError.checkNotNull(
                subjectId, r'PolStay', 'subjectId'),
            arrive: BuiltValueNullFieldError.checkNotNull(
                arrive, r'PolStay', 'arrive'),
            depart: BuiltValueNullFieldError.checkNotNull(
                depart, r'PolStay', 'depart'),
            centroid: centroid.build(),
            placeId: placeId,
            clusterId: clusterId,
            fixes: fixes,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'centroid';
        centroid.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PolStay', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

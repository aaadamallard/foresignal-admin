// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pol_place.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolPlace extends PolPlace {
  @override
  final String id;
  @override
  final String subjectId;
  @override
  final int clusterId;
  @override
  final Geometry centroid;
  @override
  final num radiusM;
  @override
  final int visits;
  @override
  final num totalDwellMinutes;
  @override
  final BuiltList<num> hourOfWeek;
  @override
  final DateTime firstSeen;
  @override
  final DateTime lastSeen;
  @override
  final String? label;
  @override
  final bool? private;

  factory _$PolPlace([void Function(PolPlaceBuilder)? updates]) =>
      (PolPlaceBuilder()..update(updates))._build();

  _$PolPlace._({
    required this.id,
    required this.subjectId,
    required this.clusterId,
    required this.centroid,
    required this.radiusM,
    required this.visits,
    required this.totalDwellMinutes,
    required this.hourOfWeek,
    required this.firstSeen,
    required this.lastSeen,
    this.label,
    this.private,
  }) : super._();
  @override
  PolPlace rebuild(void Function(PolPlaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolPlaceBuilder toBuilder() => PolPlaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolPlace &&
        id == other.id &&
        subjectId == other.subjectId &&
        clusterId == other.clusterId &&
        centroid == other.centroid &&
        radiusM == other.radiusM &&
        visits == other.visits &&
        totalDwellMinutes == other.totalDwellMinutes &&
        hourOfWeek == other.hourOfWeek &&
        firstSeen == other.firstSeen &&
        lastSeen == other.lastSeen &&
        label == other.label &&
        private == other.private;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, subjectId.hashCode);
    _$hash = $jc(_$hash, clusterId.hashCode);
    _$hash = $jc(_$hash, centroid.hashCode);
    _$hash = $jc(_$hash, radiusM.hashCode);
    _$hash = $jc(_$hash, visits.hashCode);
    _$hash = $jc(_$hash, totalDwellMinutes.hashCode);
    _$hash = $jc(_$hash, hourOfWeek.hashCode);
    _$hash = $jc(_$hash, firstSeen.hashCode);
    _$hash = $jc(_$hash, lastSeen.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PolPlace')
          ..add('id', id)
          ..add('subjectId', subjectId)
          ..add('clusterId', clusterId)
          ..add('centroid', centroid)
          ..add('radiusM', radiusM)
          ..add('visits', visits)
          ..add('totalDwellMinutes', totalDwellMinutes)
          ..add('hourOfWeek', hourOfWeek)
          ..add('firstSeen', firstSeen)
          ..add('lastSeen', lastSeen)
          ..add('label', label)
          ..add('private', private))
        .toString();
  }
}

class PolPlaceBuilder implements Builder<PolPlace, PolPlaceBuilder> {
  _$PolPlace? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _subjectId;
  String? get subjectId => _$this._subjectId;
  set subjectId(String? subjectId) => _$this._subjectId = subjectId;

  int? _clusterId;
  int? get clusterId => _$this._clusterId;
  set clusterId(int? clusterId) => _$this._clusterId = clusterId;

  GeometryBuilder? _centroid;
  GeometryBuilder get centroid => _$this._centroid ??= GeometryBuilder();
  set centroid(GeometryBuilder? centroid) => _$this._centroid = centroid;

  num? _radiusM;
  num? get radiusM => _$this._radiusM;
  set radiusM(num? radiusM) => _$this._radiusM = radiusM;

  int? _visits;
  int? get visits => _$this._visits;
  set visits(int? visits) => _$this._visits = visits;

  num? _totalDwellMinutes;
  num? get totalDwellMinutes => _$this._totalDwellMinutes;
  set totalDwellMinutes(num? totalDwellMinutes) =>
      _$this._totalDwellMinutes = totalDwellMinutes;

  ListBuilder<num>? _hourOfWeek;
  ListBuilder<num> get hourOfWeek => _$this._hourOfWeek ??= ListBuilder<num>();
  set hourOfWeek(ListBuilder<num>? hourOfWeek) =>
      _$this._hourOfWeek = hourOfWeek;

  DateTime? _firstSeen;
  DateTime? get firstSeen => _$this._firstSeen;
  set firstSeen(DateTime? firstSeen) => _$this._firstSeen = firstSeen;

  DateTime? _lastSeen;
  DateTime? get lastSeen => _$this._lastSeen;
  set lastSeen(DateTime? lastSeen) => _$this._lastSeen = lastSeen;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  PolPlaceBuilder() {
    PolPlace._defaults(this);
  }

  PolPlaceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _subjectId = $v.subjectId;
      _clusterId = $v.clusterId;
      _centroid = $v.centroid.toBuilder();
      _radiusM = $v.radiusM;
      _visits = $v.visits;
      _totalDwellMinutes = $v.totalDwellMinutes;
      _hourOfWeek = $v.hourOfWeek.toBuilder();
      _firstSeen = $v.firstSeen;
      _lastSeen = $v.lastSeen;
      _label = $v.label;
      _private = $v.private;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolPlace other) {
    _$v = other as _$PolPlace;
  }

  @override
  void update(void Function(PolPlaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolPlace build() => _build();

  _$PolPlace _build() {
    _$PolPlace _$result;
    try {
      _$result =
          _$v ??
          _$PolPlace._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'PolPlace', 'id'),
            subjectId: BuiltValueNullFieldError.checkNotNull(
              subjectId,
              r'PolPlace',
              'subjectId',
            ),
            clusterId: BuiltValueNullFieldError.checkNotNull(
              clusterId,
              r'PolPlace',
              'clusterId',
            ),
            centroid: centroid.build(),
            radiusM: BuiltValueNullFieldError.checkNotNull(
              radiusM,
              r'PolPlace',
              'radiusM',
            ),
            visits: BuiltValueNullFieldError.checkNotNull(
              visits,
              r'PolPlace',
              'visits',
            ),
            totalDwellMinutes: BuiltValueNullFieldError.checkNotNull(
              totalDwellMinutes,
              r'PolPlace',
              'totalDwellMinutes',
            ),
            hourOfWeek: hourOfWeek.build(),
            firstSeen: BuiltValueNullFieldError.checkNotNull(
              firstSeen,
              r'PolPlace',
              'firstSeen',
            ),
            lastSeen: BuiltValueNullFieldError.checkNotNull(
              lastSeen,
              r'PolPlace',
              'lastSeen',
            ),
            label: label,
            private: private,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'centroid';
        centroid.build();

        _$failedField = 'hourOfWeek';
        hourOfWeek.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PolPlace',
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

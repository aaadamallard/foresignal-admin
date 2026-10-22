// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_run.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TripRunStatusEnum _$tripRunStatusEnum_delivered =
    const TripRunStatusEnum._('delivered');
const TripRunStatusEnum _$tripRunStatusEnum_skipped =
    const TripRunStatusEnum._('skipped');
const TripRunStatusEnum _$tripRunStatusEnum_dryRun =
    const TripRunStatusEnum._('dryRun');
const TripRunStatusEnum _$tripRunStatusEnum_failed =
    const TripRunStatusEnum._('failed');

TripRunStatusEnum _$tripRunStatusEnumValueOf(String name) {
  switch (name) {
    case 'delivered':
      return _$tripRunStatusEnum_delivered;
    case 'skipped':
      return _$tripRunStatusEnum_skipped;
    case 'dryRun':
      return _$tripRunStatusEnum_dryRun;
    case 'failed':
      return _$tripRunStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TripRunStatusEnum> _$tripRunStatusEnumValues =
    BuiltSet<TripRunStatusEnum>(const <TripRunStatusEnum>[
  _$tripRunStatusEnum_delivered,
  _$tripRunStatusEnum_skipped,
  _$tripRunStatusEnum_dryRun,
  _$tripRunStatusEnum_failed,
]);

Serializer<TripRunStatusEnum> _$tripRunStatusEnumSerializer =
    _$TripRunStatusEnumSerializer();

class _$TripRunStatusEnumSerializer
    implements PrimitiveSerializer<TripRunStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'delivered': 'delivered',
    'skipped': 'skipped',
    'dryRun': 'dry-run',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'delivered': 'delivered',
    'skipped': 'skipped',
    'dry-run': 'dryRun',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[TripRunStatusEnum];
  @override
  final String wireName = 'TripRunStatusEnum';

  @override
  Object serialize(Serializers serializers, TripRunStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TripRunStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TripRunStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TripRun extends TripRun {
  @override
  final String id;
  @override
  final String tripId;
  @override
  final DateTime occurrence;
  @override
  final TripRunStatusEnum status;
  @override
  final bool clear;
  @override
  final BuiltList<TripHazard> hazards;
  @override
  final String? briefing;
  @override
  final DateTime? deliveredAt;
  @override
  final DateTime createdAt;

  factory _$TripRun([void Function(TripRunBuilder)? updates]) =>
      (TripRunBuilder()..update(updates))._build();

  _$TripRun._(
      {required this.id,
      required this.tripId,
      required this.occurrence,
      required this.status,
      required this.clear,
      required this.hazards,
      this.briefing,
      this.deliveredAt,
      required this.createdAt})
      : super._();
  @override
  TripRun rebuild(void Function(TripRunBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TripRunBuilder toBuilder() => TripRunBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TripRun &&
        id == other.id &&
        tripId == other.tripId &&
        occurrence == other.occurrence &&
        status == other.status &&
        clear == other.clear &&
        hazards == other.hazards &&
        briefing == other.briefing &&
        deliveredAt == other.deliveredAt &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, tripId.hashCode);
    _$hash = $jc(_$hash, occurrence.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, clear.hashCode);
    _$hash = $jc(_$hash, hazards.hashCode);
    _$hash = $jc(_$hash, briefing.hashCode);
    _$hash = $jc(_$hash, deliveredAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TripRun')
          ..add('id', id)
          ..add('tripId', tripId)
          ..add('occurrence', occurrence)
          ..add('status', status)
          ..add('clear', clear)
          ..add('hazards', hazards)
          ..add('briefing', briefing)
          ..add('deliveredAt', deliveredAt)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class TripRunBuilder implements Builder<TripRun, TripRunBuilder> {
  _$TripRun? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _tripId;
  String? get tripId => _$this._tripId;
  set tripId(String? tripId) => _$this._tripId = tripId;

  DateTime? _occurrence;
  DateTime? get occurrence => _$this._occurrence;
  set occurrence(DateTime? occurrence) => _$this._occurrence = occurrence;

  TripRunStatusEnum? _status;
  TripRunStatusEnum? get status => _$this._status;
  set status(TripRunStatusEnum? status) => _$this._status = status;

  bool? _clear;
  bool? get clear => _$this._clear;
  set clear(bool? clear) => _$this._clear = clear;

  ListBuilder<TripHazard>? _hazards;
  ListBuilder<TripHazard> get hazards =>
      _$this._hazards ??= ListBuilder<TripHazard>();
  set hazards(ListBuilder<TripHazard>? hazards) => _$this._hazards = hazards;

  String? _briefing;
  String? get briefing => _$this._briefing;
  set briefing(String? briefing) => _$this._briefing = briefing;

  DateTime? _deliveredAt;
  DateTime? get deliveredAt => _$this._deliveredAt;
  set deliveredAt(DateTime? deliveredAt) => _$this._deliveredAt = deliveredAt;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  TripRunBuilder() {
    TripRun._defaults(this);
  }

  TripRunBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _tripId = $v.tripId;
      _occurrence = $v.occurrence;
      _status = $v.status;
      _clear = $v.clear;
      _hazards = $v.hazards.toBuilder();
      _briefing = $v.briefing;
      _deliveredAt = $v.deliveredAt;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TripRun other) {
    _$v = other as _$TripRun;
  }

  @override
  void update(void Function(TripRunBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TripRun build() => _build();

  _$TripRun _build() {
    _$TripRun _$result;
    try {
      _$result = _$v ??
          _$TripRun._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'TripRun', 'id'),
            tripId: BuiltValueNullFieldError.checkNotNull(
                tripId, r'TripRun', 'tripId'),
            occurrence: BuiltValueNullFieldError.checkNotNull(
                occurrence, r'TripRun', 'occurrence'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'TripRun', 'status'),
            clear: BuiltValueNullFieldError.checkNotNull(
                clear, r'TripRun', 'clear'),
            hazards: hazards.build(),
            briefing: briefing,
            deliveredAt: deliveredAt,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'TripRun', 'createdAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hazards';
        hazards.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TripRun', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_rollup_rebuild.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StatsRollupRebuildStatusEnum _$statsRollupRebuildStatusEnum_queued =
    const StatsRollupRebuildStatusEnum._('queued');
const StatsRollupRebuildStatusEnum _$statsRollupRebuildStatusEnum_running =
    const StatsRollupRebuildStatusEnum._('running');

StatsRollupRebuildStatusEnum _$statsRollupRebuildStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'queued':
      return _$statsRollupRebuildStatusEnum_queued;
    case 'running':
      return _$statsRollupRebuildStatusEnum_running;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StatsRollupRebuildStatusEnum>
_$statsRollupRebuildStatusEnumValues = BuiltSet<StatsRollupRebuildStatusEnum>(
  const <StatsRollupRebuildStatusEnum>[
    _$statsRollupRebuildStatusEnum_queued,
    _$statsRollupRebuildStatusEnum_running,
  ],
);

Serializer<StatsRollupRebuildStatusEnum>
_$statsRollupRebuildStatusEnumSerializer =
    _$StatsRollupRebuildStatusEnumSerializer();

class _$StatsRollupRebuildStatusEnumSerializer
    implements PrimitiveSerializer<StatsRollupRebuildStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'queued': 'queued',
    'running': 'running',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'queued': 'queued',
    'running': 'running',
  };

  @override
  final Iterable<Type> types = const <Type>[StatsRollupRebuildStatusEnum];
  @override
  final String wireName = 'StatsRollupRebuildStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    StatsRollupRebuildStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StatsRollupRebuildStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StatsRollupRebuildStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StatsRollupRebuild extends StatsRollupRebuild {
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final int? hours;
  @override
  final int? days;
  @override
  final StatsRollupRebuildStatusEnum status;

  factory _$StatsRollupRebuild([
    void Function(StatsRollupRebuildBuilder)? updates,
  ]) => (StatsRollupRebuildBuilder()..update(updates))._build();

  _$StatsRollupRebuild._({
    required this.from,
    required this.to,
    this.hours,
    this.days,
    required this.status,
  }) : super._();
  @override
  StatsRollupRebuild rebuild(
    void Function(StatsRollupRebuildBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StatsRollupRebuildBuilder toBuilder() =>
      StatsRollupRebuildBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsRollupRebuild &&
        from == other.from &&
        to == other.to &&
        hours == other.hours &&
        days == other.days &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, hours.hashCode);
    _$hash = $jc(_$hash, days.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatsRollupRebuild')
          ..add('from', from)
          ..add('to', to)
          ..add('hours', hours)
          ..add('days', days)
          ..add('status', status))
        .toString();
  }
}

class StatsRollupRebuildBuilder
    implements Builder<StatsRollupRebuild, StatsRollupRebuildBuilder> {
  _$StatsRollupRebuild? _$v;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  int? _hours;
  int? get hours => _$this._hours;
  set hours(int? hours) => _$this._hours = hours;

  int? _days;
  int? get days => _$this._days;
  set days(int? days) => _$this._days = days;

  StatsRollupRebuildStatusEnum? _status;
  StatsRollupRebuildStatusEnum? get status => _$this._status;
  set status(StatsRollupRebuildStatusEnum? status) => _$this._status = status;

  StatsRollupRebuildBuilder() {
    StatsRollupRebuild._defaults(this);
  }

  StatsRollupRebuildBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _hours = $v.hours;
      _days = $v.days;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsRollupRebuild other) {
    _$v = other as _$StatsRollupRebuild;
  }

  @override
  void update(void Function(StatsRollupRebuildBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatsRollupRebuild build() => _build();

  _$StatsRollupRebuild _build() {
    final _$result =
        _$v ??
        _$StatsRollupRebuild._(
          from: BuiltValueNullFieldError.checkNotNull(
            from,
            r'StatsRollupRebuild',
            'from',
          ),
          to: BuiltValueNullFieldError.checkNotNull(
            to,
            r'StatsRollupRebuild',
            'to',
          ),
          hours: hours,
          days: days,
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'StatsRollupRebuild',
            'status',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

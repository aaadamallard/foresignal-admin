// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_brief_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SituationBriefStatusStatusEnum _$situationBriefStatusStatusEnum_queued =
    const SituationBriefStatusStatusEnum._('queued');
const SituationBriefStatusStatusEnum _$situationBriefStatusStatusEnum_running =
    const SituationBriefStatusStatusEnum._('running');

SituationBriefStatusStatusEnum _$situationBriefStatusStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'queued':
      return _$situationBriefStatusStatusEnum_queued;
    case 'running':
      return _$situationBriefStatusStatusEnum_running;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SituationBriefStatusStatusEnum>
_$situationBriefStatusStatusEnumValues =
    BuiltSet<SituationBriefStatusStatusEnum>(
      const <SituationBriefStatusStatusEnum>[
        _$situationBriefStatusStatusEnum_queued,
        _$situationBriefStatusStatusEnum_running,
      ],
    );

Serializer<SituationBriefStatusStatusEnum>
_$situationBriefStatusStatusEnumSerializer =
    _$SituationBriefStatusStatusEnumSerializer();

class _$SituationBriefStatusStatusEnumSerializer
    implements PrimitiveSerializer<SituationBriefStatusStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'queued': 'queued',
    'running': 'running',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'queued': 'queued',
    'running': 'running',
  };

  @override
  final Iterable<Type> types = const <Type>[SituationBriefStatusStatusEnum];
  @override
  final String wireName = 'SituationBriefStatusStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    SituationBriefStatusStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SituationBriefStatusStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SituationBriefStatusStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SituationBriefStatus extends SituationBriefStatus {
  @override
  final String situationId;
  @override
  final SituationBriefStatusStatusEnum status;
  @override
  final DateTime requestedAt;
  @override
  final DateTime? previousBriefGeneratedAt;

  factory _$SituationBriefStatus([
    void Function(SituationBriefStatusBuilder)? updates,
  ]) => (SituationBriefStatusBuilder()..update(updates))._build();

  _$SituationBriefStatus._({
    required this.situationId,
    required this.status,
    required this.requestedAt,
    this.previousBriefGeneratedAt,
  }) : super._();
  @override
  SituationBriefStatus rebuild(
    void Function(SituationBriefStatusBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SituationBriefStatusBuilder toBuilder() =>
      SituationBriefStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationBriefStatus &&
        situationId == other.situationId &&
        status == other.status &&
        requestedAt == other.requestedAt &&
        previousBriefGeneratedAt == other.previousBriefGeneratedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, requestedAt.hashCode);
    _$hash = $jc(_$hash, previousBriefGeneratedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationBriefStatus')
          ..add('situationId', situationId)
          ..add('status', status)
          ..add('requestedAt', requestedAt)
          ..add('previousBriefGeneratedAt', previousBriefGeneratedAt))
        .toString();
  }
}

class SituationBriefStatusBuilder
    implements Builder<SituationBriefStatus, SituationBriefStatusBuilder> {
  _$SituationBriefStatus? _$v;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  SituationBriefStatusStatusEnum? _status;
  SituationBriefStatusStatusEnum? get status => _$this._status;
  set status(SituationBriefStatusStatusEnum? status) => _$this._status = status;

  DateTime? _requestedAt;
  DateTime? get requestedAt => _$this._requestedAt;
  set requestedAt(DateTime? requestedAt) => _$this._requestedAt = requestedAt;

  DateTime? _previousBriefGeneratedAt;
  DateTime? get previousBriefGeneratedAt => _$this._previousBriefGeneratedAt;
  set previousBriefGeneratedAt(DateTime? previousBriefGeneratedAt) =>
      _$this._previousBriefGeneratedAt = previousBriefGeneratedAt;

  SituationBriefStatusBuilder() {
    SituationBriefStatus._defaults(this);
  }

  SituationBriefStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _situationId = $v.situationId;
      _status = $v.status;
      _requestedAt = $v.requestedAt;
      _previousBriefGeneratedAt = $v.previousBriefGeneratedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationBriefStatus other) {
    _$v = other as _$SituationBriefStatus;
  }

  @override
  void update(void Function(SituationBriefStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationBriefStatus build() => _build();

  _$SituationBriefStatus _build() {
    final _$result =
        _$v ??
        _$SituationBriefStatus._(
          situationId: BuiltValueNullFieldError.checkNotNull(
            situationId,
            r'SituationBriefStatus',
            'situationId',
          ),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'SituationBriefStatus',
            'status',
          ),
          requestedAt: BuiltValueNullFieldError.checkNotNull(
            requestedAt,
            r'SituationBriefStatus',
            'requestedAt',
          ),
          previousBriefGeneratedAt: previousBriefGeneratedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

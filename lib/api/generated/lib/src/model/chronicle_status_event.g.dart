// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_status_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChronicleStatusEventStatusEnum _$chronicleStatusEventStatusEnum_proposed =
    const ChronicleStatusEventStatusEnum._('proposed');
const ChronicleStatusEventStatusEnum _$chronicleStatusEventStatusEnum_active =
    const ChronicleStatusEventStatusEnum._('active');
const ChronicleStatusEventStatusEnum _$chronicleStatusEventStatusEnum_paused =
    const ChronicleStatusEventStatusEnum._('paused');
const ChronicleStatusEventStatusEnum _$chronicleStatusEventStatusEnum_stopped =
    const ChronicleStatusEventStatusEnum._('stopped');
const ChronicleStatusEventStatusEnum _$chronicleStatusEventStatusEnum_archived =
    const ChronicleStatusEventStatusEnum._('archived');

ChronicleStatusEventStatusEnum _$chronicleStatusEventStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'proposed':
      return _$chronicleStatusEventStatusEnum_proposed;
    case 'active':
      return _$chronicleStatusEventStatusEnum_active;
    case 'paused':
      return _$chronicleStatusEventStatusEnum_paused;
    case 'stopped':
      return _$chronicleStatusEventStatusEnum_stopped;
    case 'archived':
      return _$chronicleStatusEventStatusEnum_archived;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChronicleStatusEventStatusEnum>
_$chronicleStatusEventStatusEnumValues =
    BuiltSet<ChronicleStatusEventStatusEnum>(
      const <ChronicleStatusEventStatusEnum>[
        _$chronicleStatusEventStatusEnum_proposed,
        _$chronicleStatusEventStatusEnum_active,
        _$chronicleStatusEventStatusEnum_paused,
        _$chronicleStatusEventStatusEnum_stopped,
        _$chronicleStatusEventStatusEnum_archived,
      ],
    );

const ChronicleStatusEventPreviousStatusEnum
_$chronicleStatusEventPreviousStatusEnum_proposed =
    const ChronicleStatusEventPreviousStatusEnum._('proposed');
const ChronicleStatusEventPreviousStatusEnum
_$chronicleStatusEventPreviousStatusEnum_active =
    const ChronicleStatusEventPreviousStatusEnum._('active');
const ChronicleStatusEventPreviousStatusEnum
_$chronicleStatusEventPreviousStatusEnum_paused =
    const ChronicleStatusEventPreviousStatusEnum._('paused');
const ChronicleStatusEventPreviousStatusEnum
_$chronicleStatusEventPreviousStatusEnum_stopped =
    const ChronicleStatusEventPreviousStatusEnum._('stopped');
const ChronicleStatusEventPreviousStatusEnum
_$chronicleStatusEventPreviousStatusEnum_archived =
    const ChronicleStatusEventPreviousStatusEnum._('archived');

ChronicleStatusEventPreviousStatusEnum
_$chronicleStatusEventPreviousStatusEnumValueOf(String name) {
  switch (name) {
    case 'proposed':
      return _$chronicleStatusEventPreviousStatusEnum_proposed;
    case 'active':
      return _$chronicleStatusEventPreviousStatusEnum_active;
    case 'paused':
      return _$chronicleStatusEventPreviousStatusEnum_paused;
    case 'stopped':
      return _$chronicleStatusEventPreviousStatusEnum_stopped;
    case 'archived':
      return _$chronicleStatusEventPreviousStatusEnum_archived;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChronicleStatusEventPreviousStatusEnum>
_$chronicleStatusEventPreviousStatusEnumValues =
    BuiltSet<ChronicleStatusEventPreviousStatusEnum>(
      const <ChronicleStatusEventPreviousStatusEnum>[
        _$chronicleStatusEventPreviousStatusEnum_proposed,
        _$chronicleStatusEventPreviousStatusEnum_active,
        _$chronicleStatusEventPreviousStatusEnum_paused,
        _$chronicleStatusEventPreviousStatusEnum_stopped,
        _$chronicleStatusEventPreviousStatusEnum_archived,
      ],
    );

const ChronicleStatusEventCapStateEnum _$chronicleStatusEventCapStateEnum_ok =
    const ChronicleStatusEventCapStateEnum._('ok');
const ChronicleStatusEventCapStateEnum
_$chronicleStatusEventCapStateEnum_warning =
    const ChronicleStatusEventCapStateEnum._('warning');
const ChronicleStatusEventCapStateEnum
_$chronicleStatusEventCapStateEnum_exceeded =
    const ChronicleStatusEventCapStateEnum._('exceeded');

ChronicleStatusEventCapStateEnum _$chronicleStatusEventCapStateEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ok':
      return _$chronicleStatusEventCapStateEnum_ok;
    case 'warning':
      return _$chronicleStatusEventCapStateEnum_warning;
    case 'exceeded':
      return _$chronicleStatusEventCapStateEnum_exceeded;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChronicleStatusEventCapStateEnum>
_$chronicleStatusEventCapStateEnumValues =
    BuiltSet<ChronicleStatusEventCapStateEnum>(
      const <ChronicleStatusEventCapStateEnum>[
        _$chronicleStatusEventCapStateEnum_ok,
        _$chronicleStatusEventCapStateEnum_warning,
        _$chronicleStatusEventCapStateEnum_exceeded,
      ],
    );

Serializer<ChronicleStatusEventStatusEnum>
_$chronicleStatusEventStatusEnumSerializer =
    _$ChronicleStatusEventStatusEnumSerializer();
Serializer<ChronicleStatusEventPreviousStatusEnum>
_$chronicleStatusEventPreviousStatusEnumSerializer =
    _$ChronicleStatusEventPreviousStatusEnumSerializer();
Serializer<ChronicleStatusEventCapStateEnum>
_$chronicleStatusEventCapStateEnumSerializer =
    _$ChronicleStatusEventCapStateEnumSerializer();

class _$ChronicleStatusEventStatusEnumSerializer
    implements PrimitiveSerializer<ChronicleStatusEventStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'proposed': 'proposed',
    'active': 'active',
    'paused': 'paused',
    'stopped': 'stopped',
    'archived': 'archived',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'proposed': 'proposed',
    'active': 'active',
    'paused': 'paused',
    'stopped': 'stopped',
    'archived': 'archived',
  };

  @override
  final Iterable<Type> types = const <Type>[ChronicleStatusEventStatusEnum];
  @override
  final String wireName = 'ChronicleStatusEventStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChronicleStatusEventStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChronicleStatusEventStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChronicleStatusEventStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChronicleStatusEventPreviousStatusEnumSerializer
    implements PrimitiveSerializer<ChronicleStatusEventPreviousStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'proposed': 'proposed',
    'active': 'active',
    'paused': 'paused',
    'stopped': 'stopped',
    'archived': 'archived',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'proposed': 'proposed',
    'active': 'active',
    'paused': 'paused',
    'stopped': 'stopped',
    'archived': 'archived',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChronicleStatusEventPreviousStatusEnum,
  ];
  @override
  final String wireName = 'ChronicleStatusEventPreviousStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChronicleStatusEventPreviousStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChronicleStatusEventPreviousStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChronicleStatusEventPreviousStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChronicleStatusEventCapStateEnumSerializer
    implements PrimitiveSerializer<ChronicleStatusEventCapStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'warning': 'warning',
    'exceeded': 'exceeded',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'warning': 'warning',
    'exceeded': 'exceeded',
  };

  @override
  final Iterable<Type> types = const <Type>[ChronicleStatusEventCapStateEnum];
  @override
  final String wireName = 'ChronicleStatusEventCapStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChronicleStatusEventCapStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChronicleStatusEventCapStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChronicleStatusEventCapStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChronicleStatusEvent extends ChronicleStatusEvent {
  @override
  final String chronicleId;
  @override
  final ChronicleStatusEventStatusEnum status;
  @override
  final ChronicleStatusEventPreviousStatusEnum? previousStatus;
  @override
  final ChronicleStatusEventCapStateEnum? capState;
  @override
  final int? bytesUsed;
  @override
  final String? reason;
  @override
  final DateTime at;

  factory _$ChronicleStatusEvent([
    void Function(ChronicleStatusEventBuilder)? updates,
  ]) => (ChronicleStatusEventBuilder()..update(updates))._build();

  _$ChronicleStatusEvent._({
    required this.chronicleId,
    required this.status,
    this.previousStatus,
    this.capState,
    this.bytesUsed,
    this.reason,
    required this.at,
  }) : super._();
  @override
  ChronicleStatusEvent rebuild(
    void Function(ChronicleStatusEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleStatusEventBuilder toBuilder() =>
      ChronicleStatusEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleStatusEvent &&
        chronicleId == other.chronicleId &&
        status == other.status &&
        previousStatus == other.previousStatus &&
        capState == other.capState &&
        bytesUsed == other.bytesUsed &&
        reason == other.reason &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, chronicleId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, previousStatus.hashCode);
    _$hash = $jc(_$hash, capState.hashCode);
    _$hash = $jc(_$hash, bytesUsed.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleStatusEvent')
          ..add('chronicleId', chronicleId)
          ..add('status', status)
          ..add('previousStatus', previousStatus)
          ..add('capState', capState)
          ..add('bytesUsed', bytesUsed)
          ..add('reason', reason)
          ..add('at', at))
        .toString();
  }
}

class ChronicleStatusEventBuilder
    implements Builder<ChronicleStatusEvent, ChronicleStatusEventBuilder> {
  _$ChronicleStatusEvent? _$v;

  String? _chronicleId;
  String? get chronicleId => _$this._chronicleId;
  set chronicleId(String? chronicleId) => _$this._chronicleId = chronicleId;

  ChronicleStatusEventStatusEnum? _status;
  ChronicleStatusEventStatusEnum? get status => _$this._status;
  set status(ChronicleStatusEventStatusEnum? status) => _$this._status = status;

  ChronicleStatusEventPreviousStatusEnum? _previousStatus;
  ChronicleStatusEventPreviousStatusEnum? get previousStatus =>
      _$this._previousStatus;
  set previousStatus(ChronicleStatusEventPreviousStatusEnum? previousStatus) =>
      _$this._previousStatus = previousStatus;

  ChronicleStatusEventCapStateEnum? _capState;
  ChronicleStatusEventCapStateEnum? get capState => _$this._capState;
  set capState(ChronicleStatusEventCapStateEnum? capState) =>
      _$this._capState = capState;

  int? _bytesUsed;
  int? get bytesUsed => _$this._bytesUsed;
  set bytesUsed(int? bytesUsed) => _$this._bytesUsed = bytesUsed;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ChronicleStatusEventBuilder() {
    ChronicleStatusEvent._defaults(this);
  }

  ChronicleStatusEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chronicleId = $v.chronicleId;
      _status = $v.status;
      _previousStatus = $v.previousStatus;
      _capState = $v.capState;
      _bytesUsed = $v.bytesUsed;
      _reason = $v.reason;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleStatusEvent other) {
    _$v = other as _$ChronicleStatusEvent;
  }

  @override
  void update(void Function(ChronicleStatusEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleStatusEvent build() => _build();

  _$ChronicleStatusEvent _build() {
    final _$result =
        _$v ??
        _$ChronicleStatusEvent._(
          chronicleId: BuiltValueNullFieldError.checkNotNull(
            chronicleId,
            r'ChronicleStatusEvent',
            'chronicleId',
          ),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'ChronicleStatusEvent',
            'status',
          ),
          previousStatus: previousStatus,
          capState: capState,
          bytesUsed: bytesUsed,
          reason: reason,
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'ChronicleStatusEvent',
            'at',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

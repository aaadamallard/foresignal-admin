// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AskActionTypeEnum _$askActionTypeEnum_createWatch =
    const AskActionTypeEnum._('createWatch');
const AskActionTypeEnum _$askActionTypeEnum_updateWatch =
    const AskActionTypeEnum._('updateWatch');
const AskActionTypeEnum _$askActionTypeEnum_createBriefing =
    const AskActionTypeEnum._('createBriefing');
const AskActionTypeEnum _$askActionTypeEnum_acknowledgeAlert =
    const AskActionTypeEnum._('acknowledgeAlert');
const AskActionTypeEnum _$askActionTypeEnum_alertStatus =
    const AskActionTypeEnum._('alertStatus');
const AskActionTypeEnum _$askActionTypeEnum_snoozeAlert =
    const AskActionTypeEnum._('snoozeAlert');
const AskActionTypeEnum _$askActionTypeEnum_createView =
    const AskActionTypeEnum._('createView');
const AskActionTypeEnum _$askActionTypeEnum_setAlertFeedback =
    const AskActionTypeEnum._('setAlertFeedback');
const AskActionTypeEnum _$askActionTypeEnum_applyTuningSuggestion =
    const AskActionTypeEnum._('applyTuningSuggestion');

AskActionTypeEnum _$askActionTypeEnumValueOf(String name) {
  switch (name) {
    case 'createWatch':
      return _$askActionTypeEnum_createWatch;
    case 'updateWatch':
      return _$askActionTypeEnum_updateWatch;
    case 'createBriefing':
      return _$askActionTypeEnum_createBriefing;
    case 'acknowledgeAlert':
      return _$askActionTypeEnum_acknowledgeAlert;
    case 'alertStatus':
      return _$askActionTypeEnum_alertStatus;
    case 'snoozeAlert':
      return _$askActionTypeEnum_snoozeAlert;
    case 'createView':
      return _$askActionTypeEnum_createView;
    case 'setAlertFeedback':
      return _$askActionTypeEnum_setAlertFeedback;
    case 'applyTuningSuggestion':
      return _$askActionTypeEnum_applyTuningSuggestion;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AskActionTypeEnum> _$askActionTypeEnumValues =
    BuiltSet<AskActionTypeEnum>(const <AskActionTypeEnum>[
      _$askActionTypeEnum_createWatch,
      _$askActionTypeEnum_updateWatch,
      _$askActionTypeEnum_createBriefing,
      _$askActionTypeEnum_acknowledgeAlert,
      _$askActionTypeEnum_alertStatus,
      _$askActionTypeEnum_snoozeAlert,
      _$askActionTypeEnum_createView,
      _$askActionTypeEnum_setAlertFeedback,
      _$askActionTypeEnum_applyTuningSuggestion,
    ]);

const AskActionStatusEnum _$askActionStatusEnum_pending =
    const AskActionStatusEnum._('pending');
const AskActionStatusEnum _$askActionStatusEnum_executed =
    const AskActionStatusEnum._('executed');
const AskActionStatusEnum _$askActionStatusEnum_rejected =
    const AskActionStatusEnum._('rejected');
const AskActionStatusEnum _$askActionStatusEnum_failed =
    const AskActionStatusEnum._('failed');

AskActionStatusEnum _$askActionStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$askActionStatusEnum_pending;
    case 'executed':
      return _$askActionStatusEnum_executed;
    case 'rejected':
      return _$askActionStatusEnum_rejected;
    case 'failed':
      return _$askActionStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AskActionStatusEnum> _$askActionStatusEnumValues =
    BuiltSet<AskActionStatusEnum>(const <AskActionStatusEnum>[
      _$askActionStatusEnum_pending,
      _$askActionStatusEnum_executed,
      _$askActionStatusEnum_rejected,
      _$askActionStatusEnum_failed,
    ]);

Serializer<AskActionTypeEnum> _$askActionTypeEnumSerializer =
    _$AskActionTypeEnumSerializer();
Serializer<AskActionStatusEnum> _$askActionStatusEnumSerializer =
    _$AskActionStatusEnumSerializer();

class _$AskActionTypeEnumSerializer
    implements PrimitiveSerializer<AskActionTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'createWatch': 'create_watch',
    'updateWatch': 'update_watch',
    'createBriefing': 'create_briefing',
    'acknowledgeAlert': 'acknowledge_alert',
    'alertStatus': 'alert_status',
    'snoozeAlert': 'snooze_alert',
    'createView': 'create_view',
    'setAlertFeedback': 'set_alert_feedback',
    'applyTuningSuggestion': 'apply_tuning_suggestion',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'create_watch': 'createWatch',
    'update_watch': 'updateWatch',
    'create_briefing': 'createBriefing',
    'acknowledge_alert': 'acknowledgeAlert',
    'alert_status': 'alertStatus',
    'snooze_alert': 'snoozeAlert',
    'create_view': 'createView',
    'set_alert_feedback': 'setAlertFeedback',
    'apply_tuning_suggestion': 'applyTuningSuggestion',
  };

  @override
  final Iterable<Type> types = const <Type>[AskActionTypeEnum];
  @override
  final String wireName = 'AskActionTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    AskActionTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AskActionTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AskActionTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AskActionStatusEnumSerializer
    implements PrimitiveSerializer<AskActionStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'executed': 'executed',
    'rejected': 'rejected',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'executed': 'executed',
    'rejected': 'rejected',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[AskActionStatusEnum];
  @override
  final String wireName = 'AskActionStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    AskActionStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AskActionStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AskActionStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AskAction extends AskAction {
  @override
  final String id;
  @override
  final AskActionTypeEnum type;
  @override
  final String description;
  @override
  final BuiltMap<String, JsonObject?>? payload;
  @override
  final AskActionStatusEnum status;
  @override
  final BuiltMap<String, JsonObject?>? result;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? executedAt;

  factory _$AskAction([void Function(AskActionBuilder)? updates]) =>
      (AskActionBuilder()..update(updates))._build();

  _$AskAction._({
    required this.id,
    required this.type,
    required this.description,
    this.payload,
    required this.status,
    this.result,
    this.createdAt,
    this.executedAt,
  }) : super._();
  @override
  AskAction rebuild(void Function(AskActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AskActionBuilder toBuilder() => AskActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AskAction &&
        id == other.id &&
        type == other.type &&
        description == other.description &&
        payload == other.payload &&
        status == other.status &&
        result == other.result &&
        createdAt == other.createdAt &&
        executedAt == other.executedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, executedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AskAction')
          ..add('id', id)
          ..add('type', type)
          ..add('description', description)
          ..add('payload', payload)
          ..add('status', status)
          ..add('result', result)
          ..add('createdAt', createdAt)
          ..add('executedAt', executedAt))
        .toString();
  }
}

class AskActionBuilder implements Builder<AskAction, AskActionBuilder> {
  _$AskAction? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AskActionTypeEnum? _type;
  AskActionTypeEnum? get type => _$this._type;
  set type(AskActionTypeEnum? type) => _$this._type = type;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  MapBuilder<String, JsonObject?>? _payload;
  MapBuilder<String, JsonObject?> get payload =>
      _$this._payload ??= MapBuilder<String, JsonObject?>();
  set payload(MapBuilder<String, JsonObject?>? payload) =>
      _$this._payload = payload;

  AskActionStatusEnum? _status;
  AskActionStatusEnum? get status => _$this._status;
  set status(AskActionStatusEnum? status) => _$this._status = status;

  MapBuilder<String, JsonObject?>? _result;
  MapBuilder<String, JsonObject?> get result =>
      _$this._result ??= MapBuilder<String, JsonObject?>();
  set result(MapBuilder<String, JsonObject?>? result) =>
      _$this._result = result;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _executedAt;
  DateTime? get executedAt => _$this._executedAt;
  set executedAt(DateTime? executedAt) => _$this._executedAt = executedAt;

  AskActionBuilder() {
    AskAction._defaults(this);
  }

  AskActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _description = $v.description;
      _payload = $v.payload?.toBuilder();
      _status = $v.status;
      _result = $v.result?.toBuilder();
      _createdAt = $v.createdAt;
      _executedAt = $v.executedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AskAction other) {
    _$v = other as _$AskAction;
  }

  @override
  void update(void Function(AskActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AskAction build() => _build();

  _$AskAction _build() {
    _$AskAction _$result;
    try {
      _$result =
          _$v ??
          _$AskAction._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'AskAction', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'AskAction',
              'type',
            ),
            description: BuiltValueNullFieldError.checkNotNull(
              description,
              r'AskAction',
              'description',
            ),
            payload: _payload?.build(),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'AskAction',
              'status',
            ),
            result: _result?.build(),
            createdAt: createdAt,
            executedAt: executedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'payload';
        _payload?.build();

        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AskAction',
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

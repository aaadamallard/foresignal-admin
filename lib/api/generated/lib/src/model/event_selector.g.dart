// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_selector.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EventSelectorMinSeverityEnum _$eventSelectorMinSeverityEnum_info =
    const EventSelectorMinSeverityEnum._('info');
const EventSelectorMinSeverityEnum _$eventSelectorMinSeverityEnum_warning =
    const EventSelectorMinSeverityEnum._('warning');
const EventSelectorMinSeverityEnum _$eventSelectorMinSeverityEnum_critical =
    const EventSelectorMinSeverityEnum._('critical');
const EventSelectorMinSeverityEnum _$eventSelectorMinSeverityEnum_notable =
    const EventSelectorMinSeverityEnum._('notable');
const EventSelectorMinSeverityEnum _$eventSelectorMinSeverityEnum_significant =
    const EventSelectorMinSeverityEnum._('significant');
const EventSelectorMinSeverityEnum
_$eventSelectorMinSeverityEnum_unknownDefaultOpenApi =
    const EventSelectorMinSeverityEnum._('unknownDefaultOpenApi');

EventSelectorMinSeverityEnum _$eventSelectorMinSeverityEnumValueOf(
  String name,
) {
  switch (name) {
    case 'info':
      return _$eventSelectorMinSeverityEnum_info;
    case 'warning':
      return _$eventSelectorMinSeverityEnum_warning;
    case 'critical':
      return _$eventSelectorMinSeverityEnum_critical;
    case 'notable':
      return _$eventSelectorMinSeverityEnum_notable;
    case 'significant':
      return _$eventSelectorMinSeverityEnum_significant;
    case 'unknownDefaultOpenApi':
      return _$eventSelectorMinSeverityEnum_unknownDefaultOpenApi;
    default:
      return _$eventSelectorMinSeverityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<EventSelectorMinSeverityEnum>
_$eventSelectorMinSeverityEnumValues =
    BuiltSet<EventSelectorMinSeverityEnum>(const <EventSelectorMinSeverityEnum>[
      _$eventSelectorMinSeverityEnum_info,
      _$eventSelectorMinSeverityEnum_warning,
      _$eventSelectorMinSeverityEnum_critical,
      _$eventSelectorMinSeverityEnum_notable,
      _$eventSelectorMinSeverityEnum_significant,
      _$eventSelectorMinSeverityEnum_unknownDefaultOpenApi,
    ]);

Serializer<EventSelectorMinSeverityEnum>
_$eventSelectorMinSeverityEnumSerializer =
    _$EventSelectorMinSeverityEnumSerializer();

class _$EventSelectorMinSeverityEnumSerializer
    implements PrimitiveSerializer<EventSelectorMinSeverityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
    'notable': 'notable',
    'significant': 'significant',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
    'notable': 'notable',
    'significant': 'significant',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[EventSelectorMinSeverityEnum];
  @override
  final String wireName = 'EventSelectorMinSeverityEnum';

  @override
  Object serialize(
    Serializers serializers,
    EventSelectorMinSeverityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EventSelectorMinSeverityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EventSelectorMinSeverityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EventSelector extends EventSelector {
  @override
  final BuiltMap<String, JsonObject?>? rule;
  @override
  final String? alertRuleId;
  @override
  final String? alertRuleTag;
  @override
  final String? intelEventType;
  @override
  final String? anomalyRuleId;
  @override
  final String? classification;
  @override
  final EventSelectorSituationActivated? situationActivated;
  @override
  final EventSelectorChangePoint? changePoint;
  @override
  final EventSelectorUnexplainedMove? unexplainedMove;
  @override
  final String? referenceFamily;
  @override
  final BuiltList<DateTime>? timestamps;
  @override
  final EventSelectorMinSeverityEnum? minSeverity;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final String? label;

  factory _$EventSelector([void Function(EventSelectorBuilder)? updates]) =>
      (EventSelectorBuilder()..update(updates))._build();

  _$EventSelector._({
    this.rule,
    this.alertRuleId,
    this.alertRuleTag,
    this.intelEventType,
    this.anomalyRuleId,
    this.classification,
    this.situationActivated,
    this.changePoint,
    this.unexplainedMove,
    this.referenceFamily,
    this.timestamps,
    this.minSeverity,
    this.regionCodes,
    this.label,
  }) : super._();
  @override
  EventSelector rebuild(void Function(EventSelectorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventSelectorBuilder toBuilder() => EventSelectorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventSelector &&
        rule == other.rule &&
        alertRuleId == other.alertRuleId &&
        alertRuleTag == other.alertRuleTag &&
        intelEventType == other.intelEventType &&
        anomalyRuleId == other.anomalyRuleId &&
        classification == other.classification &&
        situationActivated == other.situationActivated &&
        changePoint == other.changePoint &&
        unexplainedMove == other.unexplainedMove &&
        referenceFamily == other.referenceFamily &&
        timestamps == other.timestamps &&
        minSeverity == other.minSeverity &&
        regionCodes == other.regionCodes &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rule.hashCode);
    _$hash = $jc(_$hash, alertRuleId.hashCode);
    _$hash = $jc(_$hash, alertRuleTag.hashCode);
    _$hash = $jc(_$hash, intelEventType.hashCode);
    _$hash = $jc(_$hash, anomalyRuleId.hashCode);
    _$hash = $jc(_$hash, classification.hashCode);
    _$hash = $jc(_$hash, situationActivated.hashCode);
    _$hash = $jc(_$hash, changePoint.hashCode);
    _$hash = $jc(_$hash, unexplainedMove.hashCode);
    _$hash = $jc(_$hash, referenceFamily.hashCode);
    _$hash = $jc(_$hash, timestamps.hashCode);
    _$hash = $jc(_$hash, minSeverity.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventSelector')
          ..add('rule', rule)
          ..add('alertRuleId', alertRuleId)
          ..add('alertRuleTag', alertRuleTag)
          ..add('intelEventType', intelEventType)
          ..add('anomalyRuleId', anomalyRuleId)
          ..add('classification', classification)
          ..add('situationActivated', situationActivated)
          ..add('changePoint', changePoint)
          ..add('unexplainedMove', unexplainedMove)
          ..add('referenceFamily', referenceFamily)
          ..add('timestamps', timestamps)
          ..add('minSeverity', minSeverity)
          ..add('regionCodes', regionCodes)
          ..add('label', label))
        .toString();
  }
}

class EventSelectorBuilder
    implements Builder<EventSelector, EventSelectorBuilder> {
  _$EventSelector? _$v;

  MapBuilder<String, JsonObject?>? _rule;
  MapBuilder<String, JsonObject?> get rule =>
      _$this._rule ??= MapBuilder<String, JsonObject?>();
  set rule(MapBuilder<String, JsonObject?>? rule) => _$this._rule = rule;

  String? _alertRuleId;
  String? get alertRuleId => _$this._alertRuleId;
  set alertRuleId(String? alertRuleId) => _$this._alertRuleId = alertRuleId;

  String? _alertRuleTag;
  String? get alertRuleTag => _$this._alertRuleTag;
  set alertRuleTag(String? alertRuleTag) => _$this._alertRuleTag = alertRuleTag;

  String? _intelEventType;
  String? get intelEventType => _$this._intelEventType;
  set intelEventType(String? intelEventType) =>
      _$this._intelEventType = intelEventType;

  String? _anomalyRuleId;
  String? get anomalyRuleId => _$this._anomalyRuleId;
  set anomalyRuleId(String? anomalyRuleId) =>
      _$this._anomalyRuleId = anomalyRuleId;

  String? _classification;
  String? get classification => _$this._classification;
  set classification(String? classification) =>
      _$this._classification = classification;

  EventSelectorSituationActivatedBuilder? _situationActivated;
  EventSelectorSituationActivatedBuilder get situationActivated =>
      _$this._situationActivated ??= EventSelectorSituationActivatedBuilder();
  set situationActivated(
    EventSelectorSituationActivatedBuilder? situationActivated,
  ) => _$this._situationActivated = situationActivated;

  EventSelectorChangePointBuilder? _changePoint;
  EventSelectorChangePointBuilder get changePoint =>
      _$this._changePoint ??= EventSelectorChangePointBuilder();
  set changePoint(EventSelectorChangePointBuilder? changePoint) =>
      _$this._changePoint = changePoint;

  EventSelectorUnexplainedMoveBuilder? _unexplainedMove;
  EventSelectorUnexplainedMoveBuilder get unexplainedMove =>
      _$this._unexplainedMove ??= EventSelectorUnexplainedMoveBuilder();
  set unexplainedMove(EventSelectorUnexplainedMoveBuilder? unexplainedMove) =>
      _$this._unexplainedMove = unexplainedMove;

  String? _referenceFamily;
  String? get referenceFamily => _$this._referenceFamily;
  set referenceFamily(String? referenceFamily) =>
      _$this._referenceFamily = referenceFamily;

  ListBuilder<DateTime>? _timestamps;
  ListBuilder<DateTime> get timestamps =>
      _$this._timestamps ??= ListBuilder<DateTime>();
  set timestamps(ListBuilder<DateTime>? timestamps) =>
      _$this._timestamps = timestamps;

  EventSelectorMinSeverityEnum? _minSeverity;
  EventSelectorMinSeverityEnum? get minSeverity => _$this._minSeverity;
  set minSeverity(EventSelectorMinSeverityEnum? minSeverity) =>
      _$this._minSeverity = minSeverity;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  EventSelectorBuilder() {
    EventSelector._defaults(this);
  }

  EventSelectorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rule = $v.rule?.toBuilder();
      _alertRuleId = $v.alertRuleId;
      _alertRuleTag = $v.alertRuleTag;
      _intelEventType = $v.intelEventType;
      _anomalyRuleId = $v.anomalyRuleId;
      _classification = $v.classification;
      _situationActivated = $v.situationActivated?.toBuilder();
      _changePoint = $v.changePoint?.toBuilder();
      _unexplainedMove = $v.unexplainedMove?.toBuilder();
      _referenceFamily = $v.referenceFamily;
      _timestamps = $v.timestamps?.toBuilder();
      _minSeverity = $v.minSeverity;
      _regionCodes = $v.regionCodes?.toBuilder();
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventSelector other) {
    _$v = other as _$EventSelector;
  }

  @override
  void update(void Function(EventSelectorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventSelector build() => _build();

  _$EventSelector _build() {
    _$EventSelector _$result;
    try {
      _$result =
          _$v ??
          _$EventSelector._(
            rule: _rule?.build(),
            alertRuleId: alertRuleId,
            alertRuleTag: alertRuleTag,
            intelEventType: intelEventType,
            anomalyRuleId: anomalyRuleId,
            classification: classification,
            situationActivated: _situationActivated?.build(),
            changePoint: _changePoint?.build(),
            unexplainedMove: _unexplainedMove?.build(),
            referenceFamily: referenceFamily,
            timestamps: _timestamps?.build(),
            minSeverity: minSeverity,
            regionCodes: _regionCodes?.build(),
            label: label,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rule';
        _rule?.build();

        _$failedField = 'situationActivated';
        _situationActivated?.build();
        _$failedField = 'changePoint';
        _changePoint?.build();
        _$failedField = 'unexplainedMove';
        _unexplainedMove?.build();

        _$failedField = 'timestamps';
        _timestamps?.build();

        _$failedField = 'regionCodes';
        _regionCodes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EventSelector',
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

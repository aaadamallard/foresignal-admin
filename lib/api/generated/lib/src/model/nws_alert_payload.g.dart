// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nws_alert_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NwsAlertPayloadSeverityEnum _$nwsAlertPayloadSeverityEnum_extreme =
    const NwsAlertPayloadSeverityEnum._('extreme');
const NwsAlertPayloadSeverityEnum _$nwsAlertPayloadSeverityEnum_severe =
    const NwsAlertPayloadSeverityEnum._('severe');
const NwsAlertPayloadSeverityEnum _$nwsAlertPayloadSeverityEnum_moderate =
    const NwsAlertPayloadSeverityEnum._('moderate');
const NwsAlertPayloadSeverityEnum _$nwsAlertPayloadSeverityEnum_minor =
    const NwsAlertPayloadSeverityEnum._('minor');
const NwsAlertPayloadSeverityEnum _$nwsAlertPayloadSeverityEnum_unknown =
    const NwsAlertPayloadSeverityEnum._('unknown');
const NwsAlertPayloadSeverityEnum
_$nwsAlertPayloadSeverityEnum_unknownDefaultOpenApi =
    const NwsAlertPayloadSeverityEnum._('unknownDefaultOpenApi');

NwsAlertPayloadSeverityEnum _$nwsAlertPayloadSeverityEnumValueOf(String name) {
  switch (name) {
    case 'extreme':
      return _$nwsAlertPayloadSeverityEnum_extreme;
    case 'severe':
      return _$nwsAlertPayloadSeverityEnum_severe;
    case 'moderate':
      return _$nwsAlertPayloadSeverityEnum_moderate;
    case 'minor':
      return _$nwsAlertPayloadSeverityEnum_minor;
    case 'unknown':
      return _$nwsAlertPayloadSeverityEnum_unknown;
    case 'unknownDefaultOpenApi':
      return _$nwsAlertPayloadSeverityEnum_unknownDefaultOpenApi;
    default:
      return _$nwsAlertPayloadSeverityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NwsAlertPayloadSeverityEnum>
_$nwsAlertPayloadSeverityEnumValues =
    BuiltSet<NwsAlertPayloadSeverityEnum>(const <NwsAlertPayloadSeverityEnum>[
      _$nwsAlertPayloadSeverityEnum_extreme,
      _$nwsAlertPayloadSeverityEnum_severe,
      _$nwsAlertPayloadSeverityEnum_moderate,
      _$nwsAlertPayloadSeverityEnum_minor,
      _$nwsAlertPayloadSeverityEnum_unknown,
      _$nwsAlertPayloadSeverityEnum_unknownDefaultOpenApi,
    ]);

const NwsAlertPayloadMessageTypeEnum _$nwsAlertPayloadMessageTypeEnum_alert =
    const NwsAlertPayloadMessageTypeEnum._('alert');
const NwsAlertPayloadMessageTypeEnum _$nwsAlertPayloadMessageTypeEnum_update =
    const NwsAlertPayloadMessageTypeEnum._('update');
const NwsAlertPayloadMessageTypeEnum _$nwsAlertPayloadMessageTypeEnum_cancel =
    const NwsAlertPayloadMessageTypeEnum._('cancel');
const NwsAlertPayloadMessageTypeEnum
_$nwsAlertPayloadMessageTypeEnum_unknownDefaultOpenApi =
    const NwsAlertPayloadMessageTypeEnum._('unknownDefaultOpenApi');

NwsAlertPayloadMessageTypeEnum _$nwsAlertPayloadMessageTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'alert':
      return _$nwsAlertPayloadMessageTypeEnum_alert;
    case 'update':
      return _$nwsAlertPayloadMessageTypeEnum_update;
    case 'cancel':
      return _$nwsAlertPayloadMessageTypeEnum_cancel;
    case 'unknownDefaultOpenApi':
      return _$nwsAlertPayloadMessageTypeEnum_unknownDefaultOpenApi;
    default:
      return _$nwsAlertPayloadMessageTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NwsAlertPayloadMessageTypeEnum>
_$nwsAlertPayloadMessageTypeEnumValues =
    BuiltSet<NwsAlertPayloadMessageTypeEnum>(
      const <NwsAlertPayloadMessageTypeEnum>[
        _$nwsAlertPayloadMessageTypeEnum_alert,
        _$nwsAlertPayloadMessageTypeEnum_update,
        _$nwsAlertPayloadMessageTypeEnum_cancel,
        _$nwsAlertPayloadMessageTypeEnum_unknownDefaultOpenApi,
      ],
    );

const NwsAlertPayloadGeometrySourceEnum
_$nwsAlertPayloadGeometrySourceEnum_polygon =
    const NwsAlertPayloadGeometrySourceEnum._('polygon');
const NwsAlertPayloadGeometrySourceEnum
_$nwsAlertPayloadGeometrySourceEnum_countyUnion =
    const NwsAlertPayloadGeometrySourceEnum._('countyUnion');
const NwsAlertPayloadGeometrySourceEnum
_$nwsAlertPayloadGeometrySourceEnum_none =
    const NwsAlertPayloadGeometrySourceEnum._('none');
const NwsAlertPayloadGeometrySourceEnum
_$nwsAlertPayloadGeometrySourceEnum_unknownDefaultOpenApi =
    const NwsAlertPayloadGeometrySourceEnum._('unknownDefaultOpenApi');

NwsAlertPayloadGeometrySourceEnum _$nwsAlertPayloadGeometrySourceEnumValueOf(
  String name,
) {
  switch (name) {
    case 'polygon':
      return _$nwsAlertPayloadGeometrySourceEnum_polygon;
    case 'countyUnion':
      return _$nwsAlertPayloadGeometrySourceEnum_countyUnion;
    case 'none':
      return _$nwsAlertPayloadGeometrySourceEnum_none;
    case 'unknownDefaultOpenApi':
      return _$nwsAlertPayloadGeometrySourceEnum_unknownDefaultOpenApi;
    default:
      return _$nwsAlertPayloadGeometrySourceEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NwsAlertPayloadGeometrySourceEnum>
_$nwsAlertPayloadGeometrySourceEnumValues =
    BuiltSet<NwsAlertPayloadGeometrySourceEnum>(
      const <NwsAlertPayloadGeometrySourceEnum>[
        _$nwsAlertPayloadGeometrySourceEnum_polygon,
        _$nwsAlertPayloadGeometrySourceEnum_countyUnion,
        _$nwsAlertPayloadGeometrySourceEnum_none,
        _$nwsAlertPayloadGeometrySourceEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<NwsAlertPayloadSeverityEnum>
_$nwsAlertPayloadSeverityEnumSerializer =
    _$NwsAlertPayloadSeverityEnumSerializer();
Serializer<NwsAlertPayloadMessageTypeEnum>
_$nwsAlertPayloadMessageTypeEnumSerializer =
    _$NwsAlertPayloadMessageTypeEnumSerializer();
Serializer<NwsAlertPayloadGeometrySourceEnum>
_$nwsAlertPayloadGeometrySourceEnumSerializer =
    _$NwsAlertPayloadGeometrySourceEnumSerializer();

class _$NwsAlertPayloadSeverityEnumSerializer
    implements PrimitiveSerializer<NwsAlertPayloadSeverityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'extreme': 'Extreme',
    'severe': 'Severe',
    'moderate': 'Moderate',
    'minor': 'Minor',
    'unknown': 'Unknown',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Extreme': 'extreme',
    'Severe': 'severe',
    'Moderate': 'moderate',
    'Minor': 'minor',
    'Unknown': 'unknown',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[NwsAlertPayloadSeverityEnum];
  @override
  final String wireName = 'NwsAlertPayloadSeverityEnum';

  @override
  Object serialize(
    Serializers serializers,
    NwsAlertPayloadSeverityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NwsAlertPayloadSeverityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NwsAlertPayloadSeverityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NwsAlertPayloadMessageTypeEnumSerializer
    implements PrimitiveSerializer<NwsAlertPayloadMessageTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'alert': 'Alert',
    'update': 'Update',
    'cancel': 'Cancel',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Alert': 'alert',
    'Update': 'update',
    'Cancel': 'cancel',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[NwsAlertPayloadMessageTypeEnum];
  @override
  final String wireName = 'NwsAlertPayloadMessageTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    NwsAlertPayloadMessageTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NwsAlertPayloadMessageTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NwsAlertPayloadMessageTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NwsAlertPayloadGeometrySourceEnumSerializer
    implements PrimitiveSerializer<NwsAlertPayloadGeometrySourceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'polygon': 'polygon',
    'countyUnion': 'county-union',
    'none': 'none',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'polygon': 'polygon',
    'county-union': 'countyUnion',
    'none': 'none',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[NwsAlertPayloadGeometrySourceEnum];
  @override
  final String wireName = 'NwsAlertPayloadGeometrySourceEnum';

  @override
  Object serialize(
    Serializers serializers,
    NwsAlertPayloadGeometrySourceEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NwsAlertPayloadGeometrySourceEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NwsAlertPayloadGeometrySourceEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NwsAlertPayload extends NwsAlertPayload {
  @override
  final String event;
  @override
  final String? eventCode;
  @override
  final String? headline;
  @override
  final NwsAlertPayloadSeverityEnum severity;
  @override
  final String? certainty;
  @override
  final String? urgency;
  @override
  final NwsAlertPayloadMessageTypeEnum? messageType;
  @override
  final String? category;
  @override
  final String? response;
  @override
  final String? senderName;
  @override
  final String? areaDesc;
  @override
  final DateTime? sent;
  @override
  final DateTime? effective;
  @override
  final DateTime? onset;
  @override
  final DateTime? expires;
  @override
  final DateTime? ends;
  @override
  final BuiltList<String>? ugc;
  @override
  final BuiltList<String>? same;
  @override
  final BuiltList<String>? vtec;
  @override
  final String? motion;
  @override
  final num? maxHailSizeIn;
  @override
  final num? maxWindGustMph;
  @override
  final String? tornadoDetection;
  @override
  final String? thunderstormDamageThreat;
  @override
  final String? description;
  @override
  final String? instruction;
  @override
  final String? web;
  @override
  final NwsAlertPayloadGeometrySourceEnum? geometrySource;

  factory _$NwsAlertPayload([void Function(NwsAlertPayloadBuilder)? updates]) =>
      (NwsAlertPayloadBuilder()..update(updates))._build();

  _$NwsAlertPayload._({
    required this.event,
    this.eventCode,
    this.headline,
    required this.severity,
    this.certainty,
    this.urgency,
    this.messageType,
    this.category,
    this.response,
    this.senderName,
    this.areaDesc,
    this.sent,
    this.effective,
    this.onset,
    this.expires,
    this.ends,
    this.ugc,
    this.same,
    this.vtec,
    this.motion,
    this.maxHailSizeIn,
    this.maxWindGustMph,
    this.tornadoDetection,
    this.thunderstormDamageThreat,
    this.description,
    this.instruction,
    this.web,
    this.geometrySource,
  }) : super._();
  @override
  NwsAlertPayload rebuild(void Function(NwsAlertPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NwsAlertPayloadBuilder toBuilder() => NwsAlertPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NwsAlertPayload &&
        event == other.event &&
        eventCode == other.eventCode &&
        headline == other.headline &&
        severity == other.severity &&
        certainty == other.certainty &&
        urgency == other.urgency &&
        messageType == other.messageType &&
        category == other.category &&
        response == other.response &&
        senderName == other.senderName &&
        areaDesc == other.areaDesc &&
        sent == other.sent &&
        effective == other.effective &&
        onset == other.onset &&
        expires == other.expires &&
        ends == other.ends &&
        ugc == other.ugc &&
        same == other.same &&
        vtec == other.vtec &&
        motion == other.motion &&
        maxHailSizeIn == other.maxHailSizeIn &&
        maxWindGustMph == other.maxWindGustMph &&
        tornadoDetection == other.tornadoDetection &&
        thunderstormDamageThreat == other.thunderstormDamageThreat &&
        description == other.description &&
        instruction == other.instruction &&
        web == other.web &&
        geometrySource == other.geometrySource;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, eventCode.hashCode);
    _$hash = $jc(_$hash, headline.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, certainty.hashCode);
    _$hash = $jc(_$hash, urgency.hashCode);
    _$hash = $jc(_$hash, messageType.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jc(_$hash, senderName.hashCode);
    _$hash = $jc(_$hash, areaDesc.hashCode);
    _$hash = $jc(_$hash, sent.hashCode);
    _$hash = $jc(_$hash, effective.hashCode);
    _$hash = $jc(_$hash, onset.hashCode);
    _$hash = $jc(_$hash, expires.hashCode);
    _$hash = $jc(_$hash, ends.hashCode);
    _$hash = $jc(_$hash, ugc.hashCode);
    _$hash = $jc(_$hash, same.hashCode);
    _$hash = $jc(_$hash, vtec.hashCode);
    _$hash = $jc(_$hash, motion.hashCode);
    _$hash = $jc(_$hash, maxHailSizeIn.hashCode);
    _$hash = $jc(_$hash, maxWindGustMph.hashCode);
    _$hash = $jc(_$hash, tornadoDetection.hashCode);
    _$hash = $jc(_$hash, thunderstormDamageThreat.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, instruction.hashCode);
    _$hash = $jc(_$hash, web.hashCode);
    _$hash = $jc(_$hash, geometrySource.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NwsAlertPayload')
          ..add('event', event)
          ..add('eventCode', eventCode)
          ..add('headline', headline)
          ..add('severity', severity)
          ..add('certainty', certainty)
          ..add('urgency', urgency)
          ..add('messageType', messageType)
          ..add('category', category)
          ..add('response', response)
          ..add('senderName', senderName)
          ..add('areaDesc', areaDesc)
          ..add('sent', sent)
          ..add('effective', effective)
          ..add('onset', onset)
          ..add('expires', expires)
          ..add('ends', ends)
          ..add('ugc', ugc)
          ..add('same', same)
          ..add('vtec', vtec)
          ..add('motion', motion)
          ..add('maxHailSizeIn', maxHailSizeIn)
          ..add('maxWindGustMph', maxWindGustMph)
          ..add('tornadoDetection', tornadoDetection)
          ..add('thunderstormDamageThreat', thunderstormDamageThreat)
          ..add('description', description)
          ..add('instruction', instruction)
          ..add('web', web)
          ..add('geometrySource', geometrySource))
        .toString();
  }
}

class NwsAlertPayloadBuilder
    implements Builder<NwsAlertPayload, NwsAlertPayloadBuilder> {
  _$NwsAlertPayload? _$v;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  String? _eventCode;
  String? get eventCode => _$this._eventCode;
  set eventCode(String? eventCode) => _$this._eventCode = eventCode;

  String? _headline;
  String? get headline => _$this._headline;
  set headline(String? headline) => _$this._headline = headline;

  NwsAlertPayloadSeverityEnum? _severity;
  NwsAlertPayloadSeverityEnum? get severity => _$this._severity;
  set severity(NwsAlertPayloadSeverityEnum? severity) =>
      _$this._severity = severity;

  String? _certainty;
  String? get certainty => _$this._certainty;
  set certainty(String? certainty) => _$this._certainty = certainty;

  String? _urgency;
  String? get urgency => _$this._urgency;
  set urgency(String? urgency) => _$this._urgency = urgency;

  NwsAlertPayloadMessageTypeEnum? _messageType;
  NwsAlertPayloadMessageTypeEnum? get messageType => _$this._messageType;
  set messageType(NwsAlertPayloadMessageTypeEnum? messageType) =>
      _$this._messageType = messageType;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _response;
  String? get response => _$this._response;
  set response(String? response) => _$this._response = response;

  String? _senderName;
  String? get senderName => _$this._senderName;
  set senderName(String? senderName) => _$this._senderName = senderName;

  String? _areaDesc;
  String? get areaDesc => _$this._areaDesc;
  set areaDesc(String? areaDesc) => _$this._areaDesc = areaDesc;

  DateTime? _sent;
  DateTime? get sent => _$this._sent;
  set sent(DateTime? sent) => _$this._sent = sent;

  DateTime? _effective;
  DateTime? get effective => _$this._effective;
  set effective(DateTime? effective) => _$this._effective = effective;

  DateTime? _onset;
  DateTime? get onset => _$this._onset;
  set onset(DateTime? onset) => _$this._onset = onset;

  DateTime? _expires;
  DateTime? get expires => _$this._expires;
  set expires(DateTime? expires) => _$this._expires = expires;

  DateTime? _ends;
  DateTime? get ends => _$this._ends;
  set ends(DateTime? ends) => _$this._ends = ends;

  ListBuilder<String>? _ugc;
  ListBuilder<String> get ugc => _$this._ugc ??= ListBuilder<String>();
  set ugc(ListBuilder<String>? ugc) => _$this._ugc = ugc;

  ListBuilder<String>? _same;
  ListBuilder<String> get same => _$this._same ??= ListBuilder<String>();
  set same(ListBuilder<String>? same) => _$this._same = same;

  ListBuilder<String>? _vtec;
  ListBuilder<String> get vtec => _$this._vtec ??= ListBuilder<String>();
  set vtec(ListBuilder<String>? vtec) => _$this._vtec = vtec;

  String? _motion;
  String? get motion => _$this._motion;
  set motion(String? motion) => _$this._motion = motion;

  num? _maxHailSizeIn;
  num? get maxHailSizeIn => _$this._maxHailSizeIn;
  set maxHailSizeIn(num? maxHailSizeIn) =>
      _$this._maxHailSizeIn = maxHailSizeIn;

  num? _maxWindGustMph;
  num? get maxWindGustMph => _$this._maxWindGustMph;
  set maxWindGustMph(num? maxWindGustMph) =>
      _$this._maxWindGustMph = maxWindGustMph;

  String? _tornadoDetection;
  String? get tornadoDetection => _$this._tornadoDetection;
  set tornadoDetection(String? tornadoDetection) =>
      _$this._tornadoDetection = tornadoDetection;

  String? _thunderstormDamageThreat;
  String? get thunderstormDamageThreat => _$this._thunderstormDamageThreat;
  set thunderstormDamageThreat(String? thunderstormDamageThreat) =>
      _$this._thunderstormDamageThreat = thunderstormDamageThreat;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _instruction;
  String? get instruction => _$this._instruction;
  set instruction(String? instruction) => _$this._instruction = instruction;

  String? _web;
  String? get web => _$this._web;
  set web(String? web) => _$this._web = web;

  NwsAlertPayloadGeometrySourceEnum? _geometrySource;
  NwsAlertPayloadGeometrySourceEnum? get geometrySource =>
      _$this._geometrySource;
  set geometrySource(NwsAlertPayloadGeometrySourceEnum? geometrySource) =>
      _$this._geometrySource = geometrySource;

  NwsAlertPayloadBuilder() {
    NwsAlertPayload._defaults(this);
  }

  NwsAlertPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _eventCode = $v.eventCode;
      _headline = $v.headline;
      _severity = $v.severity;
      _certainty = $v.certainty;
      _urgency = $v.urgency;
      _messageType = $v.messageType;
      _category = $v.category;
      _response = $v.response;
      _senderName = $v.senderName;
      _areaDesc = $v.areaDesc;
      _sent = $v.sent;
      _effective = $v.effective;
      _onset = $v.onset;
      _expires = $v.expires;
      _ends = $v.ends;
      _ugc = $v.ugc?.toBuilder();
      _same = $v.same?.toBuilder();
      _vtec = $v.vtec?.toBuilder();
      _motion = $v.motion;
      _maxHailSizeIn = $v.maxHailSizeIn;
      _maxWindGustMph = $v.maxWindGustMph;
      _tornadoDetection = $v.tornadoDetection;
      _thunderstormDamageThreat = $v.thunderstormDamageThreat;
      _description = $v.description;
      _instruction = $v.instruction;
      _web = $v.web;
      _geometrySource = $v.geometrySource;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NwsAlertPayload other) {
    _$v = other as _$NwsAlertPayload;
  }

  @override
  void update(void Function(NwsAlertPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NwsAlertPayload build() => _build();

  _$NwsAlertPayload _build() {
    _$NwsAlertPayload _$result;
    try {
      _$result =
          _$v ??
          _$NwsAlertPayload._(
            event: BuiltValueNullFieldError.checkNotNull(
              event,
              r'NwsAlertPayload',
              'event',
            ),
            eventCode: eventCode,
            headline: headline,
            severity: BuiltValueNullFieldError.checkNotNull(
              severity,
              r'NwsAlertPayload',
              'severity',
            ),
            certainty: certainty,
            urgency: urgency,
            messageType: messageType,
            category: category,
            response: response,
            senderName: senderName,
            areaDesc: areaDesc,
            sent: sent,
            effective: effective,
            onset: onset,
            expires: expires,
            ends: ends,
            ugc: _ugc?.build(),
            same: _same?.build(),
            vtec: _vtec?.build(),
            motion: motion,
            maxHailSizeIn: maxHailSizeIn,
            maxWindGustMph: maxWindGustMph,
            tornadoDetection: tornadoDetection,
            thunderstormDamageThreat: thunderstormDamageThreat,
            description: description,
            instruction: instruction,
            web: web,
            geometrySource: geometrySource,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ugc';
        _ugc?.build();
        _$failedField = 'same';
        _same?.build();
        _$failedField = 'vtec';
        _vtec?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NwsAlertPayload',
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

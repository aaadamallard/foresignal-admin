// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'own_tracks_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OwnTracksMessageTypeEnum _$ownTracksMessageTypeEnum_location =
    const OwnTracksMessageTypeEnum._('location');
const OwnTracksMessageTypeEnum _$ownTracksMessageTypeEnum_transition =
    const OwnTracksMessageTypeEnum._('transition');
const OwnTracksMessageTypeEnum _$ownTracksMessageTypeEnum_waypoint =
    const OwnTracksMessageTypeEnum._('waypoint');
const OwnTracksMessageTypeEnum _$ownTracksMessageTypeEnum_lwt =
    const OwnTracksMessageTypeEnum._('lwt');
const OwnTracksMessageTypeEnum _$ownTracksMessageTypeEnum_card =
    const OwnTracksMessageTypeEnum._('card');
const OwnTracksMessageTypeEnum _$ownTracksMessageTypeEnum_status =
    const OwnTracksMessageTypeEnum._('status');
const OwnTracksMessageTypeEnum _$ownTracksMessageTypeEnum_encrypted =
    const OwnTracksMessageTypeEnum._('encrypted');

OwnTracksMessageTypeEnum _$ownTracksMessageTypeEnumValueOf(String name) {
  switch (name) {
    case 'location':
      return _$ownTracksMessageTypeEnum_location;
    case 'transition':
      return _$ownTracksMessageTypeEnum_transition;
    case 'waypoint':
      return _$ownTracksMessageTypeEnum_waypoint;
    case 'lwt':
      return _$ownTracksMessageTypeEnum_lwt;
    case 'card':
      return _$ownTracksMessageTypeEnum_card;
    case 'status':
      return _$ownTracksMessageTypeEnum_status;
    case 'encrypted':
      return _$ownTracksMessageTypeEnum_encrypted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OwnTracksMessageTypeEnum> _$ownTracksMessageTypeEnumValues =
    BuiltSet<OwnTracksMessageTypeEnum>(const <OwnTracksMessageTypeEnum>[
      _$ownTracksMessageTypeEnum_location,
      _$ownTracksMessageTypeEnum_transition,
      _$ownTracksMessageTypeEnum_waypoint,
      _$ownTracksMessageTypeEnum_lwt,
      _$ownTracksMessageTypeEnum_card,
      _$ownTracksMessageTypeEnum_status,
      _$ownTracksMessageTypeEnum_encrypted,
    ]);

Serializer<OwnTracksMessageTypeEnum> _$ownTracksMessageTypeEnumSerializer =
    _$OwnTracksMessageTypeEnumSerializer();

class _$OwnTracksMessageTypeEnumSerializer
    implements PrimitiveSerializer<OwnTracksMessageTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'location': 'location',
    'transition': 'transition',
    'waypoint': 'waypoint',
    'lwt': 'lwt',
    'card': 'card',
    'status': 'status',
    'encrypted': 'encrypted',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'location': 'location',
    'transition': 'transition',
    'waypoint': 'waypoint',
    'lwt': 'lwt',
    'card': 'card',
    'status': 'status',
    'encrypted': 'encrypted',
  };

  @override
  final Iterable<Type> types = const <Type>[OwnTracksMessageTypeEnum];
  @override
  final String wireName = 'OwnTracksMessageTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    OwnTracksMessageTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OwnTracksMessageTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OwnTracksMessageTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OwnTracksMessage extends OwnTracksMessage {
  @override
  final OwnTracksMessageTypeEnum type;
  @override
  final num? lat;
  @override
  final num? lon;
  @override
  final int? tst;
  @override
  final num? acc;
  @override
  final num? alt;
  @override
  final num? vel;
  @override
  final num? cog;
  @override
  final int? batt;
  @override
  final int? bs;
  @override
  final String? conn;
  @override
  final String? tid;
  @override
  final String? event;
  @override
  final String? desc;
  @override
  final int? wtst;

  factory _$OwnTracksMessage([
    void Function(OwnTracksMessageBuilder)? updates,
  ]) => (OwnTracksMessageBuilder()..update(updates))._build();

  _$OwnTracksMessage._({
    required this.type,
    this.lat,
    this.lon,
    this.tst,
    this.acc,
    this.alt,
    this.vel,
    this.cog,
    this.batt,
    this.bs,
    this.conn,
    this.tid,
    this.event,
    this.desc,
    this.wtst,
  }) : super._();
  @override
  OwnTracksMessage rebuild(void Function(OwnTracksMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OwnTracksMessageBuilder toBuilder() =>
      OwnTracksMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OwnTracksMessage &&
        type == other.type &&
        lat == other.lat &&
        lon == other.lon &&
        tst == other.tst &&
        acc == other.acc &&
        alt == other.alt &&
        vel == other.vel &&
        cog == other.cog &&
        batt == other.batt &&
        bs == other.bs &&
        conn == other.conn &&
        tid == other.tid &&
        event == other.event &&
        desc == other.desc &&
        wtst == other.wtst;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jc(_$hash, tst.hashCode);
    _$hash = $jc(_$hash, acc.hashCode);
    _$hash = $jc(_$hash, alt.hashCode);
    _$hash = $jc(_$hash, vel.hashCode);
    _$hash = $jc(_$hash, cog.hashCode);
    _$hash = $jc(_$hash, batt.hashCode);
    _$hash = $jc(_$hash, bs.hashCode);
    _$hash = $jc(_$hash, conn.hashCode);
    _$hash = $jc(_$hash, tid.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, desc.hashCode);
    _$hash = $jc(_$hash, wtst.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OwnTracksMessage')
          ..add('type', type)
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('tst', tst)
          ..add('acc', acc)
          ..add('alt', alt)
          ..add('vel', vel)
          ..add('cog', cog)
          ..add('batt', batt)
          ..add('bs', bs)
          ..add('conn', conn)
          ..add('tid', tid)
          ..add('event', event)
          ..add('desc', desc)
          ..add('wtst', wtst))
        .toString();
  }
}

class OwnTracksMessageBuilder
    implements Builder<OwnTracksMessage, OwnTracksMessageBuilder> {
  _$OwnTracksMessage? _$v;

  OwnTracksMessageTypeEnum? _type;
  OwnTracksMessageTypeEnum? get type => _$this._type;
  set type(OwnTracksMessageTypeEnum? type) => _$this._type = type;

  num? _lat;
  num? get lat => _$this._lat;
  set lat(num? lat) => _$this._lat = lat;

  num? _lon;
  num? get lon => _$this._lon;
  set lon(num? lon) => _$this._lon = lon;

  int? _tst;
  int? get tst => _$this._tst;
  set tst(int? tst) => _$this._tst = tst;

  num? _acc;
  num? get acc => _$this._acc;
  set acc(num? acc) => _$this._acc = acc;

  num? _alt;
  num? get alt => _$this._alt;
  set alt(num? alt) => _$this._alt = alt;

  num? _vel;
  num? get vel => _$this._vel;
  set vel(num? vel) => _$this._vel = vel;

  num? _cog;
  num? get cog => _$this._cog;
  set cog(num? cog) => _$this._cog = cog;

  int? _batt;
  int? get batt => _$this._batt;
  set batt(int? batt) => _$this._batt = batt;

  int? _bs;
  int? get bs => _$this._bs;
  set bs(int? bs) => _$this._bs = bs;

  String? _conn;
  String? get conn => _$this._conn;
  set conn(String? conn) => _$this._conn = conn;

  String? _tid;
  String? get tid => _$this._tid;
  set tid(String? tid) => _$this._tid = tid;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  String? _desc;
  String? get desc => _$this._desc;
  set desc(String? desc) => _$this._desc = desc;

  int? _wtst;
  int? get wtst => _$this._wtst;
  set wtst(int? wtst) => _$this._wtst = wtst;

  OwnTracksMessageBuilder() {
    OwnTracksMessage._defaults(this);
  }

  OwnTracksMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _lat = $v.lat;
      _lon = $v.lon;
      _tst = $v.tst;
      _acc = $v.acc;
      _alt = $v.alt;
      _vel = $v.vel;
      _cog = $v.cog;
      _batt = $v.batt;
      _bs = $v.bs;
      _conn = $v.conn;
      _tid = $v.tid;
      _event = $v.event;
      _desc = $v.desc;
      _wtst = $v.wtst;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OwnTracksMessage other) {
    _$v = other as _$OwnTracksMessage;
  }

  @override
  void update(void Function(OwnTracksMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OwnTracksMessage build() => _build();

  _$OwnTracksMessage _build() {
    final _$result =
        _$v ??
        _$OwnTracksMessage._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'OwnTracksMessage',
            'type',
          ),
          lat: lat,
          lon: lon,
          tst: tst,
          acc: acc,
          alt: alt,
          vel: vel,
          cog: cog,
          batt: batt,
          bs: bs,
          conn: conn,
          tid: tid,
          event: event,
          desc: desc,
          wtst: wtst,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

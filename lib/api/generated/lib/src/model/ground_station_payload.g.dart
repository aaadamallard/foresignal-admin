// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ground_station_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GroundStationPayloadStateEnum _$groundStationPayloadStateEnum_idle =
    const GroundStationPayloadStateEnum._('idle');
const GroundStationPayloadStateEnum _$groundStationPayloadStateEnum_tracking =
    const GroundStationPayloadStateEnum._('tracking');
const GroundStationPayloadStateEnum _$groundStationPayloadStateEnum_receiving =
    const GroundStationPayloadStateEnum._('receiving');
const GroundStationPayloadStateEnum _$groundStationPayloadStateEnum_locked =
    const GroundStationPayloadStateEnum._('locked');
const GroundStationPayloadStateEnum _$groundStationPayloadStateEnum_unknown =
    const GroundStationPayloadStateEnum._('unknown');

GroundStationPayloadStateEnum _$groundStationPayloadStateEnumValueOf(
  String name,
) {
  switch (name) {
    case 'idle':
      return _$groundStationPayloadStateEnum_idle;
    case 'tracking':
      return _$groundStationPayloadStateEnum_tracking;
    case 'receiving':
      return _$groundStationPayloadStateEnum_receiving;
    case 'locked':
      return _$groundStationPayloadStateEnum_locked;
    case 'unknown':
      return _$groundStationPayloadStateEnum_unknown;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GroundStationPayloadStateEnum>
_$groundStationPayloadStateEnumValues = BuiltSet<GroundStationPayloadStateEnum>(
  const <GroundStationPayloadStateEnum>[
    _$groundStationPayloadStateEnum_idle,
    _$groundStationPayloadStateEnum_tracking,
    _$groundStationPayloadStateEnum_receiving,
    _$groundStationPayloadStateEnum_locked,
    _$groundStationPayloadStateEnum_unknown,
  ],
);

const GroundStationPayloadSatdumpModeEnum
_$groundStationPayloadSatdumpModeEnum_live =
    const GroundStationPayloadSatdumpModeEnum._('live');
const GroundStationPayloadSatdumpModeEnum
_$groundStationPayloadSatdumpModeEnum_autotrack =
    const GroundStationPayloadSatdumpModeEnum._('autotrack');

GroundStationPayloadSatdumpModeEnum
_$groundStationPayloadSatdumpModeEnumValueOf(String name) {
  switch (name) {
    case 'live':
      return _$groundStationPayloadSatdumpModeEnum_live;
    case 'autotrack':
      return _$groundStationPayloadSatdumpModeEnum_autotrack;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GroundStationPayloadSatdumpModeEnum>
_$groundStationPayloadSatdumpModeEnumValues =
    BuiltSet<GroundStationPayloadSatdumpModeEnum>(
      const <GroundStationPayloadSatdumpModeEnum>[
        _$groundStationPayloadSatdumpModeEnum_live,
        _$groundStationPayloadSatdumpModeEnum_autotrack,
      ],
    );

Serializer<GroundStationPayloadStateEnum>
_$groundStationPayloadStateEnumSerializer =
    _$GroundStationPayloadStateEnumSerializer();
Serializer<GroundStationPayloadSatdumpModeEnum>
_$groundStationPayloadSatdumpModeEnumSerializer =
    _$GroundStationPayloadSatdumpModeEnumSerializer();

class _$GroundStationPayloadStateEnumSerializer
    implements PrimitiveSerializer<GroundStationPayloadStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'idle': 'idle',
    'tracking': 'tracking',
    'receiving': 'receiving',
    'locked': 'locked',
    'unknown': 'unknown',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'idle': 'idle',
    'tracking': 'tracking',
    'receiving': 'receiving',
    'locked': 'locked',
    'unknown': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[GroundStationPayloadStateEnum];
  @override
  final String wireName = 'GroundStationPayloadStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    GroundStationPayloadStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  GroundStationPayloadStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => GroundStationPayloadStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$GroundStationPayloadSatdumpModeEnumSerializer
    implements PrimitiveSerializer<GroundStationPayloadSatdumpModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'live': 'live',
    'autotrack': 'autotrack',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'live': 'live',
    'autotrack': 'autotrack',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GroundStationPayloadSatdumpModeEnum,
  ];
  @override
  final String wireName = 'GroundStationPayloadSatdumpModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    GroundStationPayloadSatdumpModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  GroundStationPayloadSatdumpModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => GroundStationPayloadSatdumpModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$GroundStationPayload extends GroundStationPayload {
  @override
  final GroundStationPayloadStateEnum state;
  @override
  final String? currentTarget;
  @override
  final int? frequencyHz;
  @override
  final int? az;
  @override
  final int? el;
  @override
  final int? snrDb;
  @override
  final DateTime? nextAos;
  @override
  final DateTime? nextLos;
  @override
  final bool? rotatorEngaged;
  @override
  final GroundStationPayloadSatdumpModeEnum? satdumpMode;
  @override
  final String title;

  factory _$GroundStationPayload([
    void Function(GroundStationPayloadBuilder)? updates,
  ]) => (GroundStationPayloadBuilder()..update(updates))._build();

  _$GroundStationPayload._({
    required this.state,
    this.currentTarget,
    this.frequencyHz,
    this.az,
    this.el,
    this.snrDb,
    this.nextAos,
    this.nextLos,
    this.rotatorEngaged,
    this.satdumpMode,
    required this.title,
  }) : super._();
  @override
  GroundStationPayload rebuild(
    void Function(GroundStationPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GroundStationPayloadBuilder toBuilder() =>
      GroundStationPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroundStationPayload &&
        state == other.state &&
        currentTarget == other.currentTarget &&
        frequencyHz == other.frequencyHz &&
        az == other.az &&
        el == other.el &&
        snrDb == other.snrDb &&
        nextAos == other.nextAos &&
        nextLos == other.nextLos &&
        rotatorEngaged == other.rotatorEngaged &&
        satdumpMode == other.satdumpMode &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, currentTarget.hashCode);
    _$hash = $jc(_$hash, frequencyHz.hashCode);
    _$hash = $jc(_$hash, az.hashCode);
    _$hash = $jc(_$hash, el.hashCode);
    _$hash = $jc(_$hash, snrDb.hashCode);
    _$hash = $jc(_$hash, nextAos.hashCode);
    _$hash = $jc(_$hash, nextLos.hashCode);
    _$hash = $jc(_$hash, rotatorEngaged.hashCode);
    _$hash = $jc(_$hash, satdumpMode.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroundStationPayload')
          ..add('state', state)
          ..add('currentTarget', currentTarget)
          ..add('frequencyHz', frequencyHz)
          ..add('az', az)
          ..add('el', el)
          ..add('snrDb', snrDb)
          ..add('nextAos', nextAos)
          ..add('nextLos', nextLos)
          ..add('rotatorEngaged', rotatorEngaged)
          ..add('satdumpMode', satdumpMode)
          ..add('title', title))
        .toString();
  }
}

class GroundStationPayloadBuilder
    implements Builder<GroundStationPayload, GroundStationPayloadBuilder> {
  _$GroundStationPayload? _$v;

  GroundStationPayloadStateEnum? _state;
  GroundStationPayloadStateEnum? get state => _$this._state;
  set state(GroundStationPayloadStateEnum? state) => _$this._state = state;

  String? _currentTarget;
  String? get currentTarget => _$this._currentTarget;
  set currentTarget(String? currentTarget) =>
      _$this._currentTarget = currentTarget;

  int? _frequencyHz;
  int? get frequencyHz => _$this._frequencyHz;
  set frequencyHz(int? frequencyHz) => _$this._frequencyHz = frequencyHz;

  int? _az;
  int? get az => _$this._az;
  set az(int? az) => _$this._az = az;

  int? _el;
  int? get el => _$this._el;
  set el(int? el) => _$this._el = el;

  int? _snrDb;
  int? get snrDb => _$this._snrDb;
  set snrDb(int? snrDb) => _$this._snrDb = snrDb;

  DateTime? _nextAos;
  DateTime? get nextAos => _$this._nextAos;
  set nextAos(DateTime? nextAos) => _$this._nextAos = nextAos;

  DateTime? _nextLos;
  DateTime? get nextLos => _$this._nextLos;
  set nextLos(DateTime? nextLos) => _$this._nextLos = nextLos;

  bool? _rotatorEngaged;
  bool? get rotatorEngaged => _$this._rotatorEngaged;
  set rotatorEngaged(bool? rotatorEngaged) =>
      _$this._rotatorEngaged = rotatorEngaged;

  GroundStationPayloadSatdumpModeEnum? _satdumpMode;
  GroundStationPayloadSatdumpModeEnum? get satdumpMode => _$this._satdumpMode;
  set satdumpMode(GroundStationPayloadSatdumpModeEnum? satdumpMode) =>
      _$this._satdumpMode = satdumpMode;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GroundStationPayloadBuilder() {
    GroundStationPayload._defaults(this);
  }

  GroundStationPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _currentTarget = $v.currentTarget;
      _frequencyHz = $v.frequencyHz;
      _az = $v.az;
      _el = $v.el;
      _snrDb = $v.snrDb;
      _nextAos = $v.nextAos;
      _nextLos = $v.nextLos;
      _rotatorEngaged = $v.rotatorEngaged;
      _satdumpMode = $v.satdumpMode;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroundStationPayload other) {
    _$v = other as _$GroundStationPayload;
  }

  @override
  void update(void Function(GroundStationPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroundStationPayload build() => _build();

  _$GroundStationPayload _build() {
    final _$result =
        _$v ??
        _$GroundStationPayload._(
          state: BuiltValueNullFieldError.checkNotNull(
            state,
            r'GroundStationPayload',
            'state',
          ),
          currentTarget: currentTarget,
          frequencyHz: frequencyHz,
          az: az,
          el: el,
          snrDb: snrDb,
          nextAos: nextAos,
          nextLos: nextLos,
          rotatorEngaged: rotatorEngaged,
          satdumpMode: satdumpMode,
          title: BuiltValueNullFieldError.checkNotNull(
            title,
            r'GroundStationPayload',
            'title',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

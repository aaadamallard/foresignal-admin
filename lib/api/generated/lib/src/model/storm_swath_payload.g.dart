// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storm_swath_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StormSwathPayloadStatusEnum _$stormSwathPayloadStatusEnum_active =
    const StormSwathPayloadStatusEnum._('active');
const StormSwathPayloadStatusEnum _$stormSwathPayloadStatusEnum_ended =
    const StormSwathPayloadStatusEnum._('ended');
const StormSwathPayloadStatusEnum
_$stormSwathPayloadStatusEnum_unknownDefaultOpenApi =
    const StormSwathPayloadStatusEnum._('unknownDefaultOpenApi');

StormSwathPayloadStatusEnum _$stormSwathPayloadStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$stormSwathPayloadStatusEnum_active;
    case 'ended':
      return _$stormSwathPayloadStatusEnum_ended;
    case 'unknownDefaultOpenApi':
      return _$stormSwathPayloadStatusEnum_unknownDefaultOpenApi;
    default:
      return _$stormSwathPayloadStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<StormSwathPayloadStatusEnum>
_$stormSwathPayloadStatusEnumValues =
    BuiltSet<StormSwathPayloadStatusEnum>(const <StormSwathPayloadStatusEnum>[
      _$stormSwathPayloadStatusEnum_active,
      _$stormSwathPayloadStatusEnum_ended,
      _$stormSwathPayloadStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<StormSwathPayloadStatusEnum>
_$stormSwathPayloadStatusEnumSerializer =
    _$StormSwathPayloadStatusEnumSerializer();

class _$StormSwathPayloadStatusEnumSerializer
    implements PrimitiveSerializer<StormSwathPayloadStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'ended': 'ended',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'ended': 'ended',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[StormSwathPayloadStatusEnum];
  @override
  final String wireName = 'StormSwathPayloadStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    StormSwathPayloadStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StormSwathPayloadStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StormSwathPayloadStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StormSwathPayload extends StormSwathPayload {
  @override
  final String trackId;
  @override
  final num? meshMaxMm;
  @override
  final num durationMin;
  @override
  final StormSwathPayloadStatusEnum? status;

  factory _$StormSwathPayload([
    void Function(StormSwathPayloadBuilder)? updates,
  ]) => (StormSwathPayloadBuilder()..update(updates))._build();

  _$StormSwathPayload._({
    required this.trackId,
    this.meshMaxMm,
    required this.durationMin,
    this.status,
  }) : super._();
  @override
  StormSwathPayload rebuild(void Function(StormSwathPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StormSwathPayloadBuilder toBuilder() =>
      StormSwathPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StormSwathPayload &&
        trackId == other.trackId &&
        meshMaxMm == other.meshMaxMm &&
        durationMin == other.durationMin &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trackId.hashCode);
    _$hash = $jc(_$hash, meshMaxMm.hashCode);
    _$hash = $jc(_$hash, durationMin.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StormSwathPayload')
          ..add('trackId', trackId)
          ..add('meshMaxMm', meshMaxMm)
          ..add('durationMin', durationMin)
          ..add('status', status))
        .toString();
  }
}

class StormSwathPayloadBuilder
    implements Builder<StormSwathPayload, StormSwathPayloadBuilder> {
  _$StormSwathPayload? _$v;

  String? _trackId;
  String? get trackId => _$this._trackId;
  set trackId(String? trackId) => _$this._trackId = trackId;

  num? _meshMaxMm;
  num? get meshMaxMm => _$this._meshMaxMm;
  set meshMaxMm(num? meshMaxMm) => _$this._meshMaxMm = meshMaxMm;

  num? _durationMin;
  num? get durationMin => _$this._durationMin;
  set durationMin(num? durationMin) => _$this._durationMin = durationMin;

  StormSwathPayloadStatusEnum? _status;
  StormSwathPayloadStatusEnum? get status => _$this._status;
  set status(StormSwathPayloadStatusEnum? status) => _$this._status = status;

  StormSwathPayloadBuilder() {
    StormSwathPayload._defaults(this);
  }

  StormSwathPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trackId = $v.trackId;
      _meshMaxMm = $v.meshMaxMm;
      _durationMin = $v.durationMin;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StormSwathPayload other) {
    _$v = other as _$StormSwathPayload;
  }

  @override
  void update(void Function(StormSwathPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StormSwathPayload build() => _build();

  _$StormSwathPayload _build() {
    final _$result =
        _$v ??
        _$StormSwathPayload._(
          trackId: BuiltValueNullFieldError.checkNotNull(
            trackId,
            r'StormSwathPayload',
            'trackId',
          ),
          meshMaxMm: meshMaxMm,
          durationMin: BuiltValueNullFieldError.checkNotNull(
            durationMin,
            r'StormSwathPayload',
            'durationMin',
          ),
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

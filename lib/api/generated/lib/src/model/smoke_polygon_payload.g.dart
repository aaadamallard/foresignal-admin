// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smoke_polygon_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SmokePolygonPayloadDensityEnum _$smokePolygonPayloadDensityEnum_light =
    const SmokePolygonPayloadDensityEnum._('light');
const SmokePolygonPayloadDensityEnum _$smokePolygonPayloadDensityEnum_medium =
    const SmokePolygonPayloadDensityEnum._('medium');
const SmokePolygonPayloadDensityEnum _$smokePolygonPayloadDensityEnum_heavy =
    const SmokePolygonPayloadDensityEnum._('heavy');

SmokePolygonPayloadDensityEnum _$smokePolygonPayloadDensityEnumValueOf(
  String name,
) {
  switch (name) {
    case 'light':
      return _$smokePolygonPayloadDensityEnum_light;
    case 'medium':
      return _$smokePolygonPayloadDensityEnum_medium;
    case 'heavy':
      return _$smokePolygonPayloadDensityEnum_heavy;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SmokePolygonPayloadDensityEnum>
_$smokePolygonPayloadDensityEnumValues =
    BuiltSet<SmokePolygonPayloadDensityEnum>(
      const <SmokePolygonPayloadDensityEnum>[
        _$smokePolygonPayloadDensityEnum_light,
        _$smokePolygonPayloadDensityEnum_medium,
        _$smokePolygonPayloadDensityEnum_heavy,
      ],
    );

Serializer<SmokePolygonPayloadDensityEnum>
_$smokePolygonPayloadDensityEnumSerializer =
    _$SmokePolygonPayloadDensityEnumSerializer();

class _$SmokePolygonPayloadDensityEnumSerializer
    implements PrimitiveSerializer<SmokePolygonPayloadDensityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'light': 'light',
    'medium': 'medium',
    'heavy': 'heavy',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'light': 'light',
    'medium': 'medium',
    'heavy': 'heavy',
  };

  @override
  final Iterable<Type> types = const <Type>[SmokePolygonPayloadDensityEnum];
  @override
  final String wireName = 'SmokePolygonPayloadDensityEnum';

  @override
  Object serialize(
    Serializers serializers,
    SmokePolygonPayloadDensityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SmokePolygonPayloadDensityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SmokePolygonPayloadDensityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SmokePolygonPayload extends SmokePolygonPayload {
  @override
  final SmokePolygonPayloadDensityEnum density;
  @override
  final int densityRank;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final String? satellite;
  @override
  final String label;

  factory _$SmokePolygonPayload([
    void Function(SmokePolygonPayloadBuilder)? updates,
  ]) => (SmokePolygonPayloadBuilder()..update(updates))._build();

  _$SmokePolygonPayload._({
    required this.density,
    required this.densityRank,
    this.start,
    this.end,
    this.satellite,
    required this.label,
  }) : super._();
  @override
  SmokePolygonPayload rebuild(
    void Function(SmokePolygonPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SmokePolygonPayloadBuilder toBuilder() =>
      SmokePolygonPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SmokePolygonPayload &&
        density == other.density &&
        densityRank == other.densityRank &&
        start == other.start &&
        end == other.end &&
        satellite == other.satellite &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, density.hashCode);
    _$hash = $jc(_$hash, densityRank.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, satellite.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SmokePolygonPayload')
          ..add('density', density)
          ..add('densityRank', densityRank)
          ..add('start', start)
          ..add('end', end)
          ..add('satellite', satellite)
          ..add('label', label))
        .toString();
  }
}

class SmokePolygonPayloadBuilder
    implements Builder<SmokePolygonPayload, SmokePolygonPayloadBuilder> {
  _$SmokePolygonPayload? _$v;

  SmokePolygonPayloadDensityEnum? _density;
  SmokePolygonPayloadDensityEnum? get density => _$this._density;
  set density(SmokePolygonPayloadDensityEnum? density) =>
      _$this._density = density;

  int? _densityRank;
  int? get densityRank => _$this._densityRank;
  set densityRank(int? densityRank) => _$this._densityRank = densityRank;

  DateTime? _start;
  DateTime? get start => _$this._start;
  set start(DateTime? start) => _$this._start = start;

  DateTime? _end;
  DateTime? get end => _$this._end;
  set end(DateTime? end) => _$this._end = end;

  String? _satellite;
  String? get satellite => _$this._satellite;
  set satellite(String? satellite) => _$this._satellite = satellite;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  SmokePolygonPayloadBuilder() {
    SmokePolygonPayload._defaults(this);
  }

  SmokePolygonPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _density = $v.density;
      _densityRank = $v.densityRank;
      _start = $v.start;
      _end = $v.end;
      _satellite = $v.satellite;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SmokePolygonPayload other) {
    _$v = other as _$SmokePolygonPayload;
  }

  @override
  void update(void Function(SmokePolygonPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SmokePolygonPayload build() => _build();

  _$SmokePolygonPayload _build() {
    final _$result =
        _$v ??
        _$SmokePolygonPayload._(
          density: BuiltValueNullFieldError.checkNotNull(
            density,
            r'SmokePolygonPayload',
            'density',
          ),
          densityRank: BuiltValueNullFieldError.checkNotNull(
            densityRank,
            r'SmokePolygonPayload',
            'densityRank',
          ),
          start: start,
          end: end,
          satellite: satellite,
          label: BuiltValueNullFieldError.checkNotNull(
            label,
            r'SmokePolygonPayload',
            'label',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

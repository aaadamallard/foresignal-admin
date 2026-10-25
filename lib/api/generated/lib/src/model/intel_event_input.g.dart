// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_event_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IntelEventInputTypeEnum _$intelEventInputTypeEnum_maritimeDisruption =
    const IntelEventInputTypeEnum._('maritimeDisruption');
const IntelEventInputTypeEnum _$intelEventInputTypeEnum_aviationAnomaly =
    const IntelEventInputTypeEnum._('aviationAnomaly');
const IntelEventInputTypeEnum
_$intelEventInputTypeEnum_infrastructureDisruption =
    const IntelEventInputTypeEnum._('infrastructureDisruption');
const IntelEventInputTypeEnum _$intelEventInputTypeEnum_weatherImpact =
    const IntelEventInputTypeEnum._('weatherImpact');
const IntelEventInputTypeEnum _$intelEventInputTypeEnum_seismic =
    const IntelEventInputTypeEnum._('seismic');
const IntelEventInputTypeEnum _$intelEventInputTypeEnum_custom =
    const IntelEventInputTypeEnum._('custom');
const IntelEventInputTypeEnum _$intelEventInputTypeEnum_unknownDefaultOpenApi =
    const IntelEventInputTypeEnum._('unknownDefaultOpenApi');

IntelEventInputTypeEnum _$intelEventInputTypeEnumValueOf(String name) {
  switch (name) {
    case 'maritimeDisruption':
      return _$intelEventInputTypeEnum_maritimeDisruption;
    case 'aviationAnomaly':
      return _$intelEventInputTypeEnum_aviationAnomaly;
    case 'infrastructureDisruption':
      return _$intelEventInputTypeEnum_infrastructureDisruption;
    case 'weatherImpact':
      return _$intelEventInputTypeEnum_weatherImpact;
    case 'seismic':
      return _$intelEventInputTypeEnum_seismic;
    case 'custom':
      return _$intelEventInputTypeEnum_custom;
    case 'unknownDefaultOpenApi':
      return _$intelEventInputTypeEnum_unknownDefaultOpenApi;
    default:
      return _$intelEventInputTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IntelEventInputTypeEnum> _$intelEventInputTypeEnumValues =
    BuiltSet<IntelEventInputTypeEnum>(const <IntelEventInputTypeEnum>[
      _$intelEventInputTypeEnum_maritimeDisruption,
      _$intelEventInputTypeEnum_aviationAnomaly,
      _$intelEventInputTypeEnum_infrastructureDisruption,
      _$intelEventInputTypeEnum_weatherImpact,
      _$intelEventInputTypeEnum_seismic,
      _$intelEventInputTypeEnum_custom,
      _$intelEventInputTypeEnum_unknownDefaultOpenApi,
    ]);

const IntelEventInputOriginEnum _$intelEventInputOriginEnum_agent =
    const IntelEventInputOriginEnum._('agent');
const IntelEventInputOriginEnum _$intelEventInputOriginEnum_operator_ =
    const IntelEventInputOriginEnum._('operator_');
const IntelEventInputOriginEnum
_$intelEventInputOriginEnum_unknownDefaultOpenApi =
    const IntelEventInputOriginEnum._('unknownDefaultOpenApi');

IntelEventInputOriginEnum _$intelEventInputOriginEnumValueOf(String name) {
  switch (name) {
    case 'agent':
      return _$intelEventInputOriginEnum_agent;
    case 'operator_':
      return _$intelEventInputOriginEnum_operator_;
    case 'unknownDefaultOpenApi':
      return _$intelEventInputOriginEnum_unknownDefaultOpenApi;
    default:
      return _$intelEventInputOriginEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IntelEventInputOriginEnum> _$intelEventInputOriginEnumValues =
    BuiltSet<IntelEventInputOriginEnum>(const <IntelEventInputOriginEnum>[
      _$intelEventInputOriginEnum_agent,
      _$intelEventInputOriginEnum_operator_,
      _$intelEventInputOriginEnum_unknownDefaultOpenApi,
    ]);

Serializer<IntelEventInputTypeEnum> _$intelEventInputTypeEnumSerializer =
    _$IntelEventInputTypeEnumSerializer();
Serializer<IntelEventInputOriginEnum> _$intelEventInputOriginEnumSerializer =
    _$IntelEventInputOriginEnumSerializer();

class _$IntelEventInputTypeEnumSerializer
    implements PrimitiveSerializer<IntelEventInputTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'maritimeDisruption': 'maritime-disruption',
    'aviationAnomaly': 'aviation-anomaly',
    'infrastructureDisruption': 'infrastructure-disruption',
    'weatherImpact': 'weather-impact',
    'seismic': 'seismic',
    'custom': 'custom',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'maritime-disruption': 'maritimeDisruption',
    'aviation-anomaly': 'aviationAnomaly',
    'infrastructure-disruption': 'infrastructureDisruption',
    'weather-impact': 'weatherImpact',
    'seismic': 'seismic',
    'custom': 'custom',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IntelEventInputTypeEnum];
  @override
  final String wireName = 'IntelEventInputTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    IntelEventInputTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IntelEventInputTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IntelEventInputTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IntelEventInputOriginEnumSerializer
    implements PrimitiveSerializer<IntelEventInputOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'agent': 'agent',
    'operator_': 'operator',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'agent': 'agent',
    'operator': 'operator_',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IntelEventInputOriginEnum];
  @override
  final String wireName = 'IntelEventInputOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    IntelEventInputOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IntelEventInputOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IntelEventInputOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IntelEventInput extends IntelEventInput {
  @override
  final IntelEventInputTypeEnum type;
  @override
  final String title;
  @override
  final Severity? severity;
  @override
  final IntelEventInputOriginEnum? origin;
  @override
  final Geometry? geometry;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;
  @override
  final String? notes;
  @override
  final BuiltList<IntelEventMemberInput> members;

  factory _$IntelEventInput([void Function(IntelEventInputBuilder)? updates]) =>
      (IntelEventInputBuilder()..update(updates))._build();

  _$IntelEventInput._({
    required this.type,
    required this.title,
    this.severity,
    this.origin,
    this.geometry,
    this.startTime,
    this.endTime,
    this.notes,
    required this.members,
  }) : super._();
  @override
  IntelEventInput rebuild(void Function(IntelEventInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntelEventInputBuilder toBuilder() => IntelEventInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelEventInput &&
        type == other.type &&
        title == other.title &&
        severity == other.severity &&
        origin == other.origin &&
        geometry == other.geometry &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        notes == other.notes &&
        members == other.members;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelEventInput')
          ..add('type', type)
          ..add('title', title)
          ..add('severity', severity)
          ..add('origin', origin)
          ..add('geometry', geometry)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('notes', notes)
          ..add('members', members))
        .toString();
  }
}

class IntelEventInputBuilder
    implements Builder<IntelEventInput, IntelEventInputBuilder> {
  _$IntelEventInput? _$v;

  IntelEventInputTypeEnum? _type;
  IntelEventInputTypeEnum? get type => _$this._type;
  set type(IntelEventInputTypeEnum? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  Severity? _severity;
  Severity? get severity => _$this._severity;
  set severity(Severity? severity) => _$this._severity = severity;

  IntelEventInputOriginEnum? _origin;
  IntelEventInputOriginEnum? get origin => _$this._origin;
  set origin(IntelEventInputOriginEnum? origin) => _$this._origin = origin;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  ListBuilder<IntelEventMemberInput>? _members;
  ListBuilder<IntelEventMemberInput> get members =>
      _$this._members ??= ListBuilder<IntelEventMemberInput>();
  set members(ListBuilder<IntelEventMemberInput>? members) =>
      _$this._members = members;

  IntelEventInputBuilder() {
    IntelEventInput._defaults(this);
  }

  IntelEventInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _title = $v.title;
      _severity = $v.severity;
      _origin = $v.origin;
      _geometry = $v.geometry?.toBuilder();
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _notes = $v.notes;
      _members = $v.members.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelEventInput other) {
    _$v = other as _$IntelEventInput;
  }

  @override
  void update(void Function(IntelEventInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelEventInput build() => _build();

  _$IntelEventInput _build() {
    _$IntelEventInput _$result;
    try {
      _$result =
          _$v ??
          _$IntelEventInput._(
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'IntelEventInput',
              'type',
            ),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'IntelEventInput',
              'title',
            ),
            severity: severity,
            origin: origin,
            geometry: _geometry?.build(),
            startTime: startTime,
            endTime: endTime,
            notes: notes,
            members: members.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();

        _$failedField = 'members';
        members.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IntelEventInput',
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

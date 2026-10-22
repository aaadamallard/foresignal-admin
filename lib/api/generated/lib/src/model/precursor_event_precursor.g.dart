// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_event_precursor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrecursorEventPrecursorKindEnum _$precursorEventPrecursorKindEnum_event =
    const PrecursorEventPrecursorKindEnum._('event');
const PrecursorEventPrecursorKindEnum _$precursorEventPrecursorKindEnum_series =
    const PrecursorEventPrecursorKindEnum._('series');

PrecursorEventPrecursorKindEnum _$precursorEventPrecursorKindEnumValueOf(
  String name,
) {
  switch (name) {
    case 'event':
      return _$precursorEventPrecursorKindEnum_event;
    case 'series':
      return _$precursorEventPrecursorKindEnum_series;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PrecursorEventPrecursorKindEnum>
_$precursorEventPrecursorKindEnumValues =
    BuiltSet<PrecursorEventPrecursorKindEnum>(
      const <PrecursorEventPrecursorKindEnum>[
        _$precursorEventPrecursorKindEnum_event,
        _$precursorEventPrecursorKindEnum_series,
      ],
    );

const PrecursorEventPrecursorStatusEnum
_$precursorEventPrecursorStatusEnum_candidate =
    const PrecursorEventPrecursorStatusEnum._('candidate');
const PrecursorEventPrecursorStatusEnum
_$precursorEventPrecursorStatusEnum_validated =
    const PrecursorEventPrecursorStatusEnum._('validated');
const PrecursorEventPrecursorStatusEnum
_$precursorEventPrecursorStatusEnum_stale =
    const PrecursorEventPrecursorStatusEnum._('stale');
const PrecursorEventPrecursorStatusEnum
_$precursorEventPrecursorStatusEnum_retired =
    const PrecursorEventPrecursorStatusEnum._('retired');

PrecursorEventPrecursorStatusEnum _$precursorEventPrecursorStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'candidate':
      return _$precursorEventPrecursorStatusEnum_candidate;
    case 'validated':
      return _$precursorEventPrecursorStatusEnum_validated;
    case 'stale':
      return _$precursorEventPrecursorStatusEnum_stale;
    case 'retired':
      return _$precursorEventPrecursorStatusEnum_retired;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PrecursorEventPrecursorStatusEnum>
_$precursorEventPrecursorStatusEnumValues =
    BuiltSet<PrecursorEventPrecursorStatusEnum>(
      const <PrecursorEventPrecursorStatusEnum>[
        _$precursorEventPrecursorStatusEnum_candidate,
        _$precursorEventPrecursorStatusEnum_validated,
        _$precursorEventPrecursorStatusEnum_stale,
        _$precursorEventPrecursorStatusEnum_retired,
      ],
    );

Serializer<PrecursorEventPrecursorKindEnum>
_$precursorEventPrecursorKindEnumSerializer =
    _$PrecursorEventPrecursorKindEnumSerializer();
Serializer<PrecursorEventPrecursorStatusEnum>
_$precursorEventPrecursorStatusEnumSerializer =
    _$PrecursorEventPrecursorStatusEnumSerializer();

class _$PrecursorEventPrecursorKindEnumSerializer
    implements PrimitiveSerializer<PrecursorEventPrecursorKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'event': 'event',
    'series': 'series',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'event': 'event',
    'series': 'series',
  };

  @override
  final Iterable<Type> types = const <Type>[PrecursorEventPrecursorKindEnum];
  @override
  final String wireName = 'PrecursorEventPrecursorKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    PrecursorEventPrecursorKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrecursorEventPrecursorKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrecursorEventPrecursorKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PrecursorEventPrecursorStatusEnumSerializer
    implements PrimitiveSerializer<PrecursorEventPrecursorStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'candidate': 'candidate',
    'validated': 'validated',
    'stale': 'stale',
    'retired': 'retired',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'candidate': 'candidate',
    'validated': 'validated',
    'stale': 'stale',
    'retired': 'retired',
  };

  @override
  final Iterable<Type> types = const <Type>[PrecursorEventPrecursorStatusEnum];
  @override
  final String wireName = 'PrecursorEventPrecursorStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    PrecursorEventPrecursorStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrecursorEventPrecursorStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrecursorEventPrecursorStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PrecursorEventPrecursor extends PrecursorEventPrecursor {
  @override
  final String id;
  @override
  final PrecursorEventPrecursorKindEnum kind;
  @override
  final PrecursorEventPrecursorStatusEnum status;
  @override
  final String? statusReason;
  @override
  final String description;
  @override
  final num? lift;

  factory _$PrecursorEventPrecursor([
    void Function(PrecursorEventPrecursorBuilder)? updates,
  ]) => (PrecursorEventPrecursorBuilder()..update(updates))._build();

  _$PrecursorEventPrecursor._({
    required this.id,
    required this.kind,
    required this.status,
    this.statusReason,
    required this.description,
    this.lift,
  }) : super._();
  @override
  PrecursorEventPrecursor rebuild(
    void Function(PrecursorEventPrecursorBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PrecursorEventPrecursorBuilder toBuilder() =>
      PrecursorEventPrecursorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorEventPrecursor &&
        id == other.id &&
        kind == other.kind &&
        status == other.status &&
        statusReason == other.statusReason &&
        description == other.description &&
        lift == other.lift;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusReason.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, lift.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorEventPrecursor')
          ..add('id', id)
          ..add('kind', kind)
          ..add('status', status)
          ..add('statusReason', statusReason)
          ..add('description', description)
          ..add('lift', lift))
        .toString();
  }
}

class PrecursorEventPrecursorBuilder
    implements
        Builder<PrecursorEventPrecursor, PrecursorEventPrecursorBuilder> {
  _$PrecursorEventPrecursor? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  PrecursorEventPrecursorKindEnum? _kind;
  PrecursorEventPrecursorKindEnum? get kind => _$this._kind;
  set kind(PrecursorEventPrecursorKindEnum? kind) => _$this._kind = kind;

  PrecursorEventPrecursorStatusEnum? _status;
  PrecursorEventPrecursorStatusEnum? get status => _$this._status;
  set status(PrecursorEventPrecursorStatusEnum? status) =>
      _$this._status = status;

  String? _statusReason;
  String? get statusReason => _$this._statusReason;
  set statusReason(String? statusReason) => _$this._statusReason = statusReason;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  num? _lift;
  num? get lift => _$this._lift;
  set lift(num? lift) => _$this._lift = lift;

  PrecursorEventPrecursorBuilder() {
    PrecursorEventPrecursor._defaults(this);
  }

  PrecursorEventPrecursorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _kind = $v.kind;
      _status = $v.status;
      _statusReason = $v.statusReason;
      _description = $v.description;
      _lift = $v.lift;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorEventPrecursor other) {
    _$v = other as _$PrecursorEventPrecursor;
  }

  @override
  void update(void Function(PrecursorEventPrecursorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorEventPrecursor build() => _build();

  _$PrecursorEventPrecursor _build() {
    final _$result =
        _$v ??
        _$PrecursorEventPrecursor._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'PrecursorEventPrecursor',
            'id',
          ),
          kind: BuiltValueNullFieldError.checkNotNull(
            kind,
            r'PrecursorEventPrecursor',
            'kind',
          ),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'PrecursorEventPrecursor',
            'status',
          ),
          statusReason: statusReason,
          description: BuiltValueNullFieldError.checkNotNull(
            description,
            r'PrecursorEventPrecursor',
            'description',
          ),
          lift: lift,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

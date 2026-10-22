// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'originator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OriginatorClass_Enum _$originatorClassEnum_sensorNetwork =
    const OriginatorClass_Enum._('sensorNetwork');
const OriginatorClass_Enum _$originatorClassEnum_agency =
    const OriginatorClass_Enum._('agency');
const OriginatorClass_Enum _$originatorClassEnum_aggregator =
    const OriginatorClass_Enum._('aggregator');
const OriginatorClass_Enum _$originatorClassEnum_media =
    const OriginatorClass_Enum._('media');
const OriginatorClass_Enum _$originatorClassEnum_crowd =
    const OriginatorClass_Enum._('crowd');
const OriginatorClass_Enum _$originatorClassEnum_operator_ =
    const OriginatorClass_Enum._('operator_');
const OriginatorClass_Enum _$originatorClassEnum_derived =
    const OriginatorClass_Enum._('derived');
const OriginatorClass_Enum _$originatorClassEnum_social =
    const OriginatorClass_Enum._('social');

OriginatorClass_Enum _$originatorClassEnumValueOf(String name) {
  switch (name) {
    case 'sensorNetwork':
      return _$originatorClassEnum_sensorNetwork;
    case 'agency':
      return _$originatorClassEnum_agency;
    case 'aggregator':
      return _$originatorClassEnum_aggregator;
    case 'media':
      return _$originatorClassEnum_media;
    case 'crowd':
      return _$originatorClassEnum_crowd;
    case 'operator_':
      return _$originatorClassEnum_operator_;
    case 'derived':
      return _$originatorClassEnum_derived;
    case 'social':
      return _$originatorClassEnum_social;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OriginatorClass_Enum> _$originatorClassEnumValues =
    BuiltSet<OriginatorClass_Enum>(const <OriginatorClass_Enum>[
      _$originatorClassEnum_sensorNetwork,
      _$originatorClassEnum_agency,
      _$originatorClassEnum_aggregator,
      _$originatorClassEnum_media,
      _$originatorClassEnum_crowd,
      _$originatorClassEnum_operator_,
      _$originatorClassEnum_derived,
      _$originatorClassEnum_social,
    ]);

Serializer<OriginatorClass_Enum> _$originatorClassEnumSerializer =
    _$OriginatorClass_EnumSerializer();

class _$OriginatorClass_EnumSerializer
    implements PrimitiveSerializer<OriginatorClass_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'sensorNetwork': 'sensor-network',
    'agency': 'agency',
    'aggregator': 'aggregator',
    'media': 'media',
    'crowd': 'crowd',
    'operator_': 'operator',
    'derived': 'derived',
    'social': 'social',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'sensor-network': 'sensorNetwork',
    'agency': 'agency',
    'aggregator': 'aggregator',
    'media': 'media',
    'crowd': 'crowd',
    'operator': 'operator_',
    'derived': 'derived',
    'social': 'social',
  };

  @override
  final Iterable<Type> types = const <Type>[OriginatorClass_Enum];
  @override
  final String wireName = 'OriginatorClass_Enum';

  @override
  Object serialize(
    Serializers serializers,
    OriginatorClass_Enum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OriginatorClass_Enum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OriginatorClass_Enum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Originator extends Originator {
  @override
  final String id;
  @override
  final OriginatorClass_Enum class_;
  @override
  final String? independenceGroup;
  @override
  final BuiltList<String>? aggregates;
  @override
  final String? notes;

  factory _$Originator([void Function(OriginatorBuilder)? updates]) =>
      (OriginatorBuilder()..update(updates))._build();

  _$Originator._({
    required this.id,
    required this.class_,
    this.independenceGroup,
    this.aggregates,
    this.notes,
  }) : super._();
  @override
  Originator rebuild(void Function(OriginatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OriginatorBuilder toBuilder() => OriginatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Originator &&
        id == other.id &&
        class_ == other.class_ &&
        independenceGroup == other.independenceGroup &&
        aggregates == other.aggregates &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, class_.hashCode);
    _$hash = $jc(_$hash, independenceGroup.hashCode);
    _$hash = $jc(_$hash, aggregates.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Originator')
          ..add('id', id)
          ..add('class_', class_)
          ..add('independenceGroup', independenceGroup)
          ..add('aggregates', aggregates)
          ..add('notes', notes))
        .toString();
  }
}

class OriginatorBuilder implements Builder<Originator, OriginatorBuilder> {
  _$Originator? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  OriginatorClass_Enum? _class_;
  OriginatorClass_Enum? get class_ => _$this._class_;
  set class_(OriginatorClass_Enum? class_) => _$this._class_ = class_;

  String? _independenceGroup;
  String? get independenceGroup => _$this._independenceGroup;
  set independenceGroup(String? independenceGroup) =>
      _$this._independenceGroup = independenceGroup;

  ListBuilder<String>? _aggregates;
  ListBuilder<String> get aggregates =>
      _$this._aggregates ??= ListBuilder<String>();
  set aggregates(ListBuilder<String>? aggregates) =>
      _$this._aggregates = aggregates;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  OriginatorBuilder() {
    Originator._defaults(this);
  }

  OriginatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _class_ = $v.class_;
      _independenceGroup = $v.independenceGroup;
      _aggregates = $v.aggregates?.toBuilder();
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Originator other) {
    _$v = other as _$Originator;
  }

  @override
  void update(void Function(OriginatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Originator build() => _build();

  _$Originator _build() {
    _$Originator _$result;
    try {
      _$result =
          _$v ??
          _$Originator._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Originator', 'id'),
            class_: BuiltValueNullFieldError.checkNotNull(
              class_,
              r'Originator',
              'class_',
            ),
            independenceGroup: independenceGroup,
            aggregates: _aggregates?.build(),
            notes: notes,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregates';
        _aggregates?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Originator',
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

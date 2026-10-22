// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_source_info_originator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpSourceInfoOriginatorClass_Enum
_$edpSourceInfoOriginatorClassEnum_sensorNetwork =
    const EdpSourceInfoOriginatorClass_Enum._('sensorNetwork');
const EdpSourceInfoOriginatorClass_Enum
_$edpSourceInfoOriginatorClassEnum_agency =
    const EdpSourceInfoOriginatorClass_Enum._('agency');
const EdpSourceInfoOriginatorClass_Enum
_$edpSourceInfoOriginatorClassEnum_aggregator =
    const EdpSourceInfoOriginatorClass_Enum._('aggregator');
const EdpSourceInfoOriginatorClass_Enum
_$edpSourceInfoOriginatorClassEnum_media =
    const EdpSourceInfoOriginatorClass_Enum._('media');
const EdpSourceInfoOriginatorClass_Enum
_$edpSourceInfoOriginatorClassEnum_crowd =
    const EdpSourceInfoOriginatorClass_Enum._('crowd');
const EdpSourceInfoOriginatorClass_Enum
_$edpSourceInfoOriginatorClassEnum_social =
    const EdpSourceInfoOriginatorClass_Enum._('social');
const EdpSourceInfoOriginatorClass_Enum
_$edpSourceInfoOriginatorClassEnum_operator_ =
    const EdpSourceInfoOriginatorClass_Enum._('operator_');
const EdpSourceInfoOriginatorClass_Enum
_$edpSourceInfoOriginatorClassEnum_derived =
    const EdpSourceInfoOriginatorClass_Enum._('derived');

EdpSourceInfoOriginatorClass_Enum _$edpSourceInfoOriginatorClassEnumValueOf(
  String name,
) {
  switch (name) {
    case 'sensorNetwork':
      return _$edpSourceInfoOriginatorClassEnum_sensorNetwork;
    case 'agency':
      return _$edpSourceInfoOriginatorClassEnum_agency;
    case 'aggregator':
      return _$edpSourceInfoOriginatorClassEnum_aggregator;
    case 'media':
      return _$edpSourceInfoOriginatorClassEnum_media;
    case 'crowd':
      return _$edpSourceInfoOriginatorClassEnum_crowd;
    case 'social':
      return _$edpSourceInfoOriginatorClassEnum_social;
    case 'operator_':
      return _$edpSourceInfoOriginatorClassEnum_operator_;
    case 'derived':
      return _$edpSourceInfoOriginatorClassEnum_derived;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EdpSourceInfoOriginatorClass_Enum>
_$edpSourceInfoOriginatorClassEnumValues =
    BuiltSet<EdpSourceInfoOriginatorClass_Enum>(
      const <EdpSourceInfoOriginatorClass_Enum>[
        _$edpSourceInfoOriginatorClassEnum_sensorNetwork,
        _$edpSourceInfoOriginatorClassEnum_agency,
        _$edpSourceInfoOriginatorClassEnum_aggregator,
        _$edpSourceInfoOriginatorClassEnum_media,
        _$edpSourceInfoOriginatorClassEnum_crowd,
        _$edpSourceInfoOriginatorClassEnum_social,
        _$edpSourceInfoOriginatorClassEnum_operator_,
        _$edpSourceInfoOriginatorClassEnum_derived,
      ],
    );

Serializer<EdpSourceInfoOriginatorClass_Enum>
_$edpSourceInfoOriginatorClassEnumSerializer =
    _$EdpSourceInfoOriginatorClass_EnumSerializer();

class _$EdpSourceInfoOriginatorClass_EnumSerializer
    implements PrimitiveSerializer<EdpSourceInfoOriginatorClass_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'sensorNetwork': 'sensor-network',
    'agency': 'agency',
    'aggregator': 'aggregator',
    'media': 'media',
    'crowd': 'crowd',
    'social': 'social',
    'operator_': 'operator',
    'derived': 'derived',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'sensor-network': 'sensorNetwork',
    'agency': 'agency',
    'aggregator': 'aggregator',
    'media': 'media',
    'crowd': 'crowd',
    'social': 'social',
    'operator': 'operator_',
    'derived': 'derived',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpSourceInfoOriginatorClass_Enum];
  @override
  final String wireName = 'EdpSourceInfoOriginatorClass_Enum';

  @override
  Object serialize(
    Serializers serializers,
    EdpSourceInfoOriginatorClass_Enum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EdpSourceInfoOriginatorClass_Enum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EdpSourceInfoOriginatorClass_Enum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EdpSourceInfoOriginator extends EdpSourceInfoOriginator {
  @override
  final String id;
  @override
  final EdpSourceInfoOriginatorClass_Enum class_;
  @override
  final BuiltList<String>? aggregates;

  factory _$EdpSourceInfoOriginator([
    void Function(EdpSourceInfoOriginatorBuilder)? updates,
  ]) => (EdpSourceInfoOriginatorBuilder()..update(updates))._build();

  _$EdpSourceInfoOriginator._({
    required this.id,
    required this.class_,
    this.aggregates,
  }) : super._();
  @override
  EdpSourceInfoOriginator rebuild(
    void Function(EdpSourceInfoOriginatorBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EdpSourceInfoOriginatorBuilder toBuilder() =>
      EdpSourceInfoOriginatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpSourceInfoOriginator &&
        id == other.id &&
        class_ == other.class_ &&
        aggregates == other.aggregates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, class_.hashCode);
    _$hash = $jc(_$hash, aggregates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpSourceInfoOriginator')
          ..add('id', id)
          ..add('class_', class_)
          ..add('aggregates', aggregates))
        .toString();
  }
}

class EdpSourceInfoOriginatorBuilder
    implements
        Builder<EdpSourceInfoOriginator, EdpSourceInfoOriginatorBuilder> {
  _$EdpSourceInfoOriginator? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  EdpSourceInfoOriginatorClass_Enum? _class_;
  EdpSourceInfoOriginatorClass_Enum? get class_ => _$this._class_;
  set class_(EdpSourceInfoOriginatorClass_Enum? class_) =>
      _$this._class_ = class_;

  ListBuilder<String>? _aggregates;
  ListBuilder<String> get aggregates =>
      _$this._aggregates ??= ListBuilder<String>();
  set aggregates(ListBuilder<String>? aggregates) =>
      _$this._aggregates = aggregates;

  EdpSourceInfoOriginatorBuilder() {
    EdpSourceInfoOriginator._defaults(this);
  }

  EdpSourceInfoOriginatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _class_ = $v.class_;
      _aggregates = $v.aggregates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpSourceInfoOriginator other) {
    _$v = other as _$EdpSourceInfoOriginator;
  }

  @override
  void update(void Function(EdpSourceInfoOriginatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpSourceInfoOriginator build() => _build();

  _$EdpSourceInfoOriginator _build() {
    _$EdpSourceInfoOriginator _$result;
    try {
      _$result =
          _$v ??
          _$EdpSourceInfoOriginator._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'EdpSourceInfoOriginator',
              'id',
            ),
            class_: BuiltValueNullFieldError.checkNotNull(
              class_,
              r'EdpSourceInfoOriginator',
              'class_',
            ),
            aggregates: _aggregates?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregates';
        _aggregates?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdpSourceInfoOriginator',
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

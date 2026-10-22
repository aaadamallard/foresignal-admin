// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_origin.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpOriginClass_Enum _$edpOriginClassEnum_sensorNetwork =
    const EdpOriginClass_Enum._('sensorNetwork');
const EdpOriginClass_Enum _$edpOriginClassEnum_agency =
    const EdpOriginClass_Enum._('agency');
const EdpOriginClass_Enum _$edpOriginClassEnum_aggregator =
    const EdpOriginClass_Enum._('aggregator');
const EdpOriginClass_Enum _$edpOriginClassEnum_media =
    const EdpOriginClass_Enum._('media');
const EdpOriginClass_Enum _$edpOriginClassEnum_crowd =
    const EdpOriginClass_Enum._('crowd');
const EdpOriginClass_Enum _$edpOriginClassEnum_social =
    const EdpOriginClass_Enum._('social');
const EdpOriginClass_Enum _$edpOriginClassEnum_operator_ =
    const EdpOriginClass_Enum._('operator_');
const EdpOriginClass_Enum _$edpOriginClassEnum_derived =
    const EdpOriginClass_Enum._('derived');

EdpOriginClass_Enum _$edpOriginClassEnumValueOf(String name) {
  switch (name) {
    case 'sensorNetwork':
      return _$edpOriginClassEnum_sensorNetwork;
    case 'agency':
      return _$edpOriginClassEnum_agency;
    case 'aggregator':
      return _$edpOriginClassEnum_aggregator;
    case 'media':
      return _$edpOriginClassEnum_media;
    case 'crowd':
      return _$edpOriginClassEnum_crowd;
    case 'social':
      return _$edpOriginClassEnum_social;
    case 'operator_':
      return _$edpOriginClassEnum_operator_;
    case 'derived':
      return _$edpOriginClassEnum_derived;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EdpOriginClass_Enum> _$edpOriginClassEnumValues =
    BuiltSet<EdpOriginClass_Enum>(const <EdpOriginClass_Enum>[
  _$edpOriginClassEnum_sensorNetwork,
  _$edpOriginClassEnum_agency,
  _$edpOriginClassEnum_aggregator,
  _$edpOriginClassEnum_media,
  _$edpOriginClassEnum_crowd,
  _$edpOriginClassEnum_social,
  _$edpOriginClassEnum_operator_,
  _$edpOriginClassEnum_derived,
]);

Serializer<EdpOriginClass_Enum> _$edpOriginClassEnumSerializer =
    _$EdpOriginClass_EnumSerializer();

class _$EdpOriginClass_EnumSerializer
    implements PrimitiveSerializer<EdpOriginClass_Enum> {
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
  final Iterable<Type> types = const <Type>[EdpOriginClass_Enum];
  @override
  final String wireName = 'EdpOriginClass_Enum';

  @override
  Object serialize(Serializers serializers, EdpOriginClass_Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EdpOriginClass_Enum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EdpOriginClass_Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EdpOrigin extends EdpOrigin {
  @override
  final String originator;
  @override
  final EdpOriginClass_Enum? class_;
  @override
  final String? upstreamId;
  @override
  final BuiltList<String>? derivedFrom;

  factory _$EdpOrigin([void Function(EdpOriginBuilder)? updates]) =>
      (EdpOriginBuilder()..update(updates))._build();

  _$EdpOrigin._(
      {required this.originator,
      this.class_,
      this.upstreamId,
      this.derivedFrom})
      : super._();
  @override
  EdpOrigin rebuild(void Function(EdpOriginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpOriginBuilder toBuilder() => EdpOriginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpOrigin &&
        originator == other.originator &&
        class_ == other.class_ &&
        upstreamId == other.upstreamId &&
        derivedFrom == other.derivedFrom;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, originator.hashCode);
    _$hash = $jc(_$hash, class_.hashCode);
    _$hash = $jc(_$hash, upstreamId.hashCode);
    _$hash = $jc(_$hash, derivedFrom.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpOrigin')
          ..add('originator', originator)
          ..add('class_', class_)
          ..add('upstreamId', upstreamId)
          ..add('derivedFrom', derivedFrom))
        .toString();
  }
}

class EdpOriginBuilder implements Builder<EdpOrigin, EdpOriginBuilder> {
  _$EdpOrigin? _$v;

  String? _originator;
  String? get originator => _$this._originator;
  set originator(String? originator) => _$this._originator = originator;

  EdpOriginClass_Enum? _class_;
  EdpOriginClass_Enum? get class_ => _$this._class_;
  set class_(EdpOriginClass_Enum? class_) => _$this._class_ = class_;

  String? _upstreamId;
  String? get upstreamId => _$this._upstreamId;
  set upstreamId(String? upstreamId) => _$this._upstreamId = upstreamId;

  ListBuilder<String>? _derivedFrom;
  ListBuilder<String> get derivedFrom =>
      _$this._derivedFrom ??= ListBuilder<String>();
  set derivedFrom(ListBuilder<String>? derivedFrom) =>
      _$this._derivedFrom = derivedFrom;

  EdpOriginBuilder() {
    EdpOrigin._defaults(this);
  }

  EdpOriginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _originator = $v.originator;
      _class_ = $v.class_;
      _upstreamId = $v.upstreamId;
      _derivedFrom = $v.derivedFrom?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpOrigin other) {
    _$v = other as _$EdpOrigin;
  }

  @override
  void update(void Function(EdpOriginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpOrigin build() => _build();

  _$EdpOrigin _build() {
    _$EdpOrigin _$result;
    try {
      _$result = _$v ??
          _$EdpOrigin._(
            originator: BuiltValueNullFieldError.checkNotNull(
                originator, r'EdpOrigin', 'originator'),
            class_: class_,
            upstreamId: upstreamId,
            derivedFrom: _derivedFrom?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'derivedFrom';
        _derivedFrom?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EdpOrigin', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

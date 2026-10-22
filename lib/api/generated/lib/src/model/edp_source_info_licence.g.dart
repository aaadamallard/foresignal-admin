// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_source_info_licence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpSourceInfoLicenceRedistributionEnum
    _$edpSourceInfoLicenceRedistributionEnum_allowed =
    const EdpSourceInfoLicenceRedistributionEnum._('allowed');
const EdpSourceInfoLicenceRedistributionEnum
    _$edpSourceInfoLicenceRedistributionEnum_localOnly =
    const EdpSourceInfoLicenceRedistributionEnum._('localOnly');
const EdpSourceInfoLicenceRedistributionEnum
    _$edpSourceInfoLicenceRedistributionEnum_unknown =
    const EdpSourceInfoLicenceRedistributionEnum._('unknown');

EdpSourceInfoLicenceRedistributionEnum
    _$edpSourceInfoLicenceRedistributionEnumValueOf(String name) {
  switch (name) {
    case 'allowed':
      return _$edpSourceInfoLicenceRedistributionEnum_allowed;
    case 'localOnly':
      return _$edpSourceInfoLicenceRedistributionEnum_localOnly;
    case 'unknown':
      return _$edpSourceInfoLicenceRedistributionEnum_unknown;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EdpSourceInfoLicenceRedistributionEnum>
    _$edpSourceInfoLicenceRedistributionEnumValues = BuiltSet<
        EdpSourceInfoLicenceRedistributionEnum>(const <EdpSourceInfoLicenceRedistributionEnum>[
  _$edpSourceInfoLicenceRedistributionEnum_allowed,
  _$edpSourceInfoLicenceRedistributionEnum_localOnly,
  _$edpSourceInfoLicenceRedistributionEnum_unknown,
]);

Serializer<EdpSourceInfoLicenceRedistributionEnum>
    _$edpSourceInfoLicenceRedistributionEnumSerializer =
    _$EdpSourceInfoLicenceRedistributionEnumSerializer();

class _$EdpSourceInfoLicenceRedistributionEnumSerializer
    implements PrimitiveSerializer<EdpSourceInfoLicenceRedistributionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'allowed': 'allowed',
    'localOnly': 'local-only',
    'unknown': 'unknown',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'allowed': 'allowed',
    'local-only': 'localOnly',
    'unknown': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[
    EdpSourceInfoLicenceRedistributionEnum
  ];
  @override
  final String wireName = 'EdpSourceInfoLicenceRedistributionEnum';

  @override
  Object serialize(Serializers serializers,
          EdpSourceInfoLicenceRedistributionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EdpSourceInfoLicenceRedistributionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EdpSourceInfoLicenceRedistributionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EdpSourceInfoLicence extends EdpSourceInfoLicence {
  @override
  final String? id;
  @override
  final String? url;
  @override
  final String? attribution;
  @override
  final EdpSourceInfoLicenceRedistributionEnum? redistribution;

  factory _$EdpSourceInfoLicence(
          [void Function(EdpSourceInfoLicenceBuilder)? updates]) =>
      (EdpSourceInfoLicenceBuilder()..update(updates))._build();

  _$EdpSourceInfoLicence._(
      {this.id, this.url, this.attribution, this.redistribution})
      : super._();
  @override
  EdpSourceInfoLicence rebuild(
          void Function(EdpSourceInfoLicenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpSourceInfoLicenceBuilder toBuilder() =>
      EdpSourceInfoLicenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpSourceInfoLicence &&
        id == other.id &&
        url == other.url &&
        attribution == other.attribution &&
        redistribution == other.redistribution;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, redistribution.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpSourceInfoLicence')
          ..add('id', id)
          ..add('url', url)
          ..add('attribution', attribution)
          ..add('redistribution', redistribution))
        .toString();
  }
}

class EdpSourceInfoLicenceBuilder
    implements Builder<EdpSourceInfoLicence, EdpSourceInfoLicenceBuilder> {
  _$EdpSourceInfoLicence? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _attribution;
  String? get attribution => _$this._attribution;
  set attribution(String? attribution) => _$this._attribution = attribution;

  EdpSourceInfoLicenceRedistributionEnum? _redistribution;
  EdpSourceInfoLicenceRedistributionEnum? get redistribution =>
      _$this._redistribution;
  set redistribution(EdpSourceInfoLicenceRedistributionEnum? redistribution) =>
      _$this._redistribution = redistribution;

  EdpSourceInfoLicenceBuilder() {
    EdpSourceInfoLicence._defaults(this);
  }

  EdpSourceInfoLicenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _url = $v.url;
      _attribution = $v.attribution;
      _redistribution = $v.redistribution;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpSourceInfoLicence other) {
    _$v = other as _$EdpSourceInfoLicence;
  }

  @override
  void update(void Function(EdpSourceInfoLicenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpSourceInfoLicence build() => _build();

  _$EdpSourceInfoLicence _build() {
    final _$result = _$v ??
        _$EdpSourceInfoLicence._(
          id: id,
          url: url,
          attribution: attribution,
          redistribution: redistribution,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

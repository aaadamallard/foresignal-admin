// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_outlet_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MediaOutletPatchTypeEnum _$mediaOutletPatchTypeEnum_wire =
    const MediaOutletPatchTypeEnum._('wire');
const MediaOutletPatchTypeEnum _$mediaOutletPatchTypeEnum_national =
    const MediaOutletPatchTypeEnum._('national');
const MediaOutletPatchTypeEnum _$mediaOutletPatchTypeEnum_regional =
    const MediaOutletPatchTypeEnum._('regional');
const MediaOutletPatchTypeEnum _$mediaOutletPatchTypeEnum_local =
    const MediaOutletPatchTypeEnum._('local');
const MediaOutletPatchTypeEnum _$mediaOutletPatchTypeEnum_publicBroadcaster =
    const MediaOutletPatchTypeEnum._('publicBroadcaster');
const MediaOutletPatchTypeEnum _$mediaOutletPatchTypeEnum_stateAffiliated =
    const MediaOutletPatchTypeEnum._('stateAffiliated');
const MediaOutletPatchTypeEnum _$mediaOutletPatchTypeEnum_aggregator =
    const MediaOutletPatchTypeEnum._('aggregator');
const MediaOutletPatchTypeEnum _$mediaOutletPatchTypeEnum_blog =
    const MediaOutletPatchTypeEnum._('blog');
const MediaOutletPatchTypeEnum _$mediaOutletPatchTypeEnum_official =
    const MediaOutletPatchTypeEnum._('official');
const MediaOutletPatchTypeEnum _$mediaOutletPatchTypeEnum_other =
    const MediaOutletPatchTypeEnum._('other');

MediaOutletPatchTypeEnum _$mediaOutletPatchTypeEnumValueOf(String name) {
  switch (name) {
    case 'wire':
      return _$mediaOutletPatchTypeEnum_wire;
    case 'national':
      return _$mediaOutletPatchTypeEnum_national;
    case 'regional':
      return _$mediaOutletPatchTypeEnum_regional;
    case 'local':
      return _$mediaOutletPatchTypeEnum_local;
    case 'publicBroadcaster':
      return _$mediaOutletPatchTypeEnum_publicBroadcaster;
    case 'stateAffiliated':
      return _$mediaOutletPatchTypeEnum_stateAffiliated;
    case 'aggregator':
      return _$mediaOutletPatchTypeEnum_aggregator;
    case 'blog':
      return _$mediaOutletPatchTypeEnum_blog;
    case 'official':
      return _$mediaOutletPatchTypeEnum_official;
    case 'other':
      return _$mediaOutletPatchTypeEnum_other;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MediaOutletPatchTypeEnum> _$mediaOutletPatchTypeEnumValues =
    BuiltSet<MediaOutletPatchTypeEnum>(const <MediaOutletPatchTypeEnum>[
  _$mediaOutletPatchTypeEnum_wire,
  _$mediaOutletPatchTypeEnum_national,
  _$mediaOutletPatchTypeEnum_regional,
  _$mediaOutletPatchTypeEnum_local,
  _$mediaOutletPatchTypeEnum_publicBroadcaster,
  _$mediaOutletPatchTypeEnum_stateAffiliated,
  _$mediaOutletPatchTypeEnum_aggregator,
  _$mediaOutletPatchTypeEnum_blog,
  _$mediaOutletPatchTypeEnum_official,
  _$mediaOutletPatchTypeEnum_other,
]);

Serializer<MediaOutletPatchTypeEnum> _$mediaOutletPatchTypeEnumSerializer =
    _$MediaOutletPatchTypeEnumSerializer();

class _$MediaOutletPatchTypeEnumSerializer
    implements PrimitiveSerializer<MediaOutletPatchTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'wire': 'wire',
    'national': 'national',
    'regional': 'regional',
    'local': 'local',
    'publicBroadcaster': 'public-broadcaster',
    'stateAffiliated': 'state-affiliated',
    'aggregator': 'aggregator',
    'blog': 'blog',
    'official': 'official',
    'other': 'other',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'wire': 'wire',
    'national': 'national',
    'regional': 'regional',
    'local': 'local',
    'public-broadcaster': 'publicBroadcaster',
    'state-affiliated': 'stateAffiliated',
    'aggregator': 'aggregator',
    'blog': 'blog',
    'official': 'official',
    'other': 'other',
  };

  @override
  final Iterable<Type> types = const <Type>[MediaOutletPatchTypeEnum];
  @override
  final String wireName = 'MediaOutletPatchTypeEnum';

  @override
  Object serialize(Serializers serializers, MediaOutletPatchTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MediaOutletPatchTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MediaOutletPatchTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$MediaOutletPatch extends MediaOutletPatch {
  @override
  final String? name;
  @override
  final MediaOutletPatchTypeEnum? type;
  @override
  final String? ownerOrg;
  @override
  final String? parentOrg;
  @override
  final String? wikidataQid;
  @override
  final BuiltList<String>? domains;
  @override
  final BuiltList<String>? mergeOutletIds;
  @override
  final BuiltList<String>? aggregates;

  factory _$MediaOutletPatch(
          [void Function(MediaOutletPatchBuilder)? updates]) =>
      (MediaOutletPatchBuilder()..update(updates))._build();

  _$MediaOutletPatch._(
      {this.name,
      this.type,
      this.ownerOrg,
      this.parentOrg,
      this.wikidataQid,
      this.domains,
      this.mergeOutletIds,
      this.aggregates})
      : super._();
  @override
  MediaOutletPatch rebuild(void Function(MediaOutletPatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaOutletPatchBuilder toBuilder() =>
      MediaOutletPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaOutletPatch &&
        name == other.name &&
        type == other.type &&
        ownerOrg == other.ownerOrg &&
        parentOrg == other.parentOrg &&
        wikidataQid == other.wikidataQid &&
        domains == other.domains &&
        mergeOutletIds == other.mergeOutletIds &&
        aggregates == other.aggregates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, ownerOrg.hashCode);
    _$hash = $jc(_$hash, parentOrg.hashCode);
    _$hash = $jc(_$hash, wikidataQid.hashCode);
    _$hash = $jc(_$hash, domains.hashCode);
    _$hash = $jc(_$hash, mergeOutletIds.hashCode);
    _$hash = $jc(_$hash, aggregates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaOutletPatch')
          ..add('name', name)
          ..add('type', type)
          ..add('ownerOrg', ownerOrg)
          ..add('parentOrg', parentOrg)
          ..add('wikidataQid', wikidataQid)
          ..add('domains', domains)
          ..add('mergeOutletIds', mergeOutletIds)
          ..add('aggregates', aggregates))
        .toString();
  }
}

class MediaOutletPatchBuilder
    implements Builder<MediaOutletPatch, MediaOutletPatchBuilder> {
  _$MediaOutletPatch? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  MediaOutletPatchTypeEnum? _type;
  MediaOutletPatchTypeEnum? get type => _$this._type;
  set type(MediaOutletPatchTypeEnum? type) => _$this._type = type;

  String? _ownerOrg;
  String? get ownerOrg => _$this._ownerOrg;
  set ownerOrg(String? ownerOrg) => _$this._ownerOrg = ownerOrg;

  String? _parentOrg;
  String? get parentOrg => _$this._parentOrg;
  set parentOrg(String? parentOrg) => _$this._parentOrg = parentOrg;

  String? _wikidataQid;
  String? get wikidataQid => _$this._wikidataQid;
  set wikidataQid(String? wikidataQid) => _$this._wikidataQid = wikidataQid;

  ListBuilder<String>? _domains;
  ListBuilder<String> get domains => _$this._domains ??= ListBuilder<String>();
  set domains(ListBuilder<String>? domains) => _$this._domains = domains;

  ListBuilder<String>? _mergeOutletIds;
  ListBuilder<String> get mergeOutletIds =>
      _$this._mergeOutletIds ??= ListBuilder<String>();
  set mergeOutletIds(ListBuilder<String>? mergeOutletIds) =>
      _$this._mergeOutletIds = mergeOutletIds;

  ListBuilder<String>? _aggregates;
  ListBuilder<String> get aggregates =>
      _$this._aggregates ??= ListBuilder<String>();
  set aggregates(ListBuilder<String>? aggregates) =>
      _$this._aggregates = aggregates;

  MediaOutletPatchBuilder() {
    MediaOutletPatch._defaults(this);
  }

  MediaOutletPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _ownerOrg = $v.ownerOrg;
      _parentOrg = $v.parentOrg;
      _wikidataQid = $v.wikidataQid;
      _domains = $v.domains?.toBuilder();
      _mergeOutletIds = $v.mergeOutletIds?.toBuilder();
      _aggregates = $v.aggregates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaOutletPatch other) {
    _$v = other as _$MediaOutletPatch;
  }

  @override
  void update(void Function(MediaOutletPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaOutletPatch build() => _build();

  _$MediaOutletPatch _build() {
    _$MediaOutletPatch _$result;
    try {
      _$result = _$v ??
          _$MediaOutletPatch._(
            name: name,
            type: type,
            ownerOrg: ownerOrg,
            parentOrg: parentOrg,
            wikidataQid: wikidataQid,
            domains: _domains?.build(),
            mergeOutletIds: _mergeOutletIds?.build(),
            aggregates: _aggregates?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'domains';
        _domains?.build();
        _$failedField = 'mergeOutletIds';
        _mergeOutletIds?.build();
        _$failedField = 'aggregates';
        _aggregates?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MediaOutletPatch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_outlet.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MediaOutletTypeEnum _$mediaOutletTypeEnum_wire =
    const MediaOutletTypeEnum._('wire');
const MediaOutletTypeEnum _$mediaOutletTypeEnum_national =
    const MediaOutletTypeEnum._('national');
const MediaOutletTypeEnum _$mediaOutletTypeEnum_regional =
    const MediaOutletTypeEnum._('regional');
const MediaOutletTypeEnum _$mediaOutletTypeEnum_local =
    const MediaOutletTypeEnum._('local');
const MediaOutletTypeEnum _$mediaOutletTypeEnum_publicBroadcaster =
    const MediaOutletTypeEnum._('publicBroadcaster');
const MediaOutletTypeEnum _$mediaOutletTypeEnum_stateAffiliated =
    const MediaOutletTypeEnum._('stateAffiliated');
const MediaOutletTypeEnum _$mediaOutletTypeEnum_aggregator =
    const MediaOutletTypeEnum._('aggregator');
const MediaOutletTypeEnum _$mediaOutletTypeEnum_blog =
    const MediaOutletTypeEnum._('blog');
const MediaOutletTypeEnum _$mediaOutletTypeEnum_official =
    const MediaOutletTypeEnum._('official');
const MediaOutletTypeEnum _$mediaOutletTypeEnum_other =
    const MediaOutletTypeEnum._('other');
const MediaOutletTypeEnum _$mediaOutletTypeEnum_unknownDefaultOpenApi =
    const MediaOutletTypeEnum._('unknownDefaultOpenApi');

MediaOutletTypeEnum _$mediaOutletTypeEnumValueOf(String name) {
  switch (name) {
    case 'wire':
      return _$mediaOutletTypeEnum_wire;
    case 'national':
      return _$mediaOutletTypeEnum_national;
    case 'regional':
      return _$mediaOutletTypeEnum_regional;
    case 'local':
      return _$mediaOutletTypeEnum_local;
    case 'publicBroadcaster':
      return _$mediaOutletTypeEnum_publicBroadcaster;
    case 'stateAffiliated':
      return _$mediaOutletTypeEnum_stateAffiliated;
    case 'aggregator':
      return _$mediaOutletTypeEnum_aggregator;
    case 'blog':
      return _$mediaOutletTypeEnum_blog;
    case 'official':
      return _$mediaOutletTypeEnum_official;
    case 'other':
      return _$mediaOutletTypeEnum_other;
    case 'unknownDefaultOpenApi':
      return _$mediaOutletTypeEnum_unknownDefaultOpenApi;
    default:
      return _$mediaOutletTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<MediaOutletTypeEnum> _$mediaOutletTypeEnumValues =
    BuiltSet<MediaOutletTypeEnum>(const <MediaOutletTypeEnum>[
      _$mediaOutletTypeEnum_wire,
      _$mediaOutletTypeEnum_national,
      _$mediaOutletTypeEnum_regional,
      _$mediaOutletTypeEnum_local,
      _$mediaOutletTypeEnum_publicBroadcaster,
      _$mediaOutletTypeEnum_stateAffiliated,
      _$mediaOutletTypeEnum_aggregator,
      _$mediaOutletTypeEnum_blog,
      _$mediaOutletTypeEnum_official,
      _$mediaOutletTypeEnum_other,
      _$mediaOutletTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<MediaOutletTypeEnum> _$mediaOutletTypeEnumSerializer =
    _$MediaOutletTypeEnumSerializer();

class _$MediaOutletTypeEnumSerializer
    implements PrimitiveSerializer<MediaOutletTypeEnum> {
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
    'unknownDefaultOpenApi': 'unknown_default_open_api',
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
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MediaOutletTypeEnum];
  @override
  final String wireName = 'MediaOutletTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    MediaOutletTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MediaOutletTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MediaOutletTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MediaOutlet extends MediaOutlet {
  @override
  final String id;
  @override
  final String ref;
  @override
  final String name;
  @override
  final BuiltList<String> domains;
  @override
  final String? country;
  @override
  final BuiltList<String>? languages;
  @override
  final MediaOutletTypeEnum type;
  @override
  final String? ownerOrg;
  @override
  final String? parentOrg;
  @override
  final String? wikidataQid;
  @override
  final String? originatorId;
  @override
  final BuiltList<String>? aggregates;
  @override
  final bool rated;
  @override
  final BuiltList<MediaRating>? ratings;
  @override
  final BuiltList<OutletConsensus> consensus;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  factory _$MediaOutlet([void Function(MediaOutletBuilder)? updates]) =>
      (MediaOutletBuilder()..update(updates))._build();

  _$MediaOutlet._({
    required this.id,
    required this.ref,
    required this.name,
    required this.domains,
    this.country,
    this.languages,
    required this.type,
    this.ownerOrg,
    this.parentOrg,
    this.wikidataQid,
    this.originatorId,
    this.aggregates,
    required this.rated,
    this.ratings,
    required this.consensus,
    required this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  MediaOutlet rebuild(void Function(MediaOutletBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaOutletBuilder toBuilder() => MediaOutletBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaOutlet &&
        id == other.id &&
        ref == other.ref &&
        name == other.name &&
        domains == other.domains &&
        country == other.country &&
        languages == other.languages &&
        type == other.type &&
        ownerOrg == other.ownerOrg &&
        parentOrg == other.parentOrg &&
        wikidataQid == other.wikidataQid &&
        originatorId == other.originatorId &&
        aggregates == other.aggregates &&
        rated == other.rated &&
        ratings == other.ratings &&
        consensus == other.consensus &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, domains.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, ownerOrg.hashCode);
    _$hash = $jc(_$hash, parentOrg.hashCode);
    _$hash = $jc(_$hash, wikidataQid.hashCode);
    _$hash = $jc(_$hash, originatorId.hashCode);
    _$hash = $jc(_$hash, aggregates.hashCode);
    _$hash = $jc(_$hash, rated.hashCode);
    _$hash = $jc(_$hash, ratings.hashCode);
    _$hash = $jc(_$hash, consensus.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaOutlet')
          ..add('id', id)
          ..add('ref', ref)
          ..add('name', name)
          ..add('domains', domains)
          ..add('country', country)
          ..add('languages', languages)
          ..add('type', type)
          ..add('ownerOrg', ownerOrg)
          ..add('parentOrg', parentOrg)
          ..add('wikidataQid', wikidataQid)
          ..add('originatorId', originatorId)
          ..add('aggregates', aggregates)
          ..add('rated', rated)
          ..add('ratings', ratings)
          ..add('consensus', consensus)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class MediaOutletBuilder implements Builder<MediaOutlet, MediaOutletBuilder> {
  _$MediaOutlet? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _domains;
  ListBuilder<String> get domains => _$this._domains ??= ListBuilder<String>();
  set domains(ListBuilder<String>? domains) => _$this._domains = domains;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  ListBuilder<String>? _languages;
  ListBuilder<String> get languages =>
      _$this._languages ??= ListBuilder<String>();
  set languages(ListBuilder<String>? languages) =>
      _$this._languages = languages;

  MediaOutletTypeEnum? _type;
  MediaOutletTypeEnum? get type => _$this._type;
  set type(MediaOutletTypeEnum? type) => _$this._type = type;

  String? _ownerOrg;
  String? get ownerOrg => _$this._ownerOrg;
  set ownerOrg(String? ownerOrg) => _$this._ownerOrg = ownerOrg;

  String? _parentOrg;
  String? get parentOrg => _$this._parentOrg;
  set parentOrg(String? parentOrg) => _$this._parentOrg = parentOrg;

  String? _wikidataQid;
  String? get wikidataQid => _$this._wikidataQid;
  set wikidataQid(String? wikidataQid) => _$this._wikidataQid = wikidataQid;

  String? _originatorId;
  String? get originatorId => _$this._originatorId;
  set originatorId(String? originatorId) => _$this._originatorId = originatorId;

  ListBuilder<String>? _aggregates;
  ListBuilder<String> get aggregates =>
      _$this._aggregates ??= ListBuilder<String>();
  set aggregates(ListBuilder<String>? aggregates) =>
      _$this._aggregates = aggregates;

  bool? _rated;
  bool? get rated => _$this._rated;
  set rated(bool? rated) => _$this._rated = rated;

  ListBuilder<MediaRating>? _ratings;
  ListBuilder<MediaRating> get ratings =>
      _$this._ratings ??= ListBuilder<MediaRating>();
  set ratings(ListBuilder<MediaRating>? ratings) => _$this._ratings = ratings;

  ListBuilder<OutletConsensus>? _consensus;
  ListBuilder<OutletConsensus> get consensus =>
      _$this._consensus ??= ListBuilder<OutletConsensus>();
  set consensus(ListBuilder<OutletConsensus>? consensus) =>
      _$this._consensus = consensus;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  MediaOutletBuilder() {
    MediaOutlet._defaults(this);
  }

  MediaOutletBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ref = $v.ref;
      _name = $v.name;
      _domains = $v.domains.toBuilder();
      _country = $v.country;
      _languages = $v.languages?.toBuilder();
      _type = $v.type;
      _ownerOrg = $v.ownerOrg;
      _parentOrg = $v.parentOrg;
      _wikidataQid = $v.wikidataQid;
      _originatorId = $v.originatorId;
      _aggregates = $v.aggregates?.toBuilder();
      _rated = $v.rated;
      _ratings = $v.ratings?.toBuilder();
      _consensus = $v.consensus.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaOutlet other) {
    _$v = other as _$MediaOutlet;
  }

  @override
  void update(void Function(MediaOutletBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaOutlet build() => _build();

  _$MediaOutlet _build() {
    _$MediaOutlet _$result;
    try {
      _$result =
          _$v ??
          _$MediaOutlet._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'MediaOutlet', 'id'),
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'MediaOutlet',
              'ref',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'MediaOutlet',
              'name',
            ),
            domains: domains.build(),
            country: country,
            languages: _languages?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'MediaOutlet',
              'type',
            ),
            ownerOrg: ownerOrg,
            parentOrg: parentOrg,
            wikidataQid: wikidataQid,
            originatorId: originatorId,
            aggregates: _aggregates?.build(),
            rated: BuiltValueNullFieldError.checkNotNull(
              rated,
              r'MediaOutlet',
              'rated',
            ),
            ratings: _ratings?.build(),
            consensus: consensus.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'MediaOutlet',
              'createdAt',
            ),
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'domains';
        domains.build();

        _$failedField = 'languages';
        _languages?.build();

        _$failedField = 'aggregates';
        _aggregates?.build();

        _$failedField = 'ratings';
        _ratings?.build();
        _$failedField = 'consensus';
        consensus.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MediaOutlet',
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

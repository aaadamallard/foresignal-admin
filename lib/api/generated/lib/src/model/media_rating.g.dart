// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_rating.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MediaRatingProviderEnum _$mediaRatingProviderEnum_wikidata =
    const MediaRatingProviderEnum._('wikidata');
const MediaRatingProviderEnum _$mediaRatingProviderEnum_partisanWeb =
    const MediaRatingProviderEnum._('partisanWeb');
const MediaRatingProviderEnum _$mediaRatingProviderEnum_allsides =
    const MediaRatingProviderEnum._('allsides');
const MediaRatingProviderEnum _$mediaRatingProviderEnum_mbfc =
    const MediaRatingProviderEnum._('mbfc');
const MediaRatingProviderEnum _$mediaRatingProviderEnum_operator_ =
    const MediaRatingProviderEnum._('operator_');
const MediaRatingProviderEnum _$mediaRatingProviderEnum_unknownDefaultOpenApi =
    const MediaRatingProviderEnum._('unknownDefaultOpenApi');

MediaRatingProviderEnum _$mediaRatingProviderEnumValueOf(String name) {
  switch (name) {
    case 'wikidata':
      return _$mediaRatingProviderEnum_wikidata;
    case 'partisanWeb':
      return _$mediaRatingProviderEnum_partisanWeb;
    case 'allsides':
      return _$mediaRatingProviderEnum_allsides;
    case 'mbfc':
      return _$mediaRatingProviderEnum_mbfc;
    case 'operator_':
      return _$mediaRatingProviderEnum_operator_;
    case 'unknownDefaultOpenApi':
      return _$mediaRatingProviderEnum_unknownDefaultOpenApi;
    default:
      return _$mediaRatingProviderEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<MediaRatingProviderEnum> _$mediaRatingProviderEnumValues =
    BuiltSet<MediaRatingProviderEnum>(const <MediaRatingProviderEnum>[
      _$mediaRatingProviderEnum_wikidata,
      _$mediaRatingProviderEnum_partisanWeb,
      _$mediaRatingProviderEnum_allsides,
      _$mediaRatingProviderEnum_mbfc,
      _$mediaRatingProviderEnum_operator_,
      _$mediaRatingProviderEnum_unknownDefaultOpenApi,
    ]);

const MediaRatingEgressEnum _$mediaRatingEgressEnum_OPEN =
    const MediaRatingEgressEnum._('OPEN');
const MediaRatingEgressEnum _$mediaRatingEgressEnum_LOCAL_ONLY =
    const MediaRatingEgressEnum._('LOCAL_ONLY');
const MediaRatingEgressEnum _$mediaRatingEgressEnum_unknownDefaultOpenApi =
    const MediaRatingEgressEnum._('unknownDefaultOpenApi');

MediaRatingEgressEnum _$mediaRatingEgressEnumValueOf(String name) {
  switch (name) {
    case 'OPEN':
      return _$mediaRatingEgressEnum_OPEN;
    case 'LOCAL_ONLY':
      return _$mediaRatingEgressEnum_LOCAL_ONLY;
    case 'unknownDefaultOpenApi':
      return _$mediaRatingEgressEnum_unknownDefaultOpenApi;
    default:
      return _$mediaRatingEgressEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<MediaRatingEgressEnum> _$mediaRatingEgressEnumValues =
    BuiltSet<MediaRatingEgressEnum>(const <MediaRatingEgressEnum>[
      _$mediaRatingEgressEnum_OPEN,
      _$mediaRatingEgressEnum_LOCAL_ONLY,
      _$mediaRatingEgressEnum_unknownDefaultOpenApi,
    ]);

Serializer<MediaRatingProviderEnum> _$mediaRatingProviderEnumSerializer =
    _$MediaRatingProviderEnumSerializer();
Serializer<MediaRatingEgressEnum> _$mediaRatingEgressEnumSerializer =
    _$MediaRatingEgressEnumSerializer();

class _$MediaRatingProviderEnumSerializer
    implements PrimitiveSerializer<MediaRatingProviderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'wikidata': 'wikidata',
    'partisanWeb': 'partisan-web',
    'allsides': 'allsides',
    'mbfc': 'mbfc',
    'operator_': 'operator',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'wikidata': 'wikidata',
    'partisan-web': 'partisanWeb',
    'allsides': 'allsides',
    'mbfc': 'mbfc',
    'operator': 'operator_',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MediaRatingProviderEnum];
  @override
  final String wireName = 'MediaRatingProviderEnum';

  @override
  Object serialize(
    Serializers serializers,
    MediaRatingProviderEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MediaRatingProviderEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MediaRatingProviderEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MediaRatingEgressEnumSerializer
    implements PrimitiveSerializer<MediaRatingEgressEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'OPEN': 'OPEN',
    'LOCAL_ONLY': 'LOCAL_ONLY',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OPEN': 'OPEN',
    'LOCAL_ONLY': 'LOCAL_ONLY',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MediaRatingEgressEnum];
  @override
  final String wireName = 'MediaRatingEgressEnum';

  @override
  Object serialize(
    Serializers serializers,
    MediaRatingEgressEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MediaRatingEgressEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MediaRatingEgressEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MediaRating extends MediaRating {
  @override
  final String outletId;
  @override
  final MediaRatingProviderEnum provider;
  @override
  final JsonObject? dimension;
  @override
  final num? valueNorm;
  @override
  final String? valueRaw;
  @override
  final String? label;
  @override
  final DateTime? ratedAt;
  @override
  final String licence;
  @override
  final String attribution;
  @override
  final String? url;
  @override
  final MediaRatingEgressEnum egress;
  @override
  final DateTime importedAt;

  factory _$MediaRating([void Function(MediaRatingBuilder)? updates]) =>
      (MediaRatingBuilder()..update(updates))._build();

  _$MediaRating._({
    required this.outletId,
    required this.provider,
    this.dimension,
    this.valueNorm,
    this.valueRaw,
    this.label,
    this.ratedAt,
    required this.licence,
    required this.attribution,
    this.url,
    required this.egress,
    required this.importedAt,
  }) : super._();
  @override
  MediaRating rebuild(void Function(MediaRatingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaRatingBuilder toBuilder() => MediaRatingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaRating &&
        outletId == other.outletId &&
        provider == other.provider &&
        dimension == other.dimension &&
        valueNorm == other.valueNorm &&
        valueRaw == other.valueRaw &&
        label == other.label &&
        ratedAt == other.ratedAt &&
        licence == other.licence &&
        attribution == other.attribution &&
        url == other.url &&
        egress == other.egress &&
        importedAt == other.importedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, outletId.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, dimension.hashCode);
    _$hash = $jc(_$hash, valueNorm.hashCode);
    _$hash = $jc(_$hash, valueRaw.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, ratedAt.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, egress.hashCode);
    _$hash = $jc(_$hash, importedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaRating')
          ..add('outletId', outletId)
          ..add('provider', provider)
          ..add('dimension', dimension)
          ..add('valueNorm', valueNorm)
          ..add('valueRaw', valueRaw)
          ..add('label', label)
          ..add('ratedAt', ratedAt)
          ..add('licence', licence)
          ..add('attribution', attribution)
          ..add('url', url)
          ..add('egress', egress)
          ..add('importedAt', importedAt))
        .toString();
  }
}

class MediaRatingBuilder implements Builder<MediaRating, MediaRatingBuilder> {
  _$MediaRating? _$v;

  String? _outletId;
  String? get outletId => _$this._outletId;
  set outletId(String? outletId) => _$this._outletId = outletId;

  MediaRatingProviderEnum? _provider;
  MediaRatingProviderEnum? get provider => _$this._provider;
  set provider(MediaRatingProviderEnum? provider) =>
      _$this._provider = provider;

  JsonObject? _dimension;
  JsonObject? get dimension => _$this._dimension;
  set dimension(JsonObject? dimension) => _$this._dimension = dimension;

  num? _valueNorm;
  num? get valueNorm => _$this._valueNorm;
  set valueNorm(num? valueNorm) => _$this._valueNorm = valueNorm;

  String? _valueRaw;
  String? get valueRaw => _$this._valueRaw;
  set valueRaw(String? valueRaw) => _$this._valueRaw = valueRaw;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  DateTime? _ratedAt;
  DateTime? get ratedAt => _$this._ratedAt;
  set ratedAt(DateTime? ratedAt) => _$this._ratedAt = ratedAt;

  String? _licence;
  String? get licence => _$this._licence;
  set licence(String? licence) => _$this._licence = licence;

  String? _attribution;
  String? get attribution => _$this._attribution;
  set attribution(String? attribution) => _$this._attribution = attribution;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  MediaRatingEgressEnum? _egress;
  MediaRatingEgressEnum? get egress => _$this._egress;
  set egress(MediaRatingEgressEnum? egress) => _$this._egress = egress;

  DateTime? _importedAt;
  DateTime? get importedAt => _$this._importedAt;
  set importedAt(DateTime? importedAt) => _$this._importedAt = importedAt;

  MediaRatingBuilder() {
    MediaRating._defaults(this);
  }

  MediaRatingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _outletId = $v.outletId;
      _provider = $v.provider;
      _dimension = $v.dimension;
      _valueNorm = $v.valueNorm;
      _valueRaw = $v.valueRaw;
      _label = $v.label;
      _ratedAt = $v.ratedAt;
      _licence = $v.licence;
      _attribution = $v.attribution;
      _url = $v.url;
      _egress = $v.egress;
      _importedAt = $v.importedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaRating other) {
    _$v = other as _$MediaRating;
  }

  @override
  void update(void Function(MediaRatingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaRating build() => _build();

  _$MediaRating _build() {
    final _$result =
        _$v ??
        _$MediaRating._(
          outletId: BuiltValueNullFieldError.checkNotNull(
            outletId,
            r'MediaRating',
            'outletId',
          ),
          provider: BuiltValueNullFieldError.checkNotNull(
            provider,
            r'MediaRating',
            'provider',
          ),
          dimension: dimension,
          valueNorm: valueNorm,
          valueRaw: valueRaw,
          label: label,
          ratedAt: ratedAt,
          licence: BuiltValueNullFieldError.checkNotNull(
            licence,
            r'MediaRating',
            'licence',
          ),
          attribution: BuiltValueNullFieldError.checkNotNull(
            attribution,
            r'MediaRating',
            'attribution',
          ),
          url: url,
          egress: BuiltValueNullFieldError.checkNotNull(
            egress,
            r'MediaRating',
            'egress',
          ),
          importedAt: BuiltValueNullFieldError.checkNotNull(
            importedAt,
            r'MediaRating',
            'importedAt',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

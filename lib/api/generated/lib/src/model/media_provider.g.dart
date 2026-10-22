// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_provider.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MediaProviderIdEnum _$mediaProviderIdEnum_wikidata =
    const MediaProviderIdEnum._('wikidata');
const MediaProviderIdEnum _$mediaProviderIdEnum_partisanWeb =
    const MediaProviderIdEnum._('partisanWeb');
const MediaProviderIdEnum _$mediaProviderIdEnum_allsides =
    const MediaProviderIdEnum._('allsides');
const MediaProviderIdEnum _$mediaProviderIdEnum_mbfc =
    const MediaProviderIdEnum._('mbfc');
const MediaProviderIdEnum _$mediaProviderIdEnum_operator_ =
    const MediaProviderIdEnum._('operator_');

MediaProviderIdEnum _$mediaProviderIdEnumValueOf(String name) {
  switch (name) {
    case 'wikidata':
      return _$mediaProviderIdEnum_wikidata;
    case 'partisanWeb':
      return _$mediaProviderIdEnum_partisanWeb;
    case 'allsides':
      return _$mediaProviderIdEnum_allsides;
    case 'mbfc':
      return _$mediaProviderIdEnum_mbfc;
    case 'operator_':
      return _$mediaProviderIdEnum_operator_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MediaProviderIdEnum> _$mediaProviderIdEnumValues =
    BuiltSet<MediaProviderIdEnum>(const <MediaProviderIdEnum>[
  _$mediaProviderIdEnum_wikidata,
  _$mediaProviderIdEnum_partisanWeb,
  _$mediaProviderIdEnum_allsides,
  _$mediaProviderIdEnum_mbfc,
  _$mediaProviderIdEnum_operator_,
]);

const MediaProviderEgressEnum _$mediaProviderEgressEnum_OPEN =
    const MediaProviderEgressEnum._('OPEN');
const MediaProviderEgressEnum _$mediaProviderEgressEnum_LOCAL_ONLY =
    const MediaProviderEgressEnum._('LOCAL_ONLY');

MediaProviderEgressEnum _$mediaProviderEgressEnumValueOf(String name) {
  switch (name) {
    case 'OPEN':
      return _$mediaProviderEgressEnum_OPEN;
    case 'LOCAL_ONLY':
      return _$mediaProviderEgressEnum_LOCAL_ONLY;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MediaProviderEgressEnum> _$mediaProviderEgressEnumValues =
    BuiltSet<MediaProviderEgressEnum>(const <MediaProviderEgressEnum>[
  _$mediaProviderEgressEnum_OPEN,
  _$mediaProviderEgressEnum_LOCAL_ONLY,
]);

const MediaProviderLastImportStatusEnum _$mediaProviderLastImportStatusEnum_ok =
    const MediaProviderLastImportStatusEnum._('ok');
const MediaProviderLastImportStatusEnum
    _$mediaProviderLastImportStatusEnum_partial =
    const MediaProviderLastImportStatusEnum._('partial');
const MediaProviderLastImportStatusEnum
    _$mediaProviderLastImportStatusEnum_failed =
    const MediaProviderLastImportStatusEnum._('failed');

MediaProviderLastImportStatusEnum _$mediaProviderLastImportStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'ok':
      return _$mediaProviderLastImportStatusEnum_ok;
    case 'partial':
      return _$mediaProviderLastImportStatusEnum_partial;
    case 'failed':
      return _$mediaProviderLastImportStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MediaProviderLastImportStatusEnum>
    _$mediaProviderLastImportStatusEnumValues = BuiltSet<
        MediaProviderLastImportStatusEnum>(const <MediaProviderLastImportStatusEnum>[
  _$mediaProviderLastImportStatusEnum_ok,
  _$mediaProviderLastImportStatusEnum_partial,
  _$mediaProviderLastImportStatusEnum_failed,
]);

Serializer<MediaProviderIdEnum> _$mediaProviderIdEnumSerializer =
    _$MediaProviderIdEnumSerializer();
Serializer<MediaProviderEgressEnum> _$mediaProviderEgressEnumSerializer =
    _$MediaProviderEgressEnumSerializer();
Serializer<MediaProviderLastImportStatusEnum>
    _$mediaProviderLastImportStatusEnumSerializer =
    _$MediaProviderLastImportStatusEnumSerializer();

class _$MediaProviderIdEnumSerializer
    implements PrimitiveSerializer<MediaProviderIdEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'wikidata': 'wikidata',
    'partisanWeb': 'partisan-web',
    'allsides': 'allsides',
    'mbfc': 'mbfc',
    'operator_': 'operator',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'wikidata': 'wikidata',
    'partisan-web': 'partisanWeb',
    'allsides': 'allsides',
    'mbfc': 'mbfc',
    'operator': 'operator_',
  };

  @override
  final Iterable<Type> types = const <Type>[MediaProviderIdEnum];
  @override
  final String wireName = 'MediaProviderIdEnum';

  @override
  Object serialize(Serializers serializers, MediaProviderIdEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MediaProviderIdEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MediaProviderIdEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$MediaProviderEgressEnumSerializer
    implements PrimitiveSerializer<MediaProviderEgressEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'OPEN': 'OPEN',
    'LOCAL_ONLY': 'LOCAL_ONLY',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OPEN': 'OPEN',
    'LOCAL_ONLY': 'LOCAL_ONLY',
  };

  @override
  final Iterable<Type> types = const <Type>[MediaProviderEgressEnum];
  @override
  final String wireName = 'MediaProviderEgressEnum';

  @override
  Object serialize(Serializers serializers, MediaProviderEgressEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MediaProviderEgressEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MediaProviderEgressEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$MediaProviderLastImportStatusEnumSerializer
    implements PrimitiveSerializer<MediaProviderLastImportStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'partial': 'partial',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'partial': 'partial',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[MediaProviderLastImportStatusEnum];
  @override
  final String wireName = 'MediaProviderLastImportStatusEnum';

  @override
  Object serialize(
          Serializers serializers, MediaProviderLastImportStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MediaProviderLastImportStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MediaProviderLastImportStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$MediaProvider extends MediaProvider {
  @override
  final MediaProviderIdEnum id;
  @override
  final String name;
  @override
  final bool enabled;
  @override
  final bool? defaultEnabled;
  @override
  final String licence;
  @override
  final String? licenceUrl;
  @override
  final String? attribution;
  @override
  final bool licenceAcknowledged;
  @override
  final String? acknowledgedBy;
  @override
  final DateTime? acknowledgedAt;
  @override
  final MediaProviderEgressEnum egress;
  @override
  final bool? permissionRecorded;
  @override
  final bool? credentialSet;
  @override
  final DateTime? lastImportAt;
  @override
  final MediaProviderLastImportStatusEnum? lastImportStatus;
  @override
  final int? ratingsCount;

  factory _$MediaProvider([void Function(MediaProviderBuilder)? updates]) =>
      (MediaProviderBuilder()..update(updates))._build();

  _$MediaProvider._(
      {required this.id,
      required this.name,
      required this.enabled,
      this.defaultEnabled,
      required this.licence,
      this.licenceUrl,
      this.attribution,
      required this.licenceAcknowledged,
      this.acknowledgedBy,
      this.acknowledgedAt,
      required this.egress,
      this.permissionRecorded,
      this.credentialSet,
      this.lastImportAt,
      this.lastImportStatus,
      this.ratingsCount})
      : super._();
  @override
  MediaProvider rebuild(void Function(MediaProviderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaProviderBuilder toBuilder() => MediaProviderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaProvider &&
        id == other.id &&
        name == other.name &&
        enabled == other.enabled &&
        defaultEnabled == other.defaultEnabled &&
        licence == other.licence &&
        licenceUrl == other.licenceUrl &&
        attribution == other.attribution &&
        licenceAcknowledged == other.licenceAcknowledged &&
        acknowledgedBy == other.acknowledgedBy &&
        acknowledgedAt == other.acknowledgedAt &&
        egress == other.egress &&
        permissionRecorded == other.permissionRecorded &&
        credentialSet == other.credentialSet &&
        lastImportAt == other.lastImportAt &&
        lastImportStatus == other.lastImportStatus &&
        ratingsCount == other.ratingsCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, defaultEnabled.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, licenceUrl.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, licenceAcknowledged.hashCode);
    _$hash = $jc(_$hash, acknowledgedBy.hashCode);
    _$hash = $jc(_$hash, acknowledgedAt.hashCode);
    _$hash = $jc(_$hash, egress.hashCode);
    _$hash = $jc(_$hash, permissionRecorded.hashCode);
    _$hash = $jc(_$hash, credentialSet.hashCode);
    _$hash = $jc(_$hash, lastImportAt.hashCode);
    _$hash = $jc(_$hash, lastImportStatus.hashCode);
    _$hash = $jc(_$hash, ratingsCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaProvider')
          ..add('id', id)
          ..add('name', name)
          ..add('enabled', enabled)
          ..add('defaultEnabled', defaultEnabled)
          ..add('licence', licence)
          ..add('licenceUrl', licenceUrl)
          ..add('attribution', attribution)
          ..add('licenceAcknowledged', licenceAcknowledged)
          ..add('acknowledgedBy', acknowledgedBy)
          ..add('acknowledgedAt', acknowledgedAt)
          ..add('egress', egress)
          ..add('permissionRecorded', permissionRecorded)
          ..add('credentialSet', credentialSet)
          ..add('lastImportAt', lastImportAt)
          ..add('lastImportStatus', lastImportStatus)
          ..add('ratingsCount', ratingsCount))
        .toString();
  }
}

class MediaProviderBuilder
    implements Builder<MediaProvider, MediaProviderBuilder> {
  _$MediaProvider? _$v;

  MediaProviderIdEnum? _id;
  MediaProviderIdEnum? get id => _$this._id;
  set id(MediaProviderIdEnum? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _defaultEnabled;
  bool? get defaultEnabled => _$this._defaultEnabled;
  set defaultEnabled(bool? defaultEnabled) =>
      _$this._defaultEnabled = defaultEnabled;

  String? _licence;
  String? get licence => _$this._licence;
  set licence(String? licence) => _$this._licence = licence;

  String? _licenceUrl;
  String? get licenceUrl => _$this._licenceUrl;
  set licenceUrl(String? licenceUrl) => _$this._licenceUrl = licenceUrl;

  String? _attribution;
  String? get attribution => _$this._attribution;
  set attribution(String? attribution) => _$this._attribution = attribution;

  bool? _licenceAcknowledged;
  bool? get licenceAcknowledged => _$this._licenceAcknowledged;
  set licenceAcknowledged(bool? licenceAcknowledged) =>
      _$this._licenceAcknowledged = licenceAcknowledged;

  String? _acknowledgedBy;
  String? get acknowledgedBy => _$this._acknowledgedBy;
  set acknowledgedBy(String? acknowledgedBy) =>
      _$this._acknowledgedBy = acknowledgedBy;

  DateTime? _acknowledgedAt;
  DateTime? get acknowledgedAt => _$this._acknowledgedAt;
  set acknowledgedAt(DateTime? acknowledgedAt) =>
      _$this._acknowledgedAt = acknowledgedAt;

  MediaProviderEgressEnum? _egress;
  MediaProviderEgressEnum? get egress => _$this._egress;
  set egress(MediaProviderEgressEnum? egress) => _$this._egress = egress;

  bool? _permissionRecorded;
  bool? get permissionRecorded => _$this._permissionRecorded;
  set permissionRecorded(bool? permissionRecorded) =>
      _$this._permissionRecorded = permissionRecorded;

  bool? _credentialSet;
  bool? get credentialSet => _$this._credentialSet;
  set credentialSet(bool? credentialSet) =>
      _$this._credentialSet = credentialSet;

  DateTime? _lastImportAt;
  DateTime? get lastImportAt => _$this._lastImportAt;
  set lastImportAt(DateTime? lastImportAt) =>
      _$this._lastImportAt = lastImportAt;

  MediaProviderLastImportStatusEnum? _lastImportStatus;
  MediaProviderLastImportStatusEnum? get lastImportStatus =>
      _$this._lastImportStatus;
  set lastImportStatus(MediaProviderLastImportStatusEnum? lastImportStatus) =>
      _$this._lastImportStatus = lastImportStatus;

  int? _ratingsCount;
  int? get ratingsCount => _$this._ratingsCount;
  set ratingsCount(int? ratingsCount) => _$this._ratingsCount = ratingsCount;

  MediaProviderBuilder() {
    MediaProvider._defaults(this);
  }

  MediaProviderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _enabled = $v.enabled;
      _defaultEnabled = $v.defaultEnabled;
      _licence = $v.licence;
      _licenceUrl = $v.licenceUrl;
      _attribution = $v.attribution;
      _licenceAcknowledged = $v.licenceAcknowledged;
      _acknowledgedBy = $v.acknowledgedBy;
      _acknowledgedAt = $v.acknowledgedAt;
      _egress = $v.egress;
      _permissionRecorded = $v.permissionRecorded;
      _credentialSet = $v.credentialSet;
      _lastImportAt = $v.lastImportAt;
      _lastImportStatus = $v.lastImportStatus;
      _ratingsCount = $v.ratingsCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaProvider other) {
    _$v = other as _$MediaProvider;
  }

  @override
  void update(void Function(MediaProviderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaProvider build() => _build();

  _$MediaProvider _build() {
    final _$result = _$v ??
        _$MediaProvider._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'MediaProvider', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'MediaProvider', 'name'),
          enabled: BuiltValueNullFieldError.checkNotNull(
              enabled, r'MediaProvider', 'enabled'),
          defaultEnabled: defaultEnabled,
          licence: BuiltValueNullFieldError.checkNotNull(
              licence, r'MediaProvider', 'licence'),
          licenceUrl: licenceUrl,
          attribution: attribution,
          licenceAcknowledged: BuiltValueNullFieldError.checkNotNull(
              licenceAcknowledged, r'MediaProvider', 'licenceAcknowledged'),
          acknowledgedBy: acknowledgedBy,
          acknowledgedAt: acknowledgedAt,
          egress: BuiltValueNullFieldError.checkNotNull(
              egress, r'MediaProvider', 'egress'),
          permissionRecorded: permissionRecorded,
          credentialSet: credentialSet,
          lastImportAt: lastImportAt,
          lastImportStatus: lastImportStatus,
          ratingsCount: ratingsCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

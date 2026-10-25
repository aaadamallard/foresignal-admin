// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regional_outlook.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RegionalOutlookRegionLevelEnum _$regionalOutlookRegionLevelEnum_country =
    const RegionalOutlookRegionLevelEnum._('country');
const RegionalOutlookRegionLevelEnum _$regionalOutlookRegionLevelEnum_admin1 =
    const RegionalOutlookRegionLevelEnum._('admin1');
const RegionalOutlookRegionLevelEnum
_$regionalOutlookRegionLevelEnum_unknownDefaultOpenApi =
    const RegionalOutlookRegionLevelEnum._('unknownDefaultOpenApi');

RegionalOutlookRegionLevelEnum _$regionalOutlookRegionLevelEnumValueOf(
  String name,
) {
  switch (name) {
    case 'country':
      return _$regionalOutlookRegionLevelEnum_country;
    case 'admin1':
      return _$regionalOutlookRegionLevelEnum_admin1;
    case 'unknownDefaultOpenApi':
      return _$regionalOutlookRegionLevelEnum_unknownDefaultOpenApi;
    default:
      return _$regionalOutlookRegionLevelEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RegionalOutlookRegionLevelEnum>
_$regionalOutlookRegionLevelEnumValues =
    BuiltSet<RegionalOutlookRegionLevelEnum>(
      const <RegionalOutlookRegionLevelEnum>[
        _$regionalOutlookRegionLevelEnum_country,
        _$regionalOutlookRegionLevelEnum_admin1,
        _$regionalOutlookRegionLevelEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RegionalOutlookRegionLevelEnum>
_$regionalOutlookRegionLevelEnumSerializer =
    _$RegionalOutlookRegionLevelEnumSerializer();

class _$RegionalOutlookRegionLevelEnumSerializer
    implements PrimitiveSerializer<RegionalOutlookRegionLevelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'country': 'country',
    'admin1': 'admin1',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'country': 'country',
    'admin1': 'admin1',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RegionalOutlookRegionLevelEnum];
  @override
  final String wireName = 'RegionalOutlookRegionLevelEnum';

  @override
  Object serialize(
    Serializers serializers,
    RegionalOutlookRegionLevelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RegionalOutlookRegionLevelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RegionalOutlookRegionLevelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RegionalOutlook extends RegionalOutlook {
  @override
  final String region;
  @override
  final RegionalOutlookRegionLevelEnum regionLevel;
  @override
  final String family;
  @override
  final String? category;
  @override
  final DateTime publishedAt;
  @override
  final String modelVersion;
  @override
  final int? asOfSeq;
  @override
  final String? manifestId;
  @override
  final BuiltList<OutlookWindow> windows;
  @override
  final BuiltList<OutlookWindow>? history;
  @override
  final RegionalOutlookSkill? skill;
  @override
  final bool? lowReportingDensity;
  @override
  final bool? lowDetectability;
  @override
  final BuiltList<Caveat>? caveats;
  @override
  final String? recordRef;
  @override
  final String? id;
  @override
  final String? source_;

  factory _$RegionalOutlook([void Function(RegionalOutlookBuilder)? updates]) =>
      (RegionalOutlookBuilder()..update(updates))._build();

  _$RegionalOutlook._({
    required this.region,
    required this.regionLevel,
    required this.family,
    this.category,
    required this.publishedAt,
    required this.modelVersion,
    this.asOfSeq,
    this.manifestId,
    required this.windows,
    this.history,
    this.skill,
    this.lowReportingDensity,
    this.lowDetectability,
    this.caveats,
    this.recordRef,
    this.id,
    this.source_,
  }) : super._();
  @override
  RegionalOutlook rebuild(void Function(RegionalOutlookBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionalOutlookBuilder toBuilder() => RegionalOutlookBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionalOutlook &&
        region == other.region &&
        regionLevel == other.regionLevel &&
        family == other.family &&
        category == other.category &&
        publishedAt == other.publishedAt &&
        modelVersion == other.modelVersion &&
        asOfSeq == other.asOfSeq &&
        manifestId == other.manifestId &&
        windows == other.windows &&
        history == other.history &&
        skill == other.skill &&
        lowReportingDensity == other.lowReportingDensity &&
        lowDetectability == other.lowDetectability &&
        caveats == other.caveats &&
        recordRef == other.recordRef &&
        id == other.id &&
        source_ == other.source_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, regionLevel.hashCode);
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, modelVersion.hashCode);
    _$hash = $jc(_$hash, asOfSeq.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, windows.hashCode);
    _$hash = $jc(_$hash, history.hashCode);
    _$hash = $jc(_$hash, skill.hashCode);
    _$hash = $jc(_$hash, lowReportingDensity.hashCode);
    _$hash = $jc(_$hash, lowDetectability.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jc(_$hash, recordRef.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionalOutlook')
          ..add('region', region)
          ..add('regionLevel', regionLevel)
          ..add('family', family)
          ..add('category', category)
          ..add('publishedAt', publishedAt)
          ..add('modelVersion', modelVersion)
          ..add('asOfSeq', asOfSeq)
          ..add('manifestId', manifestId)
          ..add('windows', windows)
          ..add('history', history)
          ..add('skill', skill)
          ..add('lowReportingDensity', lowReportingDensity)
          ..add('lowDetectability', lowDetectability)
          ..add('caveats', caveats)
          ..add('recordRef', recordRef)
          ..add('id', id)
          ..add('source_', source_))
        .toString();
  }
}

class RegionalOutlookBuilder
    implements Builder<RegionalOutlook, RegionalOutlookBuilder> {
  _$RegionalOutlook? _$v;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  RegionalOutlookRegionLevelEnum? _regionLevel;
  RegionalOutlookRegionLevelEnum? get regionLevel => _$this._regionLevel;
  set regionLevel(RegionalOutlookRegionLevelEnum? regionLevel) =>
      _$this._regionLevel = regionLevel;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  DateTime? _publishedAt;
  DateTime? get publishedAt => _$this._publishedAt;
  set publishedAt(DateTime? publishedAt) => _$this._publishedAt = publishedAt;

  String? _modelVersion;
  String? get modelVersion => _$this._modelVersion;
  set modelVersion(String? modelVersion) => _$this._modelVersion = modelVersion;

  int? _asOfSeq;
  int? get asOfSeq => _$this._asOfSeq;
  set asOfSeq(int? asOfSeq) => _$this._asOfSeq = asOfSeq;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  ListBuilder<OutlookWindow>? _windows;
  ListBuilder<OutlookWindow> get windows =>
      _$this._windows ??= ListBuilder<OutlookWindow>();
  set windows(ListBuilder<OutlookWindow>? windows) => _$this._windows = windows;

  ListBuilder<OutlookWindow>? _history;
  ListBuilder<OutlookWindow> get history =>
      _$this._history ??= ListBuilder<OutlookWindow>();
  set history(ListBuilder<OutlookWindow>? history) => _$this._history = history;

  RegionalOutlookSkillBuilder? _skill;
  RegionalOutlookSkillBuilder get skill =>
      _$this._skill ??= RegionalOutlookSkillBuilder();
  set skill(RegionalOutlookSkillBuilder? skill) => _$this._skill = skill;

  bool? _lowReportingDensity;
  bool? get lowReportingDensity => _$this._lowReportingDensity;
  set lowReportingDensity(bool? lowReportingDensity) =>
      _$this._lowReportingDensity = lowReportingDensity;

  bool? _lowDetectability;
  bool? get lowDetectability => _$this._lowDetectability;
  set lowDetectability(bool? lowDetectability) =>
      _$this._lowDetectability = lowDetectability;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  String? _recordRef;
  String? get recordRef => _$this._recordRef;
  set recordRef(String? recordRef) => _$this._recordRef = recordRef;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  RegionalOutlookBuilder() {
    RegionalOutlook._defaults(this);
  }

  RegionalOutlookBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _region = $v.region;
      _regionLevel = $v.regionLevel;
      _family = $v.family;
      _category = $v.category;
      _publishedAt = $v.publishedAt;
      _modelVersion = $v.modelVersion;
      _asOfSeq = $v.asOfSeq;
      _manifestId = $v.manifestId;
      _windows = $v.windows.toBuilder();
      _history = $v.history?.toBuilder();
      _skill = $v.skill?.toBuilder();
      _lowReportingDensity = $v.lowReportingDensity;
      _lowDetectability = $v.lowDetectability;
      _caveats = $v.caveats?.toBuilder();
      _recordRef = $v.recordRef;
      _id = $v.id;
      _source_ = $v.source_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionalOutlook other) {
    _$v = other as _$RegionalOutlook;
  }

  @override
  void update(void Function(RegionalOutlookBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionalOutlook build() => _build();

  _$RegionalOutlook _build() {
    _$RegionalOutlook _$result;
    try {
      _$result =
          _$v ??
          _$RegionalOutlook._(
            region: BuiltValueNullFieldError.checkNotNull(
              region,
              r'RegionalOutlook',
              'region',
            ),
            regionLevel: BuiltValueNullFieldError.checkNotNull(
              regionLevel,
              r'RegionalOutlook',
              'regionLevel',
            ),
            family: BuiltValueNullFieldError.checkNotNull(
              family,
              r'RegionalOutlook',
              'family',
            ),
            category: category,
            publishedAt: BuiltValueNullFieldError.checkNotNull(
              publishedAt,
              r'RegionalOutlook',
              'publishedAt',
            ),
            modelVersion: BuiltValueNullFieldError.checkNotNull(
              modelVersion,
              r'RegionalOutlook',
              'modelVersion',
            ),
            asOfSeq: asOfSeq,
            manifestId: manifestId,
            windows: windows.build(),
            history: _history?.build(),
            skill: _skill?.build(),
            lowReportingDensity: lowReportingDensity,
            lowDetectability: lowDetectability,
            caveats: _caveats?.build(),
            recordRef: recordRef,
            id: id,
            source_: source_,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'windows';
        windows.build();
        _$failedField = 'history';
        _history?.build();
        _$failedField = 'skill';
        _skill?.build();

        _$failedField = 'caveats';
        _caveats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RegionalOutlook',
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

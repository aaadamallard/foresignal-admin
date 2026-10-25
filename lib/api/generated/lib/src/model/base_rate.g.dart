// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_rate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BaseRateOriginEnum _$baseRateOriginEnum_auto = const BaseRateOriginEnum._(
  'auto',
);
const BaseRateOriginEnum _$baseRateOriginEnum_operator_ =
    const BaseRateOriginEnum._('operator_');
const BaseRateOriginEnum _$baseRateOriginEnum_agent =
    const BaseRateOriginEnum._('agent');
const BaseRateOriginEnum _$baseRateOriginEnum_unknownDefaultOpenApi =
    const BaseRateOriginEnum._('unknownDefaultOpenApi');

BaseRateOriginEnum _$baseRateOriginEnumValueOf(String name) {
  switch (name) {
    case 'auto':
      return _$baseRateOriginEnum_auto;
    case 'operator_':
      return _$baseRateOriginEnum_operator_;
    case 'agent':
      return _$baseRateOriginEnum_agent;
    case 'unknownDefaultOpenApi':
      return _$baseRateOriginEnum_unknownDefaultOpenApi;
    default:
      return _$baseRateOriginEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BaseRateOriginEnum> _$baseRateOriginEnumValues =
    BuiltSet<BaseRateOriginEnum>(const <BaseRateOriginEnum>[
      _$baseRateOriginEnum_auto,
      _$baseRateOriginEnum_operator_,
      _$baseRateOriginEnum_agent,
      _$baseRateOriginEnum_unknownDefaultOpenApi,
    ]);

Serializer<BaseRateOriginEnum> _$baseRateOriginEnumSerializer =
    _$BaseRateOriginEnumSerializer();

class _$BaseRateOriginEnumSerializer
    implements PrimitiveSerializer<BaseRateOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'auto': 'auto',
    'operator_': 'operator',
    'agent': 'agent',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'auto': 'auto',
    'operator': 'operator_',
    'agent': 'agent',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BaseRateOriginEnum];
  @override
  final String wireName = 'BaseRateOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    BaseRateOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BaseRateOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BaseRateOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BaseRate extends BaseRate {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final BaseRateDefinition definition;
  @override
  final String referenceClass;
  @override
  final num ratePerWindow;
  @override
  final num pAtLeastOne;
  @override
  final StatInterval interval;
  @override
  final int nWindows;
  @override
  final int nEvents;
  @override
  final Date periodFrom;
  @override
  final Date periodTo;
  @override
  final BuiltMap<String, int> sourceMix;
  @override
  final BuiltList<BaseRateLicencesInner>? licences;
  @override
  final BaseRateUnconditional? unconditional;
  @override
  final BuiltList<RegionProfile>? regionProfiles;
  @override
  final BuiltList<Caveat> caveats;
  @override
  final DetectorRef computer;
  @override
  final DateTime computedAt;
  @override
  final BaseRateOriginEnum origin;
  @override
  final bool? cached;
  @override
  final String manifestId;

  factory _$BaseRate([void Function(BaseRateBuilder)? updates]) =>
      (BaseRateBuilder()..update(updates))._build();

  _$BaseRate._({
    this.id,
    this.name,
    required this.definition,
    required this.referenceClass,
    required this.ratePerWindow,
    required this.pAtLeastOne,
    required this.interval,
    required this.nWindows,
    required this.nEvents,
    required this.periodFrom,
    required this.periodTo,
    required this.sourceMix,
    this.licences,
    this.unconditional,
    this.regionProfiles,
    required this.caveats,
    required this.computer,
    required this.computedAt,
    required this.origin,
    this.cached,
    required this.manifestId,
  }) : super._();
  @override
  BaseRate rebuild(void Function(BaseRateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseRateBuilder toBuilder() => BaseRateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseRate &&
        id == other.id &&
        name == other.name &&
        definition == other.definition &&
        referenceClass == other.referenceClass &&
        ratePerWindow == other.ratePerWindow &&
        pAtLeastOne == other.pAtLeastOne &&
        interval == other.interval &&
        nWindows == other.nWindows &&
        nEvents == other.nEvents &&
        periodFrom == other.periodFrom &&
        periodTo == other.periodTo &&
        sourceMix == other.sourceMix &&
        licences == other.licences &&
        unconditional == other.unconditional &&
        regionProfiles == other.regionProfiles &&
        caveats == other.caveats &&
        computer == other.computer &&
        computedAt == other.computedAt &&
        origin == other.origin &&
        cached == other.cached &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, definition.hashCode);
    _$hash = $jc(_$hash, referenceClass.hashCode);
    _$hash = $jc(_$hash, ratePerWindow.hashCode);
    _$hash = $jc(_$hash, pAtLeastOne.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, nWindows.hashCode);
    _$hash = $jc(_$hash, nEvents.hashCode);
    _$hash = $jc(_$hash, periodFrom.hashCode);
    _$hash = $jc(_$hash, periodTo.hashCode);
    _$hash = $jc(_$hash, sourceMix.hashCode);
    _$hash = $jc(_$hash, licences.hashCode);
    _$hash = $jc(_$hash, unconditional.hashCode);
    _$hash = $jc(_$hash, regionProfiles.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jc(_$hash, computer.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, cached.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BaseRate')
          ..add('id', id)
          ..add('name', name)
          ..add('definition', definition)
          ..add('referenceClass', referenceClass)
          ..add('ratePerWindow', ratePerWindow)
          ..add('pAtLeastOne', pAtLeastOne)
          ..add('interval', interval)
          ..add('nWindows', nWindows)
          ..add('nEvents', nEvents)
          ..add('periodFrom', periodFrom)
          ..add('periodTo', periodTo)
          ..add('sourceMix', sourceMix)
          ..add('licences', licences)
          ..add('unconditional', unconditional)
          ..add('regionProfiles', regionProfiles)
          ..add('caveats', caveats)
          ..add('computer', computer)
          ..add('computedAt', computedAt)
          ..add('origin', origin)
          ..add('cached', cached)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class BaseRateBuilder implements Builder<BaseRate, BaseRateBuilder> {
  _$BaseRate? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  BaseRateDefinitionBuilder? _definition;
  BaseRateDefinitionBuilder get definition =>
      _$this._definition ??= BaseRateDefinitionBuilder();
  set definition(BaseRateDefinitionBuilder? definition) =>
      _$this._definition = definition;

  String? _referenceClass;
  String? get referenceClass => _$this._referenceClass;
  set referenceClass(String? referenceClass) =>
      _$this._referenceClass = referenceClass;

  num? _ratePerWindow;
  num? get ratePerWindow => _$this._ratePerWindow;
  set ratePerWindow(num? ratePerWindow) =>
      _$this._ratePerWindow = ratePerWindow;

  num? _pAtLeastOne;
  num? get pAtLeastOne => _$this._pAtLeastOne;
  set pAtLeastOne(num? pAtLeastOne) => _$this._pAtLeastOne = pAtLeastOne;

  StatIntervalBuilder? _interval;
  StatIntervalBuilder get interval =>
      _$this._interval ??= StatIntervalBuilder();
  set interval(StatIntervalBuilder? interval) => _$this._interval = interval;

  int? _nWindows;
  int? get nWindows => _$this._nWindows;
  set nWindows(int? nWindows) => _$this._nWindows = nWindows;

  int? _nEvents;
  int? get nEvents => _$this._nEvents;
  set nEvents(int? nEvents) => _$this._nEvents = nEvents;

  Date? _periodFrom;
  Date? get periodFrom => _$this._periodFrom;
  set periodFrom(Date? periodFrom) => _$this._periodFrom = periodFrom;

  Date? _periodTo;
  Date? get periodTo => _$this._periodTo;
  set periodTo(Date? periodTo) => _$this._periodTo = periodTo;

  MapBuilder<String, int>? _sourceMix;
  MapBuilder<String, int> get sourceMix =>
      _$this._sourceMix ??= MapBuilder<String, int>();
  set sourceMix(MapBuilder<String, int>? sourceMix) =>
      _$this._sourceMix = sourceMix;

  ListBuilder<BaseRateLicencesInner>? _licences;
  ListBuilder<BaseRateLicencesInner> get licences =>
      _$this._licences ??= ListBuilder<BaseRateLicencesInner>();
  set licences(ListBuilder<BaseRateLicencesInner>? licences) =>
      _$this._licences = licences;

  BaseRateUnconditionalBuilder? _unconditional;
  BaseRateUnconditionalBuilder get unconditional =>
      _$this._unconditional ??= BaseRateUnconditionalBuilder();
  set unconditional(BaseRateUnconditionalBuilder? unconditional) =>
      _$this._unconditional = unconditional;

  ListBuilder<RegionProfile>? _regionProfiles;
  ListBuilder<RegionProfile> get regionProfiles =>
      _$this._regionProfiles ??= ListBuilder<RegionProfile>();
  set regionProfiles(ListBuilder<RegionProfile>? regionProfiles) =>
      _$this._regionProfiles = regionProfiles;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  DetectorRefBuilder? _computer;
  DetectorRefBuilder get computer => _$this._computer ??= DetectorRefBuilder();
  set computer(DetectorRefBuilder? computer) => _$this._computer = computer;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  BaseRateOriginEnum? _origin;
  BaseRateOriginEnum? get origin => _$this._origin;
  set origin(BaseRateOriginEnum? origin) => _$this._origin = origin;

  bool? _cached;
  bool? get cached => _$this._cached;
  set cached(bool? cached) => _$this._cached = cached;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  BaseRateBuilder() {
    BaseRate._defaults(this);
  }

  BaseRateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _definition = $v.definition.toBuilder();
      _referenceClass = $v.referenceClass;
      _ratePerWindow = $v.ratePerWindow;
      _pAtLeastOne = $v.pAtLeastOne;
      _interval = $v.interval.toBuilder();
      _nWindows = $v.nWindows;
      _nEvents = $v.nEvents;
      _periodFrom = $v.periodFrom;
      _periodTo = $v.periodTo;
      _sourceMix = $v.sourceMix.toBuilder();
      _licences = $v.licences?.toBuilder();
      _unconditional = $v.unconditional?.toBuilder();
      _regionProfiles = $v.regionProfiles?.toBuilder();
      _caveats = $v.caveats.toBuilder();
      _computer = $v.computer.toBuilder();
      _computedAt = $v.computedAt;
      _origin = $v.origin;
      _cached = $v.cached;
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseRate other) {
    _$v = other as _$BaseRate;
  }

  @override
  void update(void Function(BaseRateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BaseRate build() => _build();

  _$BaseRate _build() {
    _$BaseRate _$result;
    try {
      _$result =
          _$v ??
          _$BaseRate._(
            id: id,
            name: name,
            definition: definition.build(),
            referenceClass: BuiltValueNullFieldError.checkNotNull(
              referenceClass,
              r'BaseRate',
              'referenceClass',
            ),
            ratePerWindow: BuiltValueNullFieldError.checkNotNull(
              ratePerWindow,
              r'BaseRate',
              'ratePerWindow',
            ),
            pAtLeastOne: BuiltValueNullFieldError.checkNotNull(
              pAtLeastOne,
              r'BaseRate',
              'pAtLeastOne',
            ),
            interval: interval.build(),
            nWindows: BuiltValueNullFieldError.checkNotNull(
              nWindows,
              r'BaseRate',
              'nWindows',
            ),
            nEvents: BuiltValueNullFieldError.checkNotNull(
              nEvents,
              r'BaseRate',
              'nEvents',
            ),
            periodFrom: BuiltValueNullFieldError.checkNotNull(
              periodFrom,
              r'BaseRate',
              'periodFrom',
            ),
            periodTo: BuiltValueNullFieldError.checkNotNull(
              periodTo,
              r'BaseRate',
              'periodTo',
            ),
            sourceMix: sourceMix.build(),
            licences: _licences?.build(),
            unconditional: _unconditional?.build(),
            regionProfiles: _regionProfiles?.build(),
            caveats: caveats.build(),
            computer: computer.build(),
            computedAt: BuiltValueNullFieldError.checkNotNull(
              computedAt,
              r'BaseRate',
              'computedAt',
            ),
            origin: BuiltValueNullFieldError.checkNotNull(
              origin,
              r'BaseRate',
              'origin',
            ),
            cached: cached,
            manifestId: BuiltValueNullFieldError.checkNotNull(
              manifestId,
              r'BaseRate',
              'manifestId',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'definition';
        definition.build();

        _$failedField = 'interval';
        interval.build();

        _$failedField = 'sourceMix';
        sourceMix.build();
        _$failedField = 'licences';
        _licences?.build();
        _$failedField = 'unconditional';
        _unconditional?.build();
        _$failedField = 'regionProfiles';
        _regionProfiles?.build();
        _$failedField = 'caveats';
        caveats.build();
        _$failedField = 'computer';
        computer.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BaseRate',
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

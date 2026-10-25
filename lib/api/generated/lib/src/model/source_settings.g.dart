// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SourceSettingsRegionTaggingEnum _$sourceSettingsRegionTaggingEnum_eager =
    const SourceSettingsRegionTaggingEnum._('eager');
const SourceSettingsRegionTaggingEnum _$sourceSettingsRegionTaggingEnum_lazy =
    const SourceSettingsRegionTaggingEnum._('lazy');
const SourceSettingsRegionTaggingEnum _$sourceSettingsRegionTaggingEnum_off =
    const SourceSettingsRegionTaggingEnum._('off');
const SourceSettingsRegionTaggingEnum
_$sourceSettingsRegionTaggingEnum_unknownDefaultOpenApi =
    const SourceSettingsRegionTaggingEnum._('unknownDefaultOpenApi');

SourceSettingsRegionTaggingEnum _$sourceSettingsRegionTaggingEnumValueOf(
  String name,
) {
  switch (name) {
    case 'eager':
      return _$sourceSettingsRegionTaggingEnum_eager;
    case 'lazy':
      return _$sourceSettingsRegionTaggingEnum_lazy;
    case 'off':
      return _$sourceSettingsRegionTaggingEnum_off;
    case 'unknownDefaultOpenApi':
      return _$sourceSettingsRegionTaggingEnum_unknownDefaultOpenApi;
    default:
      return _$sourceSettingsRegionTaggingEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SourceSettingsRegionTaggingEnum>
_$sourceSettingsRegionTaggingEnumValues =
    BuiltSet<SourceSettingsRegionTaggingEnum>(
      const <SourceSettingsRegionTaggingEnum>[
        _$sourceSettingsRegionTaggingEnum_eager,
        _$sourceSettingsRegionTaggingEnum_lazy,
        _$sourceSettingsRegionTaggingEnum_off,
        _$sourceSettingsRegionTaggingEnum_unknownDefaultOpenApi,
      ],
    );

const SourceSettingsEgressEnum _$sourceSettingsEgressEnum_OPEN =
    const SourceSettingsEgressEnum._('OPEN');
const SourceSettingsEgressEnum _$sourceSettingsEgressEnum_LOCAL_ONLY =
    const SourceSettingsEgressEnum._('LOCAL_ONLY');
const SourceSettingsEgressEnum
_$sourceSettingsEgressEnum_unknownDefaultOpenApi =
    const SourceSettingsEgressEnum._('unknownDefaultOpenApi');

SourceSettingsEgressEnum _$sourceSettingsEgressEnumValueOf(String name) {
  switch (name) {
    case 'OPEN':
      return _$sourceSettingsEgressEnum_OPEN;
    case 'LOCAL_ONLY':
      return _$sourceSettingsEgressEnum_LOCAL_ONLY;
    case 'unknownDefaultOpenApi':
      return _$sourceSettingsEgressEnum_unknownDefaultOpenApi;
    default:
      return _$sourceSettingsEgressEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SourceSettingsEgressEnum> _$sourceSettingsEgressEnumValues =
    BuiltSet<SourceSettingsEgressEnum>(const <SourceSettingsEgressEnum>[
      _$sourceSettingsEgressEnum_OPEN,
      _$sourceSettingsEgressEnum_LOCAL_ONLY,
      _$sourceSettingsEgressEnum_unknownDefaultOpenApi,
    ]);

const SourceSettingsReliabilityEnum _$sourceSettingsReliabilityEnum_A =
    const SourceSettingsReliabilityEnum._('A');
const SourceSettingsReliabilityEnum _$sourceSettingsReliabilityEnum_B =
    const SourceSettingsReliabilityEnum._('B');
const SourceSettingsReliabilityEnum _$sourceSettingsReliabilityEnum_C =
    const SourceSettingsReliabilityEnum._('C');
const SourceSettingsReliabilityEnum _$sourceSettingsReliabilityEnum_D =
    const SourceSettingsReliabilityEnum._('D');
const SourceSettingsReliabilityEnum _$sourceSettingsReliabilityEnum_E =
    const SourceSettingsReliabilityEnum._('E');
const SourceSettingsReliabilityEnum _$sourceSettingsReliabilityEnum_F =
    const SourceSettingsReliabilityEnum._('F');
const SourceSettingsReliabilityEnum
_$sourceSettingsReliabilityEnum_unknownDefaultOpenApi =
    const SourceSettingsReliabilityEnum._('unknownDefaultOpenApi');

SourceSettingsReliabilityEnum _$sourceSettingsReliabilityEnumValueOf(
  String name,
) {
  switch (name) {
    case 'A':
      return _$sourceSettingsReliabilityEnum_A;
    case 'B':
      return _$sourceSettingsReliabilityEnum_B;
    case 'C':
      return _$sourceSettingsReliabilityEnum_C;
    case 'D':
      return _$sourceSettingsReliabilityEnum_D;
    case 'E':
      return _$sourceSettingsReliabilityEnum_E;
    case 'F':
      return _$sourceSettingsReliabilityEnum_F;
    case 'unknownDefaultOpenApi':
      return _$sourceSettingsReliabilityEnum_unknownDefaultOpenApi;
    default:
      return _$sourceSettingsReliabilityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SourceSettingsReliabilityEnum>
_$sourceSettingsReliabilityEnumValues = BuiltSet<SourceSettingsReliabilityEnum>(
  const <SourceSettingsReliabilityEnum>[
    _$sourceSettingsReliabilityEnum_A,
    _$sourceSettingsReliabilityEnum_B,
    _$sourceSettingsReliabilityEnum_C,
    _$sourceSettingsReliabilityEnum_D,
    _$sourceSettingsReliabilityEnum_E,
    _$sourceSettingsReliabilityEnum_F,
    _$sourceSettingsReliabilityEnum_unknownDefaultOpenApi,
  ],
);

Serializer<SourceSettingsRegionTaggingEnum>
_$sourceSettingsRegionTaggingEnumSerializer =
    _$SourceSettingsRegionTaggingEnumSerializer();
Serializer<SourceSettingsEgressEnum> _$sourceSettingsEgressEnumSerializer =
    _$SourceSettingsEgressEnumSerializer();
Serializer<SourceSettingsReliabilityEnum>
_$sourceSettingsReliabilityEnumSerializer =
    _$SourceSettingsReliabilityEnumSerializer();

class _$SourceSettingsRegionTaggingEnumSerializer
    implements PrimitiveSerializer<SourceSettingsRegionTaggingEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'eager': 'eager',
    'lazy': 'lazy',
    'off': 'off',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'eager': 'eager',
    'lazy': 'lazy',
    'off': 'off',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SourceSettingsRegionTaggingEnum];
  @override
  final String wireName = 'SourceSettingsRegionTaggingEnum';

  @override
  Object serialize(
    Serializers serializers,
    SourceSettingsRegionTaggingEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SourceSettingsRegionTaggingEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SourceSettingsRegionTaggingEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SourceSettingsEgressEnumSerializer
    implements PrimitiveSerializer<SourceSettingsEgressEnum> {
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
  final Iterable<Type> types = const <Type>[SourceSettingsEgressEnum];
  @override
  final String wireName = 'SourceSettingsEgressEnum';

  @override
  Object serialize(
    Serializers serializers,
    SourceSettingsEgressEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SourceSettingsEgressEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SourceSettingsEgressEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SourceSettingsReliabilityEnumSerializer
    implements PrimitiveSerializer<SourceSettingsReliabilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'A': 'A',
    'B': 'B',
    'C': 'C',
    'D': 'D',
    'E': 'E',
    'F': 'F',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'A': 'A',
    'B': 'B',
    'C': 'C',
    'D': 'D',
    'E': 'E',
    'F': 'F',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SourceSettingsReliabilityEnum];
  @override
  final String wireName = 'SourceSettingsReliabilityEnum';

  @override
  Object serialize(
    Serializers serializers,
    SourceSettingsReliabilityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SourceSettingsReliabilityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SourceSettingsReliabilityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SourceSettings extends SourceSettings {
  @override
  final bool enabled;
  @override
  final String interval;
  @override
  final BuiltMap<String, JsonObject?> params;
  @override
  final Budget budget;
  @override
  final String? retention;
  @override
  final bool? embed;
  @override
  final bool credentialsSet;
  @override
  final DateTime? updatedAt;
  @override
  final IngestPolicy? ingestPolicy;
  @override
  final IngestPolicy? effectiveIngestPolicy;
  @override
  final String? effectiveRetention;
  @override
  final bool? statsEnabled;
  @override
  final bool? statsIncludePrivate;
  @override
  final bool? private;
  @override
  final SourceSettingsRegionTaggingEnum? regionTagging;
  @override
  final String? downsampleInterval;
  @override
  final SourceSettingsEgressEnum? egress;
  @override
  final SourceSettingsReliabilityEnum? reliability;

  factory _$SourceSettings([void Function(SourceSettingsBuilder)? updates]) =>
      (SourceSettingsBuilder()..update(updates))._build();

  _$SourceSettings._({
    required this.enabled,
    required this.interval,
    required this.params,
    required this.budget,
    this.retention,
    this.embed,
    required this.credentialsSet,
    this.updatedAt,
    this.ingestPolicy,
    this.effectiveIngestPolicy,
    this.effectiveRetention,
    this.statsEnabled,
    this.statsIncludePrivate,
    this.private,
    this.regionTagging,
    this.downsampleInterval,
    this.egress,
    this.reliability,
  }) : super._();
  @override
  SourceSettings rebuild(void Function(SourceSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceSettingsBuilder toBuilder() => SourceSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceSettings &&
        enabled == other.enabled &&
        interval == other.interval &&
        params == other.params &&
        budget == other.budget &&
        retention == other.retention &&
        embed == other.embed &&
        credentialsSet == other.credentialsSet &&
        updatedAt == other.updatedAt &&
        ingestPolicy == other.ingestPolicy &&
        effectiveIngestPolicy == other.effectiveIngestPolicy &&
        effectiveRetention == other.effectiveRetention &&
        statsEnabled == other.statsEnabled &&
        statsIncludePrivate == other.statsIncludePrivate &&
        private == other.private &&
        regionTagging == other.regionTagging &&
        downsampleInterval == other.downsampleInterval &&
        egress == other.egress &&
        reliability == other.reliability;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, budget.hashCode);
    _$hash = $jc(_$hash, retention.hashCode);
    _$hash = $jc(_$hash, embed.hashCode);
    _$hash = $jc(_$hash, credentialsSet.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, ingestPolicy.hashCode);
    _$hash = $jc(_$hash, effectiveIngestPolicy.hashCode);
    _$hash = $jc(_$hash, effectiveRetention.hashCode);
    _$hash = $jc(_$hash, statsEnabled.hashCode);
    _$hash = $jc(_$hash, statsIncludePrivate.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, regionTagging.hashCode);
    _$hash = $jc(_$hash, downsampleInterval.hashCode);
    _$hash = $jc(_$hash, egress.hashCode);
    _$hash = $jc(_$hash, reliability.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SourceSettings')
          ..add('enabled', enabled)
          ..add('interval', interval)
          ..add('params', params)
          ..add('budget', budget)
          ..add('retention', retention)
          ..add('embed', embed)
          ..add('credentialsSet', credentialsSet)
          ..add('updatedAt', updatedAt)
          ..add('ingestPolicy', ingestPolicy)
          ..add('effectiveIngestPolicy', effectiveIngestPolicy)
          ..add('effectiveRetention', effectiveRetention)
          ..add('statsEnabled', statsEnabled)
          ..add('statsIncludePrivate', statsIncludePrivate)
          ..add('private', private)
          ..add('regionTagging', regionTagging)
          ..add('downsampleInterval', downsampleInterval)
          ..add('egress', egress)
          ..add('reliability', reliability))
        .toString();
  }
}

class SourceSettingsBuilder
    implements Builder<SourceSettings, SourceSettingsBuilder> {
  _$SourceSettings? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _interval;
  String? get interval => _$this._interval;
  set interval(String? interval) => _$this._interval = interval;

  MapBuilder<String, JsonObject?>? _params;
  MapBuilder<String, JsonObject?> get params =>
      _$this._params ??= MapBuilder<String, JsonObject?>();
  set params(MapBuilder<String, JsonObject?>? params) =>
      _$this._params = params;

  BudgetBuilder? _budget;
  BudgetBuilder get budget => _$this._budget ??= BudgetBuilder();
  set budget(BudgetBuilder? budget) => _$this._budget = budget;

  String? _retention;
  String? get retention => _$this._retention;
  set retention(String? retention) => _$this._retention = retention;

  bool? _embed;
  bool? get embed => _$this._embed;
  set embed(bool? embed) => _$this._embed = embed;

  bool? _credentialsSet;
  bool? get credentialsSet => _$this._credentialsSet;
  set credentialsSet(bool? credentialsSet) =>
      _$this._credentialsSet = credentialsSet;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  IngestPolicyBuilder? _ingestPolicy;
  IngestPolicyBuilder get ingestPolicy =>
      _$this._ingestPolicy ??= IngestPolicyBuilder();
  set ingestPolicy(IngestPolicyBuilder? ingestPolicy) =>
      _$this._ingestPolicy = ingestPolicy;

  IngestPolicyBuilder? _effectiveIngestPolicy;
  IngestPolicyBuilder get effectiveIngestPolicy =>
      _$this._effectiveIngestPolicy ??= IngestPolicyBuilder();
  set effectiveIngestPolicy(IngestPolicyBuilder? effectiveIngestPolicy) =>
      _$this._effectiveIngestPolicy = effectiveIngestPolicy;

  String? _effectiveRetention;
  String? get effectiveRetention => _$this._effectiveRetention;
  set effectiveRetention(String? effectiveRetention) =>
      _$this._effectiveRetention = effectiveRetention;

  bool? _statsEnabled;
  bool? get statsEnabled => _$this._statsEnabled;
  set statsEnabled(bool? statsEnabled) => _$this._statsEnabled = statsEnabled;

  bool? _statsIncludePrivate;
  bool? get statsIncludePrivate => _$this._statsIncludePrivate;
  set statsIncludePrivate(bool? statsIncludePrivate) =>
      _$this._statsIncludePrivate = statsIncludePrivate;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  SourceSettingsRegionTaggingEnum? _regionTagging;
  SourceSettingsRegionTaggingEnum? get regionTagging => _$this._regionTagging;
  set regionTagging(SourceSettingsRegionTaggingEnum? regionTagging) =>
      _$this._regionTagging = regionTagging;

  String? _downsampleInterval;
  String? get downsampleInterval => _$this._downsampleInterval;
  set downsampleInterval(String? downsampleInterval) =>
      _$this._downsampleInterval = downsampleInterval;

  SourceSettingsEgressEnum? _egress;
  SourceSettingsEgressEnum? get egress => _$this._egress;
  set egress(SourceSettingsEgressEnum? egress) => _$this._egress = egress;

  SourceSettingsReliabilityEnum? _reliability;
  SourceSettingsReliabilityEnum? get reliability => _$this._reliability;
  set reliability(SourceSettingsReliabilityEnum? reliability) =>
      _$this._reliability = reliability;

  SourceSettingsBuilder() {
    SourceSettings._defaults(this);
  }

  SourceSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _interval = $v.interval;
      _params = $v.params.toBuilder();
      _budget = $v.budget.toBuilder();
      _retention = $v.retention;
      _embed = $v.embed;
      _credentialsSet = $v.credentialsSet;
      _updatedAt = $v.updatedAt;
      _ingestPolicy = $v.ingestPolicy?.toBuilder();
      _effectiveIngestPolicy = $v.effectiveIngestPolicy?.toBuilder();
      _effectiveRetention = $v.effectiveRetention;
      _statsEnabled = $v.statsEnabled;
      _statsIncludePrivate = $v.statsIncludePrivate;
      _private = $v.private;
      _regionTagging = $v.regionTagging;
      _downsampleInterval = $v.downsampleInterval;
      _egress = $v.egress;
      _reliability = $v.reliability;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceSettings other) {
    _$v = other as _$SourceSettings;
  }

  @override
  void update(void Function(SourceSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceSettings build() => _build();

  _$SourceSettings _build() {
    _$SourceSettings _$result;
    try {
      _$result =
          _$v ??
          _$SourceSettings._(
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'SourceSettings',
              'enabled',
            ),
            interval: BuiltValueNullFieldError.checkNotNull(
              interval,
              r'SourceSettings',
              'interval',
            ),
            params: params.build(),
            budget: budget.build(),
            retention: retention,
            embed: embed,
            credentialsSet: BuiltValueNullFieldError.checkNotNull(
              credentialsSet,
              r'SourceSettings',
              'credentialsSet',
            ),
            updatedAt: updatedAt,
            ingestPolicy: _ingestPolicy?.build(),
            effectiveIngestPolicy: _effectiveIngestPolicy?.build(),
            effectiveRetention: effectiveRetention,
            statsEnabled: statsEnabled,
            statsIncludePrivate: statsIncludePrivate,
            private: private,
            regionTagging: regionTagging,
            downsampleInterval: downsampleInterval,
            egress: egress,
            reliability: reliability,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        params.build();
        _$failedField = 'budget';
        budget.build();

        _$failedField = 'ingestPolicy';
        _ingestPolicy?.build();
        _$failedField = 'effectiveIngestPolicy';
        _effectiveIngestPolicy?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SourceSettings',
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

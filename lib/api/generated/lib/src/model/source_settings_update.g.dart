// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_settings_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SourceSettingsUpdateRegionTaggingEnum
_$sourceSettingsUpdateRegionTaggingEnum_eager =
    const SourceSettingsUpdateRegionTaggingEnum._('eager');
const SourceSettingsUpdateRegionTaggingEnum
_$sourceSettingsUpdateRegionTaggingEnum_lazy =
    const SourceSettingsUpdateRegionTaggingEnum._('lazy');
const SourceSettingsUpdateRegionTaggingEnum
_$sourceSettingsUpdateRegionTaggingEnum_off =
    const SourceSettingsUpdateRegionTaggingEnum._('off');
const SourceSettingsUpdateRegionTaggingEnum
_$sourceSettingsUpdateRegionTaggingEnum_unknownDefaultOpenApi =
    const SourceSettingsUpdateRegionTaggingEnum._('unknownDefaultOpenApi');

SourceSettingsUpdateRegionTaggingEnum
_$sourceSettingsUpdateRegionTaggingEnumValueOf(String name) {
  switch (name) {
    case 'eager':
      return _$sourceSettingsUpdateRegionTaggingEnum_eager;
    case 'lazy':
      return _$sourceSettingsUpdateRegionTaggingEnum_lazy;
    case 'off':
      return _$sourceSettingsUpdateRegionTaggingEnum_off;
    case 'unknownDefaultOpenApi':
      return _$sourceSettingsUpdateRegionTaggingEnum_unknownDefaultOpenApi;
    default:
      return _$sourceSettingsUpdateRegionTaggingEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SourceSettingsUpdateRegionTaggingEnum>
_$sourceSettingsUpdateRegionTaggingEnumValues =
    BuiltSet<SourceSettingsUpdateRegionTaggingEnum>(
      const <SourceSettingsUpdateRegionTaggingEnum>[
        _$sourceSettingsUpdateRegionTaggingEnum_eager,
        _$sourceSettingsUpdateRegionTaggingEnum_lazy,
        _$sourceSettingsUpdateRegionTaggingEnum_off,
        _$sourceSettingsUpdateRegionTaggingEnum_unknownDefaultOpenApi,
      ],
    );

const SourceSettingsUpdateEgressEnum _$sourceSettingsUpdateEgressEnum_OPEN =
    const SourceSettingsUpdateEgressEnum._('OPEN');
const SourceSettingsUpdateEgressEnum
_$sourceSettingsUpdateEgressEnum_LOCAL_ONLY =
    const SourceSettingsUpdateEgressEnum._('LOCAL_ONLY');
const SourceSettingsUpdateEgressEnum
_$sourceSettingsUpdateEgressEnum_unknownDefaultOpenApi =
    const SourceSettingsUpdateEgressEnum._('unknownDefaultOpenApi');

SourceSettingsUpdateEgressEnum _$sourceSettingsUpdateEgressEnumValueOf(
  String name,
) {
  switch (name) {
    case 'OPEN':
      return _$sourceSettingsUpdateEgressEnum_OPEN;
    case 'LOCAL_ONLY':
      return _$sourceSettingsUpdateEgressEnum_LOCAL_ONLY;
    case 'unknownDefaultOpenApi':
      return _$sourceSettingsUpdateEgressEnum_unknownDefaultOpenApi;
    default:
      return _$sourceSettingsUpdateEgressEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SourceSettingsUpdateEgressEnum>
_$sourceSettingsUpdateEgressEnumValues =
    BuiltSet<SourceSettingsUpdateEgressEnum>(
      const <SourceSettingsUpdateEgressEnum>[
        _$sourceSettingsUpdateEgressEnum_OPEN,
        _$sourceSettingsUpdateEgressEnum_LOCAL_ONLY,
        _$sourceSettingsUpdateEgressEnum_unknownDefaultOpenApi,
      ],
    );

const SourceSettingsUpdateReliabilityEnum
_$sourceSettingsUpdateReliabilityEnum_A =
    const SourceSettingsUpdateReliabilityEnum._('A');
const SourceSettingsUpdateReliabilityEnum
_$sourceSettingsUpdateReliabilityEnum_B =
    const SourceSettingsUpdateReliabilityEnum._('B');
const SourceSettingsUpdateReliabilityEnum
_$sourceSettingsUpdateReliabilityEnum_C =
    const SourceSettingsUpdateReliabilityEnum._('C');
const SourceSettingsUpdateReliabilityEnum
_$sourceSettingsUpdateReliabilityEnum_D =
    const SourceSettingsUpdateReliabilityEnum._('D');
const SourceSettingsUpdateReliabilityEnum
_$sourceSettingsUpdateReliabilityEnum_E =
    const SourceSettingsUpdateReliabilityEnum._('E');
const SourceSettingsUpdateReliabilityEnum
_$sourceSettingsUpdateReliabilityEnum_F =
    const SourceSettingsUpdateReliabilityEnum._('F');
const SourceSettingsUpdateReliabilityEnum
_$sourceSettingsUpdateReliabilityEnum_unknownDefaultOpenApi =
    const SourceSettingsUpdateReliabilityEnum._('unknownDefaultOpenApi');

SourceSettingsUpdateReliabilityEnum
_$sourceSettingsUpdateReliabilityEnumValueOf(String name) {
  switch (name) {
    case 'A':
      return _$sourceSettingsUpdateReliabilityEnum_A;
    case 'B':
      return _$sourceSettingsUpdateReliabilityEnum_B;
    case 'C':
      return _$sourceSettingsUpdateReliabilityEnum_C;
    case 'D':
      return _$sourceSettingsUpdateReliabilityEnum_D;
    case 'E':
      return _$sourceSettingsUpdateReliabilityEnum_E;
    case 'F':
      return _$sourceSettingsUpdateReliabilityEnum_F;
    case 'unknownDefaultOpenApi':
      return _$sourceSettingsUpdateReliabilityEnum_unknownDefaultOpenApi;
    default:
      return _$sourceSettingsUpdateReliabilityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SourceSettingsUpdateReliabilityEnum>
_$sourceSettingsUpdateReliabilityEnumValues =
    BuiltSet<SourceSettingsUpdateReliabilityEnum>(
      const <SourceSettingsUpdateReliabilityEnum>[
        _$sourceSettingsUpdateReliabilityEnum_A,
        _$sourceSettingsUpdateReliabilityEnum_B,
        _$sourceSettingsUpdateReliabilityEnum_C,
        _$sourceSettingsUpdateReliabilityEnum_D,
        _$sourceSettingsUpdateReliabilityEnum_E,
        _$sourceSettingsUpdateReliabilityEnum_F,
        _$sourceSettingsUpdateReliabilityEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<SourceSettingsUpdateRegionTaggingEnum>
_$sourceSettingsUpdateRegionTaggingEnumSerializer =
    _$SourceSettingsUpdateRegionTaggingEnumSerializer();
Serializer<SourceSettingsUpdateEgressEnum>
_$sourceSettingsUpdateEgressEnumSerializer =
    _$SourceSettingsUpdateEgressEnumSerializer();
Serializer<SourceSettingsUpdateReliabilityEnum>
_$sourceSettingsUpdateReliabilityEnumSerializer =
    _$SourceSettingsUpdateReliabilityEnumSerializer();

class _$SourceSettingsUpdateRegionTaggingEnumSerializer
    implements PrimitiveSerializer<SourceSettingsUpdateRegionTaggingEnum> {
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
  final Iterable<Type> types = const <Type>[
    SourceSettingsUpdateRegionTaggingEnum,
  ];
  @override
  final String wireName = 'SourceSettingsUpdateRegionTaggingEnum';

  @override
  Object serialize(
    Serializers serializers,
    SourceSettingsUpdateRegionTaggingEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SourceSettingsUpdateRegionTaggingEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SourceSettingsUpdateRegionTaggingEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SourceSettingsUpdateEgressEnumSerializer
    implements PrimitiveSerializer<SourceSettingsUpdateEgressEnum> {
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
  final Iterable<Type> types = const <Type>[SourceSettingsUpdateEgressEnum];
  @override
  final String wireName = 'SourceSettingsUpdateEgressEnum';

  @override
  Object serialize(
    Serializers serializers,
    SourceSettingsUpdateEgressEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SourceSettingsUpdateEgressEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SourceSettingsUpdateEgressEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SourceSettingsUpdateReliabilityEnumSerializer
    implements PrimitiveSerializer<SourceSettingsUpdateReliabilityEnum> {
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
  final Iterable<Type> types = const <Type>[
    SourceSettingsUpdateReliabilityEnum,
  ];
  @override
  final String wireName = 'SourceSettingsUpdateReliabilityEnum';

  @override
  Object serialize(
    Serializers serializers,
    SourceSettingsUpdateReliabilityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SourceSettingsUpdateReliabilityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SourceSettingsUpdateReliabilityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SourceSettingsUpdate extends SourceSettingsUpdate {
  @override
  final bool? enabled;
  @override
  final String? interval;
  @override
  final BuiltMap<String, JsonObject?>? params;
  @override
  final Budget? budget;
  @override
  final String? retention;
  @override
  final bool? embed;
  @override
  final IngestPolicy? ingestPolicy;
  @override
  final bool? statsEnabled;
  @override
  final bool? statsIncludePrivate;
  @override
  final bool? private;
  @override
  final SourceSettingsUpdateRegionTaggingEnum? regionTagging;
  @override
  final String? downsampleInterval;
  @override
  final SourceSettingsUpdateEgressEnum? egress;
  @override
  final SourceSettingsUpdateReliabilityEnum? reliability;

  factory _$SourceSettingsUpdate([
    void Function(SourceSettingsUpdateBuilder)? updates,
  ]) => (SourceSettingsUpdateBuilder()..update(updates))._build();

  _$SourceSettingsUpdate._({
    this.enabled,
    this.interval,
    this.params,
    this.budget,
    this.retention,
    this.embed,
    this.ingestPolicy,
    this.statsEnabled,
    this.statsIncludePrivate,
    this.private,
    this.regionTagging,
    this.downsampleInterval,
    this.egress,
    this.reliability,
  }) : super._();
  @override
  SourceSettingsUpdate rebuild(
    void Function(SourceSettingsUpdateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SourceSettingsUpdateBuilder toBuilder() =>
      SourceSettingsUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceSettingsUpdate &&
        enabled == other.enabled &&
        interval == other.interval &&
        params == other.params &&
        budget == other.budget &&
        retention == other.retention &&
        embed == other.embed &&
        ingestPolicy == other.ingestPolicy &&
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
    _$hash = $jc(_$hash, ingestPolicy.hashCode);
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
    return (newBuiltValueToStringHelper(r'SourceSettingsUpdate')
          ..add('enabled', enabled)
          ..add('interval', interval)
          ..add('params', params)
          ..add('budget', budget)
          ..add('retention', retention)
          ..add('embed', embed)
          ..add('ingestPolicy', ingestPolicy)
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

class SourceSettingsUpdateBuilder
    implements Builder<SourceSettingsUpdate, SourceSettingsUpdateBuilder> {
  _$SourceSettingsUpdate? _$v;

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

  IngestPolicyBuilder? _ingestPolicy;
  IngestPolicyBuilder get ingestPolicy =>
      _$this._ingestPolicy ??= IngestPolicyBuilder();
  set ingestPolicy(IngestPolicyBuilder? ingestPolicy) =>
      _$this._ingestPolicy = ingestPolicy;

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

  SourceSettingsUpdateRegionTaggingEnum? _regionTagging;
  SourceSettingsUpdateRegionTaggingEnum? get regionTagging =>
      _$this._regionTagging;
  set regionTagging(SourceSettingsUpdateRegionTaggingEnum? regionTagging) =>
      _$this._regionTagging = regionTagging;

  String? _downsampleInterval;
  String? get downsampleInterval => _$this._downsampleInterval;
  set downsampleInterval(String? downsampleInterval) =>
      _$this._downsampleInterval = downsampleInterval;

  SourceSettingsUpdateEgressEnum? _egress;
  SourceSettingsUpdateEgressEnum? get egress => _$this._egress;
  set egress(SourceSettingsUpdateEgressEnum? egress) => _$this._egress = egress;

  SourceSettingsUpdateReliabilityEnum? _reliability;
  SourceSettingsUpdateReliabilityEnum? get reliability => _$this._reliability;
  set reliability(SourceSettingsUpdateReliabilityEnum? reliability) =>
      _$this._reliability = reliability;

  SourceSettingsUpdateBuilder() {
    SourceSettingsUpdate._defaults(this);
  }

  SourceSettingsUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _interval = $v.interval;
      _params = $v.params?.toBuilder();
      _budget = $v.budget?.toBuilder();
      _retention = $v.retention;
      _embed = $v.embed;
      _ingestPolicy = $v.ingestPolicy?.toBuilder();
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
  void replace(SourceSettingsUpdate other) {
    _$v = other as _$SourceSettingsUpdate;
  }

  @override
  void update(void Function(SourceSettingsUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceSettingsUpdate build() => _build();

  _$SourceSettingsUpdate _build() {
    _$SourceSettingsUpdate _$result;
    try {
      _$result =
          _$v ??
          _$SourceSettingsUpdate._(
            enabled: enabled,
            interval: interval,
            params: _params?.build(),
            budget: _budget?.build(),
            retention: retention,
            embed: embed,
            ingestPolicy: _ingestPolicy?.build(),
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
        _params?.build();
        _$failedField = 'budget';
        _budget?.build();

        _$failedField = 'ingestPolicy';
        _ingestPolicy?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SourceSettingsUpdate',
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

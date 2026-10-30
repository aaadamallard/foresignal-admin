// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'briefing_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BriefingInputModeEnum _$briefingInputModeEnum_digest =
    const BriefingInputModeEnum._('digest');
const BriefingInputModeEnum _$briefingInputModeEnum_llm =
    const BriefingInputModeEnum._('llm');
const BriefingInputModeEnum _$briefingInputModeEnum_unknownDefaultOpenApi =
    const BriefingInputModeEnum._('unknownDefaultOpenApi');

BriefingInputModeEnum _$briefingInputModeEnumValueOf(String name) {
  switch (name) {
    case 'digest':
      return _$briefingInputModeEnum_digest;
    case 'llm':
      return _$briefingInputModeEnum_llm;
    case 'unknownDefaultOpenApi':
      return _$briefingInputModeEnum_unknownDefaultOpenApi;
    default:
      return _$briefingInputModeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BriefingInputModeEnum> _$briefingInputModeEnumValues =
    BuiltSet<BriefingInputModeEnum>(const <BriefingInputModeEnum>[
      _$briefingInputModeEnum_digest,
      _$briefingInputModeEnum_llm,
      _$briefingInputModeEnum_unknownDefaultOpenApi,
    ]);

Serializer<BriefingInputModeEnum> _$briefingInputModeEnumSerializer =
    _$BriefingInputModeEnumSerializer();

class _$BriefingInputModeEnumSerializer
    implements PrimitiveSerializer<BriefingInputModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'digest': 'digest',
    'llm': 'llm',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'digest': 'digest',
    'llm': 'llm',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BriefingInputModeEnum];
  @override
  final String wireName = 'BriefingInputModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    BriefingInputModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BriefingInputModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BriefingInputModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BriefingInput extends BriefingInput {
  @override
  final String? ownerUserId;
  @override
  final String name;
  @override
  final bool? enabled;
  @override
  final String schedule;
  @override
  final String? timezone;
  @override
  final BriefingScope? scope;
  @override
  final String? lookback;
  @override
  final BriefingInputModeEnum? mode;
  @override
  final String? instructions;
  @override
  final BuiltList<String>? channelIds;
  @override
  final int? maxItemsPerKind;
  @override
  final BriefingInputAudio? audio;
  @override
  final String? outputLanguage;
  @override
  final BuiltList<DeliveryTarget>? deliveryTargets;
  @override
  final BriefingInputSite? site;
  @override
  final BreakingNewsConfig? breakingNews;
  @override
  final bool? includeProvenance;
  @override
  final bool? includeCorroboration;

  factory _$BriefingInput([void Function(BriefingInputBuilder)? updates]) =>
      (BriefingInputBuilder()..update(updates))._build();

  _$BriefingInput._({
    this.ownerUserId,
    required this.name,
    this.enabled,
    required this.schedule,
    this.timezone,
    this.scope,
    this.lookback,
    this.mode,
    this.instructions,
    this.channelIds,
    this.maxItemsPerKind,
    this.audio,
    this.outputLanguage,
    this.deliveryTargets,
    this.site,
    this.breakingNews,
    this.includeProvenance,
    this.includeCorroboration,
  }) : super._();
  @override
  BriefingInput rebuild(void Function(BriefingInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BriefingInputBuilder toBuilder() => BriefingInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BriefingInput &&
        ownerUserId == other.ownerUserId &&
        name == other.name &&
        enabled == other.enabled &&
        schedule == other.schedule &&
        timezone == other.timezone &&
        scope == other.scope &&
        lookback == other.lookback &&
        mode == other.mode &&
        instructions == other.instructions &&
        channelIds == other.channelIds &&
        maxItemsPerKind == other.maxItemsPerKind &&
        audio == other.audio &&
        outputLanguage == other.outputLanguage &&
        deliveryTargets == other.deliveryTargets &&
        site == other.site &&
        breakingNews == other.breakingNews &&
        includeProvenance == other.includeProvenance &&
        includeCorroboration == other.includeCorroboration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ownerUserId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, schedule.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, lookback.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, instructions.hashCode);
    _$hash = $jc(_$hash, channelIds.hashCode);
    _$hash = $jc(_$hash, maxItemsPerKind.hashCode);
    _$hash = $jc(_$hash, audio.hashCode);
    _$hash = $jc(_$hash, outputLanguage.hashCode);
    _$hash = $jc(_$hash, deliveryTargets.hashCode);
    _$hash = $jc(_$hash, site.hashCode);
    _$hash = $jc(_$hash, breakingNews.hashCode);
    _$hash = $jc(_$hash, includeProvenance.hashCode);
    _$hash = $jc(_$hash, includeCorroboration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BriefingInput')
          ..add('ownerUserId', ownerUserId)
          ..add('name', name)
          ..add('enabled', enabled)
          ..add('schedule', schedule)
          ..add('timezone', timezone)
          ..add('scope', scope)
          ..add('lookback', lookback)
          ..add('mode', mode)
          ..add('instructions', instructions)
          ..add('channelIds', channelIds)
          ..add('maxItemsPerKind', maxItemsPerKind)
          ..add('audio', audio)
          ..add('outputLanguage', outputLanguage)
          ..add('deliveryTargets', deliveryTargets)
          ..add('site', site)
          ..add('breakingNews', breakingNews)
          ..add('includeProvenance', includeProvenance)
          ..add('includeCorroboration', includeCorroboration))
        .toString();
  }
}

class BriefingInputBuilder
    implements Builder<BriefingInput, BriefingInputBuilder> {
  _$BriefingInput? _$v;

  String? _ownerUserId;
  String? get ownerUserId => _$this._ownerUserId;
  set ownerUserId(String? ownerUserId) => _$this._ownerUserId = ownerUserId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _schedule;
  String? get schedule => _$this._schedule;
  set schedule(String? schedule) => _$this._schedule = schedule;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  BriefingScopeBuilder? _scope;
  BriefingScopeBuilder get scope => _$this._scope ??= BriefingScopeBuilder();
  set scope(BriefingScopeBuilder? scope) => _$this._scope = scope;

  String? _lookback;
  String? get lookback => _$this._lookback;
  set lookback(String? lookback) => _$this._lookback = lookback;

  BriefingInputModeEnum? _mode;
  BriefingInputModeEnum? get mode => _$this._mode;
  set mode(BriefingInputModeEnum? mode) => _$this._mode = mode;

  String? _instructions;
  String? get instructions => _$this._instructions;
  set instructions(String? instructions) => _$this._instructions = instructions;

  ListBuilder<String>? _channelIds;
  ListBuilder<String> get channelIds =>
      _$this._channelIds ??= ListBuilder<String>();
  set channelIds(ListBuilder<String>? channelIds) =>
      _$this._channelIds = channelIds;

  int? _maxItemsPerKind;
  int? get maxItemsPerKind => _$this._maxItemsPerKind;
  set maxItemsPerKind(int? maxItemsPerKind) =>
      _$this._maxItemsPerKind = maxItemsPerKind;

  BriefingInputAudioBuilder? _audio;
  BriefingInputAudioBuilder get audio =>
      _$this._audio ??= BriefingInputAudioBuilder();
  set audio(BriefingInputAudioBuilder? audio) => _$this._audio = audio;

  String? _outputLanguage;
  String? get outputLanguage => _$this._outputLanguage;
  set outputLanguage(String? outputLanguage) =>
      _$this._outputLanguage = outputLanguage;

  ListBuilder<DeliveryTarget>? _deliveryTargets;
  ListBuilder<DeliveryTarget> get deliveryTargets =>
      _$this._deliveryTargets ??= ListBuilder<DeliveryTarget>();
  set deliveryTargets(ListBuilder<DeliveryTarget>? deliveryTargets) =>
      _$this._deliveryTargets = deliveryTargets;

  BriefingInputSiteBuilder? _site;
  BriefingInputSiteBuilder get site =>
      _$this._site ??= BriefingInputSiteBuilder();
  set site(BriefingInputSiteBuilder? site) => _$this._site = site;

  BreakingNewsConfigBuilder? _breakingNews;
  BreakingNewsConfigBuilder get breakingNews =>
      _$this._breakingNews ??= BreakingNewsConfigBuilder();
  set breakingNews(BreakingNewsConfigBuilder? breakingNews) =>
      _$this._breakingNews = breakingNews;

  bool? _includeProvenance;
  bool? get includeProvenance => _$this._includeProvenance;
  set includeProvenance(bool? includeProvenance) =>
      _$this._includeProvenance = includeProvenance;

  bool? _includeCorroboration;
  bool? get includeCorroboration => _$this._includeCorroboration;
  set includeCorroboration(bool? includeCorroboration) =>
      _$this._includeCorroboration = includeCorroboration;

  BriefingInputBuilder() {
    BriefingInput._defaults(this);
  }

  BriefingInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownerUserId = $v.ownerUserId;
      _name = $v.name;
      _enabled = $v.enabled;
      _schedule = $v.schedule;
      _timezone = $v.timezone;
      _scope = $v.scope?.toBuilder();
      _lookback = $v.lookback;
      _mode = $v.mode;
      _instructions = $v.instructions;
      _channelIds = $v.channelIds?.toBuilder();
      _maxItemsPerKind = $v.maxItemsPerKind;
      _audio = $v.audio?.toBuilder();
      _outputLanguage = $v.outputLanguage;
      _deliveryTargets = $v.deliveryTargets?.toBuilder();
      _site = $v.site?.toBuilder();
      _breakingNews = $v.breakingNews?.toBuilder();
      _includeProvenance = $v.includeProvenance;
      _includeCorroboration = $v.includeCorroboration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BriefingInput other) {
    _$v = other as _$BriefingInput;
  }

  @override
  void update(void Function(BriefingInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BriefingInput build() => _build();

  _$BriefingInput _build() {
    _$BriefingInput _$result;
    try {
      _$result =
          _$v ??
          _$BriefingInput._(
            ownerUserId: ownerUserId,
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'BriefingInput',
              'name',
            ),
            enabled: enabled,
            schedule: BuiltValueNullFieldError.checkNotNull(
              schedule,
              r'BriefingInput',
              'schedule',
            ),
            timezone: timezone,
            scope: _scope?.build(),
            lookback: lookback,
            mode: mode,
            instructions: instructions,
            channelIds: _channelIds?.build(),
            maxItemsPerKind: maxItemsPerKind,
            audio: _audio?.build(),
            outputLanguage: outputLanguage,
            deliveryTargets: _deliveryTargets?.build(),
            site: _site?.build(),
            breakingNews: _breakingNews?.build(),
            includeProvenance: includeProvenance,
            includeCorroboration: includeCorroboration,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scope';
        _scope?.build();

        _$failedField = 'channelIds';
        _channelIds?.build();

        _$failedField = 'audio';
        _audio?.build();

        _$failedField = 'deliveryTargets';
        _deliveryTargets?.build();
        _$failedField = 'site';
        _site?.build();
        _$failedField = 'breakingNews';
        _breakingNews?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BriefingInput',
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

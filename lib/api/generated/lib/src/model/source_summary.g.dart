// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SourceSummaryModeEnum _$sourceSummaryModeEnum_polling =
    const SourceSummaryModeEnum._('polling');
const SourceSummaryModeEnum _$sourceSummaryModeEnum_streaming =
    const SourceSummaryModeEnum._('streaming');
const SourceSummaryModeEnum _$sourceSummaryModeEnum_push =
    const SourceSummaryModeEnum._('push');
const SourceSummaryModeEnum _$sourceSummaryModeEnum_derived =
    const SourceSummaryModeEnum._('derived');

SourceSummaryModeEnum _$sourceSummaryModeEnumValueOf(String name) {
  switch (name) {
    case 'polling':
      return _$sourceSummaryModeEnum_polling;
    case 'streaming':
      return _$sourceSummaryModeEnum_streaming;
    case 'push':
      return _$sourceSummaryModeEnum_push;
    case 'derived':
      return _$sourceSummaryModeEnum_derived;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SourceSummaryModeEnum> _$sourceSummaryModeEnumValues =
    BuiltSet<SourceSummaryModeEnum>(const <SourceSummaryModeEnum>[
      _$sourceSummaryModeEnum_polling,
      _$sourceSummaryModeEnum_streaming,
      _$sourceSummaryModeEnum_push,
      _$sourceSummaryModeEnum_derived,
    ]);

Serializer<SourceSummaryModeEnum> _$sourceSummaryModeEnumSerializer =
    _$SourceSummaryModeEnumSerializer();

class _$SourceSummaryModeEnumSerializer
    implements PrimitiveSerializer<SourceSummaryModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'polling': 'polling',
    'streaming': 'streaming',
    'push': 'push',
    'derived': 'derived',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'polling': 'polling',
    'streaming': 'streaming',
    'push': 'push',
    'derived': 'derived',
  };

  @override
  final Iterable<Type> types = const <Type>[SourceSummaryModeEnum];
  @override
  final String wireName = 'SourceSummaryModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    SourceSummaryModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SourceSummaryModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SourceSummaryModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SourceSummary extends SourceSummary {
  @override
  final String id;
  @override
  final String name;
  @override
  final BuiltList<String> kinds;
  @override
  final SourceSummaryModeEnum mode;
  @override
  final bool? custom;
  @override
  final bool enabled;
  @override
  final HealthStatus status;
  @override
  final bool? credentialsRequired;
  @override
  final bool? credentialsSet;
  @override
  final String? interval;
  @override
  final Budget? budget;
  @override
  final int? budgetUsedToday;
  @override
  final DateTime? lastSuccessAt;
  @override
  final HistoryTier? historyTier;
  @override
  final String? licence;
  @override
  final String? termsUrl;
  @override
  final DateTime? lastDataAt;
  @override
  final SourceAccess? access;

  factory _$SourceSummary([void Function(SourceSummaryBuilder)? updates]) =>
      (SourceSummaryBuilder()..update(updates))._build();

  _$SourceSummary._({
    required this.id,
    required this.name,
    required this.kinds,
    required this.mode,
    this.custom,
    required this.enabled,
    required this.status,
    this.credentialsRequired,
    this.credentialsSet,
    this.interval,
    this.budget,
    this.budgetUsedToday,
    this.lastSuccessAt,
    this.historyTier,
    this.licence,
    this.termsUrl,
    this.lastDataAt,
    this.access,
  }) : super._();
  @override
  SourceSummary rebuild(void Function(SourceSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceSummaryBuilder toBuilder() => SourceSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceSummary &&
        id == other.id &&
        name == other.name &&
        kinds == other.kinds &&
        mode == other.mode &&
        custom == other.custom &&
        enabled == other.enabled &&
        status == other.status &&
        credentialsRequired == other.credentialsRequired &&
        credentialsSet == other.credentialsSet &&
        interval == other.interval &&
        budget == other.budget &&
        budgetUsedToday == other.budgetUsedToday &&
        lastSuccessAt == other.lastSuccessAt &&
        historyTier == other.historyTier &&
        licence == other.licence &&
        termsUrl == other.termsUrl &&
        lastDataAt == other.lastDataAt &&
        access == other.access;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, custom.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, credentialsRequired.hashCode);
    _$hash = $jc(_$hash, credentialsSet.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, budget.hashCode);
    _$hash = $jc(_$hash, budgetUsedToday.hashCode);
    _$hash = $jc(_$hash, lastSuccessAt.hashCode);
    _$hash = $jc(_$hash, historyTier.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, termsUrl.hashCode);
    _$hash = $jc(_$hash, lastDataAt.hashCode);
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SourceSummary')
          ..add('id', id)
          ..add('name', name)
          ..add('kinds', kinds)
          ..add('mode', mode)
          ..add('custom', custom)
          ..add('enabled', enabled)
          ..add('status', status)
          ..add('credentialsRequired', credentialsRequired)
          ..add('credentialsSet', credentialsSet)
          ..add('interval', interval)
          ..add('budget', budget)
          ..add('budgetUsedToday', budgetUsedToday)
          ..add('lastSuccessAt', lastSuccessAt)
          ..add('historyTier', historyTier)
          ..add('licence', licence)
          ..add('termsUrl', termsUrl)
          ..add('lastDataAt', lastDataAt)
          ..add('access', access))
        .toString();
  }
}

class SourceSummaryBuilder
    implements Builder<SourceSummary, SourceSummaryBuilder> {
  _$SourceSummary? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  SourceSummaryModeEnum? _mode;
  SourceSummaryModeEnum? get mode => _$this._mode;
  set mode(SourceSummaryModeEnum? mode) => _$this._mode = mode;

  bool? _custom;
  bool? get custom => _$this._custom;
  set custom(bool? custom) => _$this._custom = custom;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  HealthStatus? _status;
  HealthStatus? get status => _$this._status;
  set status(HealthStatus? status) => _$this._status = status;

  bool? _credentialsRequired;
  bool? get credentialsRequired => _$this._credentialsRequired;
  set credentialsRequired(bool? credentialsRequired) =>
      _$this._credentialsRequired = credentialsRequired;

  bool? _credentialsSet;
  bool? get credentialsSet => _$this._credentialsSet;
  set credentialsSet(bool? credentialsSet) =>
      _$this._credentialsSet = credentialsSet;

  String? _interval;
  String? get interval => _$this._interval;
  set interval(String? interval) => _$this._interval = interval;

  BudgetBuilder? _budget;
  BudgetBuilder get budget => _$this._budget ??= BudgetBuilder();
  set budget(BudgetBuilder? budget) => _$this._budget = budget;

  int? _budgetUsedToday;
  int? get budgetUsedToday => _$this._budgetUsedToday;
  set budgetUsedToday(int? budgetUsedToday) =>
      _$this._budgetUsedToday = budgetUsedToday;

  DateTime? _lastSuccessAt;
  DateTime? get lastSuccessAt => _$this._lastSuccessAt;
  set lastSuccessAt(DateTime? lastSuccessAt) =>
      _$this._lastSuccessAt = lastSuccessAt;

  HistoryTier? _historyTier;
  HistoryTier? get historyTier => _$this._historyTier;
  set historyTier(HistoryTier? historyTier) =>
      _$this._historyTier = historyTier;

  String? _licence;
  String? get licence => _$this._licence;
  set licence(String? licence) => _$this._licence = licence;

  String? _termsUrl;
  String? get termsUrl => _$this._termsUrl;
  set termsUrl(String? termsUrl) => _$this._termsUrl = termsUrl;

  DateTime? _lastDataAt;
  DateTime? get lastDataAt => _$this._lastDataAt;
  set lastDataAt(DateTime? lastDataAt) => _$this._lastDataAt = lastDataAt;

  SourceAccessBuilder? _access;
  SourceAccessBuilder get access => _$this._access ??= SourceAccessBuilder();
  set access(SourceAccessBuilder? access) => _$this._access = access;

  SourceSummaryBuilder() {
    SourceSummary._defaults(this);
  }

  SourceSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _kinds = $v.kinds.toBuilder();
      _mode = $v.mode;
      _custom = $v.custom;
      _enabled = $v.enabled;
      _status = $v.status;
      _credentialsRequired = $v.credentialsRequired;
      _credentialsSet = $v.credentialsSet;
      _interval = $v.interval;
      _budget = $v.budget?.toBuilder();
      _budgetUsedToday = $v.budgetUsedToday;
      _lastSuccessAt = $v.lastSuccessAt;
      _historyTier = $v.historyTier;
      _licence = $v.licence;
      _termsUrl = $v.termsUrl;
      _lastDataAt = $v.lastDataAt;
      _access = $v.access?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceSummary other) {
    _$v = other as _$SourceSummary;
  }

  @override
  void update(void Function(SourceSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceSummary build() => _build();

  _$SourceSummary _build() {
    _$SourceSummary _$result;
    try {
      _$result =
          _$v ??
          _$SourceSummary._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'SourceSummary',
              'id',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'SourceSummary',
              'name',
            ),
            kinds: kinds.build(),
            mode: BuiltValueNullFieldError.checkNotNull(
              mode,
              r'SourceSummary',
              'mode',
            ),
            custom: custom,
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'SourceSummary',
              'enabled',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'SourceSummary',
              'status',
            ),
            credentialsRequired: credentialsRequired,
            credentialsSet: credentialsSet,
            interval: interval,
            budget: _budget?.build(),
            budgetUsedToday: budgetUsedToday,
            lastSuccessAt: lastSuccessAt,
            historyTier: historyTier,
            licence: licence,
            termsUrl: termsUrl,
            lastDataAt: lastDataAt,
            access: _access?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'kinds';
        kinds.build();

        _$failedField = 'budget';
        _budget?.build();

        _$failedField = 'access';
        _access?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SourceSummary',
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

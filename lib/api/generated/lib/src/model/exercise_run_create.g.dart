// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_run_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExerciseRunCreateSpeedEnum _$exerciseRunCreateSpeedEnum_realtime =
    const ExerciseRunCreateSpeedEnum._('realtime');
const ExerciseRunCreateSpeedEnum _$exerciseRunCreateSpeedEnum_x10 =
    const ExerciseRunCreateSpeedEnum._('x10');
const ExerciseRunCreateSpeedEnum _$exerciseRunCreateSpeedEnum_x60 =
    const ExerciseRunCreateSpeedEnum._('x60');
const ExerciseRunCreateSpeedEnum _$exerciseRunCreateSpeedEnum_max =
    const ExerciseRunCreateSpeedEnum._('max');

ExerciseRunCreateSpeedEnum _$exerciseRunCreateSpeedEnumValueOf(String name) {
  switch (name) {
    case 'realtime':
      return _$exerciseRunCreateSpeedEnum_realtime;
    case 'x10':
      return _$exerciseRunCreateSpeedEnum_x10;
    case 'x60':
      return _$exerciseRunCreateSpeedEnum_x60;
    case 'max':
      return _$exerciseRunCreateSpeedEnum_max;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExerciseRunCreateSpeedEnum> _$exerciseRunCreateSpeedEnumValues =
    BuiltSet<ExerciseRunCreateSpeedEnum>(const <ExerciseRunCreateSpeedEnum>[
  _$exerciseRunCreateSpeedEnum_realtime,
  _$exerciseRunCreateSpeedEnum_x10,
  _$exerciseRunCreateSpeedEnum_x60,
  _$exerciseRunCreateSpeedEnum_max,
]);

Serializer<ExerciseRunCreateSpeedEnum> _$exerciseRunCreateSpeedEnumSerializer =
    _$ExerciseRunCreateSpeedEnumSerializer();

class _$ExerciseRunCreateSpeedEnumSerializer
    implements PrimitiveSerializer<ExerciseRunCreateSpeedEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'realtime': 'realtime',
    'x10': 'x10',
    'x60': 'x60',
    'max': 'max',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'realtime': 'realtime',
    'x10': 'x10',
    'x60': 'x60',
    'max': 'max',
  };

  @override
  final Iterable<Type> types = const <Type>[ExerciseRunCreateSpeedEnum];
  @override
  final String wireName = 'ExerciseRunCreateSpeedEnum';

  @override
  Object serialize(Serializers serializers, ExerciseRunCreateSpeedEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExerciseRunCreateSpeedEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExerciseRunCreateSpeedEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ExerciseRunCreate extends ExerciseRunCreate {
  @override
  final String name;
  @override
  final BuiltList<String>? ruleIds;
  @override
  final String? tag;
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final int? fromSeq;
  @override
  final int? toSeq;
  @override
  final ExerciseRunCreateSpeedEnum? speed;
  @override
  final BuiltList<String>? channelIds;
  @override
  final bool? enrich;
  @override
  final bool? dryRun;

  factory _$ExerciseRunCreate(
          [void Function(ExerciseRunCreateBuilder)? updates]) =>
      (ExerciseRunCreateBuilder()..update(updates))._build();

  _$ExerciseRunCreate._(
      {required this.name,
      this.ruleIds,
      this.tag,
      this.from,
      this.to,
      this.fromSeq,
      this.toSeq,
      this.speed,
      this.channelIds,
      this.enrich,
      this.dryRun})
      : super._();
  @override
  ExerciseRunCreate rebuild(void Function(ExerciseRunCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExerciseRunCreateBuilder toBuilder() =>
      ExerciseRunCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExerciseRunCreate &&
        name == other.name &&
        ruleIds == other.ruleIds &&
        tag == other.tag &&
        from == other.from &&
        to == other.to &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq &&
        speed == other.speed &&
        channelIds == other.channelIds &&
        enrich == other.enrich &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, ruleIds.hashCode);
    _$hash = $jc(_$hash, tag.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jc(_$hash, speed.hashCode);
    _$hash = $jc(_$hash, channelIds.hashCode);
    _$hash = $jc(_$hash, enrich.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExerciseRunCreate')
          ..add('name', name)
          ..add('ruleIds', ruleIds)
          ..add('tag', tag)
          ..add('from', from)
          ..add('to', to)
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq)
          ..add('speed', speed)
          ..add('channelIds', channelIds)
          ..add('enrich', enrich)
          ..add('dryRun', dryRun))
        .toString();
  }
}

class ExerciseRunCreateBuilder
    implements Builder<ExerciseRunCreate, ExerciseRunCreateBuilder> {
  _$ExerciseRunCreate? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _ruleIds;
  ListBuilder<String> get ruleIds => _$this._ruleIds ??= ListBuilder<String>();
  set ruleIds(ListBuilder<String>? ruleIds) => _$this._ruleIds = ruleIds;

  String? _tag;
  String? get tag => _$this._tag;
  set tag(String? tag) => _$this._tag = tag;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  ExerciseRunCreateSpeedEnum? _speed;
  ExerciseRunCreateSpeedEnum? get speed => _$this._speed;
  set speed(ExerciseRunCreateSpeedEnum? speed) => _$this._speed = speed;

  ListBuilder<String>? _channelIds;
  ListBuilder<String> get channelIds =>
      _$this._channelIds ??= ListBuilder<String>();
  set channelIds(ListBuilder<String>? channelIds) =>
      _$this._channelIds = channelIds;

  bool? _enrich;
  bool? get enrich => _$this._enrich;
  set enrich(bool? enrich) => _$this._enrich = enrich;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ExerciseRunCreateBuilder() {
    ExerciseRunCreate._defaults(this);
  }

  ExerciseRunCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _ruleIds = $v.ruleIds?.toBuilder();
      _tag = $v.tag;
      _from = $v.from;
      _to = $v.to;
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _speed = $v.speed;
      _channelIds = $v.channelIds?.toBuilder();
      _enrich = $v.enrich;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExerciseRunCreate other) {
    _$v = other as _$ExerciseRunCreate;
  }

  @override
  void update(void Function(ExerciseRunCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExerciseRunCreate build() => _build();

  _$ExerciseRunCreate _build() {
    _$ExerciseRunCreate _$result;
    try {
      _$result = _$v ??
          _$ExerciseRunCreate._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ExerciseRunCreate', 'name'),
            ruleIds: _ruleIds?.build(),
            tag: tag,
            from: from,
            to: to,
            fromSeq: fromSeq,
            toSeq: toSeq,
            speed: speed,
            channelIds: _channelIds?.build(),
            enrich: enrich,
            dryRun: dryRun,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ruleIds';
        _ruleIds?.build();

        _$failedField = 'channelIds';
        _channelIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ExerciseRunCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_timeline_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SituationTimelineEntryEntryTypeEnum
_$situationTimelineEntryEntryTypeEnum_member =
    const SituationTimelineEntryEntryTypeEnum._('member');
const SituationTimelineEntryEntryTypeEnum
_$situationTimelineEntryEntryTypeEnum_log =
    const SituationTimelineEntryEntryTypeEnum._('log');
const SituationTimelineEntryEntryTypeEnum
_$situationTimelineEntryEntryTypeEnum_unknownDefaultOpenApi =
    const SituationTimelineEntryEntryTypeEnum._('unknownDefaultOpenApi');

SituationTimelineEntryEntryTypeEnum
_$situationTimelineEntryEntryTypeEnumValueOf(String name) {
  switch (name) {
    case 'member':
      return _$situationTimelineEntryEntryTypeEnum_member;
    case 'log':
      return _$situationTimelineEntryEntryTypeEnum_log;
    case 'unknownDefaultOpenApi':
      return _$situationTimelineEntryEntryTypeEnum_unknownDefaultOpenApi;
    default:
      return _$situationTimelineEntryEntryTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SituationTimelineEntryEntryTypeEnum>
_$situationTimelineEntryEntryTypeEnumValues =
    BuiltSet<SituationTimelineEntryEntryTypeEnum>(
      const <SituationTimelineEntryEntryTypeEnum>[
        _$situationTimelineEntryEntryTypeEnum_member,
        _$situationTimelineEntryEntryTypeEnum_log,
        _$situationTimelineEntryEntryTypeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<SituationTimelineEntryEntryTypeEnum>
_$situationTimelineEntryEntryTypeEnumSerializer =
    _$SituationTimelineEntryEntryTypeEnumSerializer();

class _$SituationTimelineEntryEntryTypeEnumSerializer
    implements PrimitiveSerializer<SituationTimelineEntryEntryTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'member': 'member',
    'log': 'log',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'member': 'member',
    'log': 'log',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SituationTimelineEntryEntryTypeEnum,
  ];
  @override
  final String wireName = 'SituationTimelineEntryEntryTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    SituationTimelineEntryEntryTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SituationTimelineEntryEntryTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SituationTimelineEntryEntryTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SituationTimelineEntry extends SituationTimelineEntry {
  @override
  final DateTime at;
  @override
  final SituationTimelineEntryEntryTypeEnum entryType;
  @override
  final SituationMember? member;
  @override
  final String? action;
  @override
  final String? actor;
  @override
  final BuiltMap<String, JsonObject?>? before;
  @override
  final BuiltMap<String, JsonObject?>? after;

  factory _$SituationTimelineEntry([
    void Function(SituationTimelineEntryBuilder)? updates,
  ]) => (SituationTimelineEntryBuilder()..update(updates))._build();

  _$SituationTimelineEntry._({
    required this.at,
    required this.entryType,
    this.member,
    this.action,
    this.actor,
    this.before,
    this.after,
  }) : super._();
  @override
  SituationTimelineEntry rebuild(
    void Function(SituationTimelineEntryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SituationTimelineEntryBuilder toBuilder() =>
      SituationTimelineEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationTimelineEntry &&
        at == other.at &&
        entryType == other.entryType &&
        member == other.member &&
        action == other.action &&
        actor == other.actor &&
        before == other.before &&
        after == other.after;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, entryType.hashCode);
    _$hash = $jc(_$hash, member.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, actor.hashCode);
    _$hash = $jc(_$hash, before.hashCode);
    _$hash = $jc(_$hash, after.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationTimelineEntry')
          ..add('at', at)
          ..add('entryType', entryType)
          ..add('member', member)
          ..add('action', action)
          ..add('actor', actor)
          ..add('before', before)
          ..add('after', after))
        .toString();
  }
}

class SituationTimelineEntryBuilder
    implements Builder<SituationTimelineEntry, SituationTimelineEntryBuilder> {
  _$SituationTimelineEntry? _$v;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  SituationTimelineEntryEntryTypeEnum? _entryType;
  SituationTimelineEntryEntryTypeEnum? get entryType => _$this._entryType;
  set entryType(SituationTimelineEntryEntryTypeEnum? entryType) =>
      _$this._entryType = entryType;

  SituationMemberBuilder? _member;
  SituationMemberBuilder get member =>
      _$this._member ??= SituationMemberBuilder();
  set member(SituationMemberBuilder? member) => _$this._member = member;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  String? _actor;
  String? get actor => _$this._actor;
  set actor(String? actor) => _$this._actor = actor;

  MapBuilder<String, JsonObject?>? _before;
  MapBuilder<String, JsonObject?> get before =>
      _$this._before ??= MapBuilder<String, JsonObject?>();
  set before(MapBuilder<String, JsonObject?>? before) =>
      _$this._before = before;

  MapBuilder<String, JsonObject?>? _after;
  MapBuilder<String, JsonObject?> get after =>
      _$this._after ??= MapBuilder<String, JsonObject?>();
  set after(MapBuilder<String, JsonObject?>? after) => _$this._after = after;

  SituationTimelineEntryBuilder() {
    SituationTimelineEntry._defaults(this);
  }

  SituationTimelineEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _at = $v.at;
      _entryType = $v.entryType;
      _member = $v.member?.toBuilder();
      _action = $v.action;
      _actor = $v.actor;
      _before = $v.before?.toBuilder();
      _after = $v.after?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationTimelineEntry other) {
    _$v = other as _$SituationTimelineEntry;
  }

  @override
  void update(void Function(SituationTimelineEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationTimelineEntry build() => _build();

  _$SituationTimelineEntry _build() {
    _$SituationTimelineEntry _$result;
    try {
      _$result =
          _$v ??
          _$SituationTimelineEntry._(
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'SituationTimelineEntry',
              'at',
            ),
            entryType: BuiltValueNullFieldError.checkNotNull(
              entryType,
              r'SituationTimelineEntry',
              'entryType',
            ),
            member: _member?.build(),
            action: action,
            actor: actor,
            before: _before?.build(),
            after: _after?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'member';
        _member?.build();

        _$failedField = 'before';
        _before?.build();
        _$failedField = 'after';
        _after?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SituationTimelineEntry',
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

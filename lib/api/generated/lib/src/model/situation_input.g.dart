// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SituationInputStatusEnum _$situationInputStatusEnum_emerging =
    const SituationInputStatusEnum._('emerging');
const SituationInputStatusEnum _$situationInputStatusEnum_active =
    const SituationInputStatusEnum._('active');
const SituationInputStatusEnum
_$situationInputStatusEnum_unknownDefaultOpenApi =
    const SituationInputStatusEnum._('unknownDefaultOpenApi');

SituationInputStatusEnum _$situationInputStatusEnumValueOf(String name) {
  switch (name) {
    case 'emerging':
      return _$situationInputStatusEnum_emerging;
    case 'active':
      return _$situationInputStatusEnum_active;
    case 'unknownDefaultOpenApi':
      return _$situationInputStatusEnum_unknownDefaultOpenApi;
    default:
      return _$situationInputStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SituationInputStatusEnum> _$situationInputStatusEnumValues =
    BuiltSet<SituationInputStatusEnum>(const <SituationInputStatusEnum>[
      _$situationInputStatusEnum_emerging,
      _$situationInputStatusEnum_active,
      _$situationInputStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<SituationInputStatusEnum> _$situationInputStatusEnumSerializer =
    _$SituationInputStatusEnumSerializer();

class _$SituationInputStatusEnumSerializer
    implements PrimitiveSerializer<SituationInputStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'emerging': 'emerging',
    'active': 'active',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'emerging': 'emerging',
    'active': 'active',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SituationInputStatusEnum];
  @override
  final String wireName = 'SituationInputStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    SituationInputStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SituationInputStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SituationInputStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SituationInput extends SituationInput {
  @override
  final String title;
  @override
  final SituationTheme theme;
  @override
  final SituationInputStatusEnum? status;
  @override
  final Severity? severityOverride;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final BuiltList<String>? topicIds;
  @override
  final BuiltList<String>? entityIds;
  @override
  final BuiltList<String>? investigationIds;
  @override
  final BuiltList<SituationMemberInput>? members;

  factory _$SituationInput([void Function(SituationInputBuilder)? updates]) =>
      (SituationInputBuilder()..update(updates))._build();

  _$SituationInput._({
    required this.title,
    required this.theme,
    this.status,
    this.severityOverride,
    this.regionCodes,
    this.topicIds,
    this.entityIds,
    this.investigationIds,
    this.members,
  }) : super._();
  @override
  SituationInput rebuild(void Function(SituationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationInputBuilder toBuilder() => SituationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationInput &&
        title == other.title &&
        theme == other.theme &&
        status == other.status &&
        severityOverride == other.severityOverride &&
        regionCodes == other.regionCodes &&
        topicIds == other.topicIds &&
        entityIds == other.entityIds &&
        investigationIds == other.investigationIds &&
        members == other.members;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, severityOverride.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, topicIds.hashCode);
    _$hash = $jc(_$hash, entityIds.hashCode);
    _$hash = $jc(_$hash, investigationIds.hashCode);
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationInput')
          ..add('title', title)
          ..add('theme', theme)
          ..add('status', status)
          ..add('severityOverride', severityOverride)
          ..add('regionCodes', regionCodes)
          ..add('topicIds', topicIds)
          ..add('entityIds', entityIds)
          ..add('investigationIds', investigationIds)
          ..add('members', members))
        .toString();
  }
}

class SituationInputBuilder
    implements Builder<SituationInput, SituationInputBuilder> {
  _$SituationInput? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  SituationTheme? _theme;
  SituationTheme? get theme => _$this._theme;
  set theme(SituationTheme? theme) => _$this._theme = theme;

  SituationInputStatusEnum? _status;
  SituationInputStatusEnum? get status => _$this._status;
  set status(SituationInputStatusEnum? status) => _$this._status = status;

  Severity? _severityOverride;
  Severity? get severityOverride => _$this._severityOverride;
  set severityOverride(Severity? severityOverride) =>
      _$this._severityOverride = severityOverride;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  ListBuilder<String>? _topicIds;
  ListBuilder<String> get topicIds =>
      _$this._topicIds ??= ListBuilder<String>();
  set topicIds(ListBuilder<String>? topicIds) => _$this._topicIds = topicIds;

  ListBuilder<String>? _entityIds;
  ListBuilder<String> get entityIds =>
      _$this._entityIds ??= ListBuilder<String>();
  set entityIds(ListBuilder<String>? entityIds) =>
      _$this._entityIds = entityIds;

  ListBuilder<String>? _investigationIds;
  ListBuilder<String> get investigationIds =>
      _$this._investigationIds ??= ListBuilder<String>();
  set investigationIds(ListBuilder<String>? investigationIds) =>
      _$this._investigationIds = investigationIds;

  ListBuilder<SituationMemberInput>? _members;
  ListBuilder<SituationMemberInput> get members =>
      _$this._members ??= ListBuilder<SituationMemberInput>();
  set members(ListBuilder<SituationMemberInput>? members) =>
      _$this._members = members;

  SituationInputBuilder() {
    SituationInput._defaults(this);
  }

  SituationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _theme = $v.theme;
      _status = $v.status;
      _severityOverride = $v.severityOverride;
      _regionCodes = $v.regionCodes?.toBuilder();
      _topicIds = $v.topicIds?.toBuilder();
      _entityIds = $v.entityIds?.toBuilder();
      _investigationIds = $v.investigationIds?.toBuilder();
      _members = $v.members?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationInput other) {
    _$v = other as _$SituationInput;
  }

  @override
  void update(void Function(SituationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationInput build() => _build();

  _$SituationInput _build() {
    _$SituationInput _$result;
    try {
      _$result =
          _$v ??
          _$SituationInput._(
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'SituationInput',
              'title',
            ),
            theme: BuiltValueNullFieldError.checkNotNull(
              theme,
              r'SituationInput',
              'theme',
            ),
            status: status,
            severityOverride: severityOverride,
            regionCodes: _regionCodes?.build(),
            topicIds: _topicIds?.build(),
            entityIds: _entityIds?.build(),
            investigationIds: _investigationIds?.build(),
            members: _members?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regionCodes';
        _regionCodes?.build();
        _$failedField = 'topicIds';
        _topicIds?.build();
        _$failedField = 'entityIds';
        _entityIds?.build();
        _$failedField = 'investigationIds';
        _investigationIds?.build();
        _$failedField = 'members';
        _members?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SituationInput',
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

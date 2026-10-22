// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SituationPatchStatusEnum _$situationPatchStatusEnum_active =
    const SituationPatchStatusEnum._('active');
const SituationPatchStatusEnum _$situationPatchStatusEnum_closed =
    const SituationPatchStatusEnum._('closed');

SituationPatchStatusEnum _$situationPatchStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$situationPatchStatusEnum_active;
    case 'closed':
      return _$situationPatchStatusEnum_closed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SituationPatchStatusEnum> _$situationPatchStatusEnumValues =
    BuiltSet<SituationPatchStatusEnum>(const <SituationPatchStatusEnum>[
  _$situationPatchStatusEnum_active,
  _$situationPatchStatusEnum_closed,
]);

Serializer<SituationPatchStatusEnum> _$situationPatchStatusEnumSerializer =
    _$SituationPatchStatusEnumSerializer();

class _$SituationPatchStatusEnumSerializer
    implements PrimitiveSerializer<SituationPatchStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'closed': 'closed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'closed': 'closed',
  };

  @override
  final Iterable<Type> types = const <Type>[SituationPatchStatusEnum];
  @override
  final String wireName = 'SituationPatchStatusEnum';

  @override
  Object serialize(Serializers serializers, SituationPatchStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SituationPatchStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SituationPatchStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SituationPatch extends SituationPatch {
  @override
  final String? title;
  @override
  final SituationTheme? theme;
  @override
  final Severity? severityOverride;
  @override
  final SituationPatchStatusEnum? status;
  @override
  final BuiltList<String>? topicIds;
  @override
  final BuiltList<String>? entityIds;
  @override
  final BuiltList<String>? investigationIds;
  @override
  final String? reason;
  @override
  final int? version;

  factory _$SituationPatch([void Function(SituationPatchBuilder)? updates]) =>
      (SituationPatchBuilder()..update(updates))._build();

  _$SituationPatch._(
      {this.title,
      this.theme,
      this.severityOverride,
      this.status,
      this.topicIds,
      this.entityIds,
      this.investigationIds,
      this.reason,
      this.version})
      : super._();
  @override
  SituationPatch rebuild(void Function(SituationPatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationPatchBuilder toBuilder() => SituationPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationPatch &&
        title == other.title &&
        theme == other.theme &&
        severityOverride == other.severityOverride &&
        status == other.status &&
        topicIds == other.topicIds &&
        entityIds == other.entityIds &&
        investigationIds == other.investigationIds &&
        reason == other.reason &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jc(_$hash, severityOverride.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, topicIds.hashCode);
    _$hash = $jc(_$hash, entityIds.hashCode);
    _$hash = $jc(_$hash, investigationIds.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationPatch')
          ..add('title', title)
          ..add('theme', theme)
          ..add('severityOverride', severityOverride)
          ..add('status', status)
          ..add('topicIds', topicIds)
          ..add('entityIds', entityIds)
          ..add('investigationIds', investigationIds)
          ..add('reason', reason)
          ..add('version', version))
        .toString();
  }
}

class SituationPatchBuilder
    implements Builder<SituationPatch, SituationPatchBuilder> {
  _$SituationPatch? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  SituationTheme? _theme;
  SituationTheme? get theme => _$this._theme;
  set theme(SituationTheme? theme) => _$this._theme = theme;

  Severity? _severityOverride;
  Severity? get severityOverride => _$this._severityOverride;
  set severityOverride(Severity? severityOverride) =>
      _$this._severityOverride = severityOverride;

  SituationPatchStatusEnum? _status;
  SituationPatchStatusEnum? get status => _$this._status;
  set status(SituationPatchStatusEnum? status) => _$this._status = status;

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

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  SituationPatchBuilder() {
    SituationPatch._defaults(this);
  }

  SituationPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _theme = $v.theme;
      _severityOverride = $v.severityOverride;
      _status = $v.status;
      _topicIds = $v.topicIds?.toBuilder();
      _entityIds = $v.entityIds?.toBuilder();
      _investigationIds = $v.investigationIds?.toBuilder();
      _reason = $v.reason;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationPatch other) {
    _$v = other as _$SituationPatch;
  }

  @override
  void update(void Function(SituationPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationPatch build() => _build();

  _$SituationPatch _build() {
    _$SituationPatch _$result;
    try {
      _$result = _$v ??
          _$SituationPatch._(
            title: title,
            theme: theme,
            severityOverride: severityOverride,
            status: status,
            topicIds: _topicIds?.build(),
            entityIds: _entityIds?.build(),
            investigationIds: _investigationIds?.build(),
            reason: reason,
            version: version,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'topicIds';
        _topicIds?.build();
        _$failedField = 'entityIds';
        _entityIds?.build();
        _$failedField = 'investigationIds';
        _investigationIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SituationPatch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

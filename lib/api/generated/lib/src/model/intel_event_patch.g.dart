// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_event_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IntelEventPatchStatusEnum _$intelEventPatchStatusEnum_emerging =
    const IntelEventPatchStatusEnum._('emerging');
const IntelEventPatchStatusEnum _$intelEventPatchStatusEnum_active =
    const IntelEventPatchStatusEnum._('active');
const IntelEventPatchStatusEnum _$intelEventPatchStatusEnum_resolved =
    const IntelEventPatchStatusEnum._('resolved');
const IntelEventPatchStatusEnum _$intelEventPatchStatusEnum_dismissed =
    const IntelEventPatchStatusEnum._('dismissed');

IntelEventPatchStatusEnum _$intelEventPatchStatusEnumValueOf(String name) {
  switch (name) {
    case 'emerging':
      return _$intelEventPatchStatusEnum_emerging;
    case 'active':
      return _$intelEventPatchStatusEnum_active;
    case 'resolved':
      return _$intelEventPatchStatusEnum_resolved;
    case 'dismissed':
      return _$intelEventPatchStatusEnum_dismissed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntelEventPatchStatusEnum> _$intelEventPatchStatusEnumValues =
    BuiltSet<IntelEventPatchStatusEnum>(const <IntelEventPatchStatusEnum>[
      _$intelEventPatchStatusEnum_emerging,
      _$intelEventPatchStatusEnum_active,
      _$intelEventPatchStatusEnum_resolved,
      _$intelEventPatchStatusEnum_dismissed,
    ]);

Serializer<IntelEventPatchStatusEnum> _$intelEventPatchStatusEnumSerializer =
    _$IntelEventPatchStatusEnumSerializer();

class _$IntelEventPatchStatusEnumSerializer
    implements PrimitiveSerializer<IntelEventPatchStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'emerging': 'emerging',
    'active': 'active',
    'resolved': 'resolved',
    'dismissed': 'dismissed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'emerging': 'emerging',
    'active': 'active',
    'resolved': 'resolved',
    'dismissed': 'dismissed',
  };

  @override
  final Iterable<Type> types = const <Type>[IntelEventPatchStatusEnum];
  @override
  final String wireName = 'IntelEventPatchStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    IntelEventPatchStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IntelEventPatchStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IntelEventPatchStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IntelEventPatch extends IntelEventPatch {
  @override
  final String? title;
  @override
  final IntelEventPatchStatusEnum? status;
  @override
  final Severity? severity;
  @override
  final String? notes;

  factory _$IntelEventPatch([void Function(IntelEventPatchBuilder)? updates]) =>
      (IntelEventPatchBuilder()..update(updates))._build();

  _$IntelEventPatch._({this.title, this.status, this.severity, this.notes})
    : super._();
  @override
  IntelEventPatch rebuild(void Function(IntelEventPatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntelEventPatchBuilder toBuilder() => IntelEventPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelEventPatch &&
        title == other.title &&
        status == other.status &&
        severity == other.severity &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelEventPatch')
          ..add('title', title)
          ..add('status', status)
          ..add('severity', severity)
          ..add('notes', notes))
        .toString();
  }
}

class IntelEventPatchBuilder
    implements Builder<IntelEventPatch, IntelEventPatchBuilder> {
  _$IntelEventPatch? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  IntelEventPatchStatusEnum? _status;
  IntelEventPatchStatusEnum? get status => _$this._status;
  set status(IntelEventPatchStatusEnum? status) => _$this._status = status;

  Severity? _severity;
  Severity? get severity => _$this._severity;
  set severity(Severity? severity) => _$this._severity = severity;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  IntelEventPatchBuilder() {
    IntelEventPatch._defaults(this);
  }

  IntelEventPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _status = $v.status;
      _severity = $v.severity;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelEventPatch other) {
    _$v = other as _$IntelEventPatch;
  }

  @override
  void update(void Function(IntelEventPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelEventPatch build() => _build();

  _$IntelEventPatch _build() {
    final _$result =
        _$v ??
        _$IntelEventPatch._(
          title: title,
          status: status,
          severity: severity,
          notes: notes,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

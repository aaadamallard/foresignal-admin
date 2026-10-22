// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infra_build.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InfraBuildStatusEnum _$infraBuildStatusEnum_running =
    const InfraBuildStatusEnum._('running');
const InfraBuildStatusEnum _$infraBuildStatusEnum_done =
    const InfraBuildStatusEnum._('done');
const InfraBuildStatusEnum _$infraBuildStatusEnum_failed =
    const InfraBuildStatusEnum._('failed');

InfraBuildStatusEnum _$infraBuildStatusEnumValueOf(String name) {
  switch (name) {
    case 'running':
      return _$infraBuildStatusEnum_running;
    case 'done':
      return _$infraBuildStatusEnum_done;
    case 'failed':
      return _$infraBuildStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InfraBuildStatusEnum> _$infraBuildStatusEnumValues =
    BuiltSet<InfraBuildStatusEnum>(const <InfraBuildStatusEnum>[
  _$infraBuildStatusEnum_running,
  _$infraBuildStatusEnum_done,
  _$infraBuildStatusEnum_failed,
]);

Serializer<InfraBuildStatusEnum> _$infraBuildStatusEnumSerializer =
    _$InfraBuildStatusEnumSerializer();

class _$InfraBuildStatusEnumSerializer
    implements PrimitiveSerializer<InfraBuildStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'running': 'running',
    'done': 'done',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'running': 'running',
    'done': 'done',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[InfraBuildStatusEnum];
  @override
  final String wireName = 'InfraBuildStatusEnum';

  @override
  Object serialize(Serializers serializers, InfraBuildStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InfraBuildStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InfraBuildStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InfraBuild extends InfraBuild {
  @override
  final String id;
  @override
  final InfraBuildStatusEnum status;
  @override
  final DateTime startedAt;
  @override
  final DateTime? finishedAt;
  @override
  final String rulesVersion;
  @override
  final BuiltMap<String, int>? inputs;
  @override
  final int? nodes;
  @override
  final BuiltMap<String, int>? edgesByMethod;
  @override
  final BuiltMap<String, int>? edgesByLabel;
  @override
  final BuiltList<String>? warnings;

  factory _$InfraBuild([void Function(InfraBuildBuilder)? updates]) =>
      (InfraBuildBuilder()..update(updates))._build();

  _$InfraBuild._(
      {required this.id,
      required this.status,
      required this.startedAt,
      this.finishedAt,
      required this.rulesVersion,
      this.inputs,
      this.nodes,
      this.edgesByMethod,
      this.edgesByLabel,
      this.warnings})
      : super._();
  @override
  InfraBuild rebuild(void Function(InfraBuildBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfraBuildBuilder toBuilder() => InfraBuildBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfraBuild &&
        id == other.id &&
        status == other.status &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        rulesVersion == other.rulesVersion &&
        inputs == other.inputs &&
        nodes == other.nodes &&
        edgesByMethod == other.edgesByMethod &&
        edgesByLabel == other.edgesByLabel &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jc(_$hash, rulesVersion.hashCode);
    _$hash = $jc(_$hash, inputs.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jc(_$hash, edgesByMethod.hashCode);
    _$hash = $jc(_$hash, edgesByLabel.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InfraBuild')
          ..add('id', id)
          ..add('status', status)
          ..add('startedAt', startedAt)
          ..add('finishedAt', finishedAt)
          ..add('rulesVersion', rulesVersion)
          ..add('inputs', inputs)
          ..add('nodes', nodes)
          ..add('edgesByMethod', edgesByMethod)
          ..add('edgesByLabel', edgesByLabel)
          ..add('warnings', warnings))
        .toString();
  }
}

class InfraBuildBuilder implements Builder<InfraBuild, InfraBuildBuilder> {
  _$InfraBuild? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  InfraBuildStatusEnum? _status;
  InfraBuildStatusEnum? get status => _$this._status;
  set status(InfraBuildStatusEnum? status) => _$this._status = status;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  String? _rulesVersion;
  String? get rulesVersion => _$this._rulesVersion;
  set rulesVersion(String? rulesVersion) => _$this._rulesVersion = rulesVersion;

  MapBuilder<String, int>? _inputs;
  MapBuilder<String, int> get inputs =>
      _$this._inputs ??= MapBuilder<String, int>();
  set inputs(MapBuilder<String, int>? inputs) => _$this._inputs = inputs;

  int? _nodes;
  int? get nodes => _$this._nodes;
  set nodes(int? nodes) => _$this._nodes = nodes;

  MapBuilder<String, int>? _edgesByMethod;
  MapBuilder<String, int> get edgesByMethod =>
      _$this._edgesByMethod ??= MapBuilder<String, int>();
  set edgesByMethod(MapBuilder<String, int>? edgesByMethod) =>
      _$this._edgesByMethod = edgesByMethod;

  MapBuilder<String, int>? _edgesByLabel;
  MapBuilder<String, int> get edgesByLabel =>
      _$this._edgesByLabel ??= MapBuilder<String, int>();
  set edgesByLabel(MapBuilder<String, int>? edgesByLabel) =>
      _$this._edgesByLabel = edgesByLabel;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  InfraBuildBuilder() {
    InfraBuild._defaults(this);
  }

  InfraBuildBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _startedAt = $v.startedAt;
      _finishedAt = $v.finishedAt;
      _rulesVersion = $v.rulesVersion;
      _inputs = $v.inputs?.toBuilder();
      _nodes = $v.nodes;
      _edgesByMethod = $v.edgesByMethod?.toBuilder();
      _edgesByLabel = $v.edgesByLabel?.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfraBuild other) {
    _$v = other as _$InfraBuild;
  }

  @override
  void update(void Function(InfraBuildBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfraBuild build() => _build();

  _$InfraBuild _build() {
    _$InfraBuild _$result;
    try {
      _$result = _$v ??
          _$InfraBuild._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'InfraBuild', 'id'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'InfraBuild', 'status'),
            startedAt: BuiltValueNullFieldError.checkNotNull(
                startedAt, r'InfraBuild', 'startedAt'),
            finishedAt: finishedAt,
            rulesVersion: BuiltValueNullFieldError.checkNotNull(
                rulesVersion, r'InfraBuild', 'rulesVersion'),
            inputs: _inputs?.build(),
            nodes: nodes,
            edgesByMethod: _edgesByMethod?.build(),
            edgesByLabel: _edgesByLabel?.build(),
            warnings: _warnings?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inputs';
        _inputs?.build();

        _$failedField = 'edgesByMethod';
        _edgesByMethod?.build();
        _$failedField = 'edgesByLabel';
        _edgesByLabel?.build();
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InfraBuild', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infra_edge.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InfraEdgeRelationEnum _$infraEdgeRelationEnum_suppliesPower =
    const InfraEdgeRelationEnum._('suppliesPower');
const InfraEdgeRelationEnum _$infraEdgeRelationEnum_transmitsPower =
    const InfraEdgeRelationEnum._('transmitsPower');
const InfraEdgeRelationEnum _$infraEdgeRelationEnum_landsAt =
    const InfraEdgeRelationEnum._('landsAt');
const InfraEdgeRelationEnum _$infraEdgeRelationEnum_interconnects =
    const InfraEdgeRelationEnum._('interconnects');
const InfraEdgeRelationEnum _$infraEdgeRelationEnum_hosts =
    const InfraEdgeRelationEnum._('hosts');
const InfraEdgeRelationEnum _$infraEdgeRelationEnum_serves =
    const InfraEdgeRelationEnum._('serves');
const InfraEdgeRelationEnum _$infraEdgeRelationEnum_unknownDefaultOpenApi =
    const InfraEdgeRelationEnum._('unknownDefaultOpenApi');

InfraEdgeRelationEnum _$infraEdgeRelationEnumValueOf(String name) {
  switch (name) {
    case 'suppliesPower':
      return _$infraEdgeRelationEnum_suppliesPower;
    case 'transmitsPower':
      return _$infraEdgeRelationEnum_transmitsPower;
    case 'landsAt':
      return _$infraEdgeRelationEnum_landsAt;
    case 'interconnects':
      return _$infraEdgeRelationEnum_interconnects;
    case 'hosts':
      return _$infraEdgeRelationEnum_hosts;
    case 'serves':
      return _$infraEdgeRelationEnum_serves;
    case 'unknownDefaultOpenApi':
      return _$infraEdgeRelationEnum_unknownDefaultOpenApi;
    default:
      return _$infraEdgeRelationEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<InfraEdgeRelationEnum> _$infraEdgeRelationEnumValues =
    BuiltSet<InfraEdgeRelationEnum>(const <InfraEdgeRelationEnum>[
      _$infraEdgeRelationEnum_suppliesPower,
      _$infraEdgeRelationEnum_transmitsPower,
      _$infraEdgeRelationEnum_landsAt,
      _$infraEdgeRelationEnum_interconnects,
      _$infraEdgeRelationEnum_hosts,
      _$infraEdgeRelationEnum_serves,
      _$infraEdgeRelationEnum_unknownDefaultOpenApi,
    ]);

const InfraEdgeMethodEnum _$infraEdgeMethodEnum_declared =
    const InfraEdgeMethodEnum._('declared');
const InfraEdgeMethodEnum _$infraEdgeMethodEnum_topological =
    const InfraEdgeMethodEnum._('topological');
const InfraEdgeMethodEnum _$infraEdgeMethodEnum_proximity =
    const InfraEdgeMethodEnum._('proximity');
const InfraEdgeMethodEnum _$infraEdgeMethodEnum_inferred =
    const InfraEdgeMethodEnum._('inferred');
const InfraEdgeMethodEnum _$infraEdgeMethodEnum_unknownDefaultOpenApi =
    const InfraEdgeMethodEnum._('unknownDefaultOpenApi');

InfraEdgeMethodEnum _$infraEdgeMethodEnumValueOf(String name) {
  switch (name) {
    case 'declared':
      return _$infraEdgeMethodEnum_declared;
    case 'topological':
      return _$infraEdgeMethodEnum_topological;
    case 'proximity':
      return _$infraEdgeMethodEnum_proximity;
    case 'inferred':
      return _$infraEdgeMethodEnum_inferred;
    case 'unknownDefaultOpenApi':
      return _$infraEdgeMethodEnum_unknownDefaultOpenApi;
    default:
      return _$infraEdgeMethodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<InfraEdgeMethodEnum> _$infraEdgeMethodEnumValues =
    BuiltSet<InfraEdgeMethodEnum>(const <InfraEdgeMethodEnum>[
      _$infraEdgeMethodEnum_declared,
      _$infraEdgeMethodEnum_topological,
      _$infraEdgeMethodEnum_proximity,
      _$infraEdgeMethodEnum_inferred,
      _$infraEdgeMethodEnum_unknownDefaultOpenApi,
    ]);

const InfraEdgeLabelEnum _$infraEdgeLabelEnum_confirmed =
    const InfraEdgeLabelEnum._('confirmed');
const InfraEdgeLabelEnum _$infraEdgeLabelEnum_likely =
    const InfraEdgeLabelEnum._('likely');
const InfraEdgeLabelEnum _$infraEdgeLabelEnum_possible =
    const InfraEdgeLabelEnum._('possible');
const InfraEdgeLabelEnum _$infraEdgeLabelEnum_speculative =
    const InfraEdgeLabelEnum._('speculative');
const InfraEdgeLabelEnum _$infraEdgeLabelEnum_unknownDefaultOpenApi =
    const InfraEdgeLabelEnum._('unknownDefaultOpenApi');

InfraEdgeLabelEnum _$infraEdgeLabelEnumValueOf(String name) {
  switch (name) {
    case 'confirmed':
      return _$infraEdgeLabelEnum_confirmed;
    case 'likely':
      return _$infraEdgeLabelEnum_likely;
    case 'possible':
      return _$infraEdgeLabelEnum_possible;
    case 'speculative':
      return _$infraEdgeLabelEnum_speculative;
    case 'unknownDefaultOpenApi':
      return _$infraEdgeLabelEnum_unknownDefaultOpenApi;
    default:
      return _$infraEdgeLabelEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<InfraEdgeLabelEnum> _$infraEdgeLabelEnumValues =
    BuiltSet<InfraEdgeLabelEnum>(const <InfraEdgeLabelEnum>[
      _$infraEdgeLabelEnum_confirmed,
      _$infraEdgeLabelEnum_likely,
      _$infraEdgeLabelEnum_possible,
      _$infraEdgeLabelEnum_speculative,
      _$infraEdgeLabelEnum_unknownDefaultOpenApi,
    ]);

Serializer<InfraEdgeRelationEnum> _$infraEdgeRelationEnumSerializer =
    _$InfraEdgeRelationEnumSerializer();
Serializer<InfraEdgeMethodEnum> _$infraEdgeMethodEnumSerializer =
    _$InfraEdgeMethodEnumSerializer();
Serializer<InfraEdgeLabelEnum> _$infraEdgeLabelEnumSerializer =
    _$InfraEdgeLabelEnumSerializer();

class _$InfraEdgeRelationEnumSerializer
    implements PrimitiveSerializer<InfraEdgeRelationEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'suppliesPower': 'supplies_power',
    'transmitsPower': 'transmits_power',
    'landsAt': 'lands_at',
    'interconnects': 'interconnects',
    'hosts': 'hosts',
    'serves': 'serves',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'supplies_power': 'suppliesPower',
    'transmits_power': 'transmitsPower',
    'lands_at': 'landsAt',
    'interconnects': 'interconnects',
    'hosts': 'hosts',
    'serves': 'serves',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[InfraEdgeRelationEnum];
  @override
  final String wireName = 'InfraEdgeRelationEnum';

  @override
  Object serialize(
    Serializers serializers,
    InfraEdgeRelationEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  InfraEdgeRelationEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => InfraEdgeRelationEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$InfraEdgeMethodEnumSerializer
    implements PrimitiveSerializer<InfraEdgeMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'declared': 'declared',
    'topological': 'topological',
    'proximity': 'proximity',
    'inferred': 'inferred',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'declared': 'declared',
    'topological': 'topological',
    'proximity': 'proximity',
    'inferred': 'inferred',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[InfraEdgeMethodEnum];
  @override
  final String wireName = 'InfraEdgeMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    InfraEdgeMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  InfraEdgeMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => InfraEdgeMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$InfraEdgeLabelEnumSerializer
    implements PrimitiveSerializer<InfraEdgeLabelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'confirmed': 'confirmed',
    'likely': 'likely',
    'possible': 'possible',
    'speculative': 'speculative',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'confirmed': 'confirmed',
    'likely': 'likely',
    'possible': 'possible',
    'speculative': 'speculative',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[InfraEdgeLabelEnum];
  @override
  final String wireName = 'InfraEdgeLabelEnum';

  @override
  Object serialize(
    Serializers serializers,
    InfraEdgeLabelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  InfraEdgeLabelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => InfraEdgeLabelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$InfraEdge extends InfraEdge {
  @override
  final int id;
  @override
  final int fromNode;
  @override
  final int toNode;
  @override
  final InfraEdgeRelationEnum relation;
  @override
  final InfraEdgeMethodEnum method;
  @override
  final InfraEdgeLabelEnum label;
  @override
  final num score;
  @override
  final String ruleId;
  @override
  final String ruleVersion;
  @override
  final BuiltMap<String, JsonObject?>? params;
  @override
  final InfraEdgeEvidence? evidence;
  @override
  final String licence;
  @override
  final DateTime? builtAt;

  factory _$InfraEdge([void Function(InfraEdgeBuilder)? updates]) =>
      (InfraEdgeBuilder()..update(updates))._build();

  _$InfraEdge._({
    required this.id,
    required this.fromNode,
    required this.toNode,
    required this.relation,
    required this.method,
    required this.label,
    required this.score,
    required this.ruleId,
    required this.ruleVersion,
    this.params,
    this.evidence,
    required this.licence,
    this.builtAt,
  }) : super._();
  @override
  InfraEdge rebuild(void Function(InfraEdgeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfraEdgeBuilder toBuilder() => InfraEdgeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfraEdge &&
        id == other.id &&
        fromNode == other.fromNode &&
        toNode == other.toNode &&
        relation == other.relation &&
        method == other.method &&
        label == other.label &&
        score == other.score &&
        ruleId == other.ruleId &&
        ruleVersion == other.ruleVersion &&
        params == other.params &&
        evidence == other.evidence &&
        licence == other.licence &&
        builtAt == other.builtAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, fromNode.hashCode);
    _$hash = $jc(_$hash, toNode.hashCode);
    _$hash = $jc(_$hash, relation.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, ruleVersion.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, evidence.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, builtAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InfraEdge')
          ..add('id', id)
          ..add('fromNode', fromNode)
          ..add('toNode', toNode)
          ..add('relation', relation)
          ..add('method', method)
          ..add('label', label)
          ..add('score', score)
          ..add('ruleId', ruleId)
          ..add('ruleVersion', ruleVersion)
          ..add('params', params)
          ..add('evidence', evidence)
          ..add('licence', licence)
          ..add('builtAt', builtAt))
        .toString();
  }
}

class InfraEdgeBuilder implements Builder<InfraEdge, InfraEdgeBuilder> {
  _$InfraEdge? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _fromNode;
  int? get fromNode => _$this._fromNode;
  set fromNode(int? fromNode) => _$this._fromNode = fromNode;

  int? _toNode;
  int? get toNode => _$this._toNode;
  set toNode(int? toNode) => _$this._toNode = toNode;

  InfraEdgeRelationEnum? _relation;
  InfraEdgeRelationEnum? get relation => _$this._relation;
  set relation(InfraEdgeRelationEnum? relation) => _$this._relation = relation;

  InfraEdgeMethodEnum? _method;
  InfraEdgeMethodEnum? get method => _$this._method;
  set method(InfraEdgeMethodEnum? method) => _$this._method = method;

  InfraEdgeLabelEnum? _label;
  InfraEdgeLabelEnum? get label => _$this._label;
  set label(InfraEdgeLabelEnum? label) => _$this._label = label;

  num? _score;
  num? get score => _$this._score;
  set score(num? score) => _$this._score = score;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  String? _ruleVersion;
  String? get ruleVersion => _$this._ruleVersion;
  set ruleVersion(String? ruleVersion) => _$this._ruleVersion = ruleVersion;

  MapBuilder<String, JsonObject?>? _params;
  MapBuilder<String, JsonObject?> get params =>
      _$this._params ??= MapBuilder<String, JsonObject?>();
  set params(MapBuilder<String, JsonObject?>? params) =>
      _$this._params = params;

  InfraEdgeEvidenceBuilder? _evidence;
  InfraEdgeEvidenceBuilder get evidence =>
      _$this._evidence ??= InfraEdgeEvidenceBuilder();
  set evidence(InfraEdgeEvidenceBuilder? evidence) =>
      _$this._evidence = evidence;

  String? _licence;
  String? get licence => _$this._licence;
  set licence(String? licence) => _$this._licence = licence;

  DateTime? _builtAt;
  DateTime? get builtAt => _$this._builtAt;
  set builtAt(DateTime? builtAt) => _$this._builtAt = builtAt;

  InfraEdgeBuilder() {
    InfraEdge._defaults(this);
  }

  InfraEdgeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fromNode = $v.fromNode;
      _toNode = $v.toNode;
      _relation = $v.relation;
      _method = $v.method;
      _label = $v.label;
      _score = $v.score;
      _ruleId = $v.ruleId;
      _ruleVersion = $v.ruleVersion;
      _params = $v.params?.toBuilder();
      _evidence = $v.evidence?.toBuilder();
      _licence = $v.licence;
      _builtAt = $v.builtAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfraEdge other) {
    _$v = other as _$InfraEdge;
  }

  @override
  void update(void Function(InfraEdgeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfraEdge build() => _build();

  _$InfraEdge _build() {
    _$InfraEdge _$result;
    try {
      _$result =
          _$v ??
          _$InfraEdge._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'InfraEdge', 'id'),
            fromNode: BuiltValueNullFieldError.checkNotNull(
              fromNode,
              r'InfraEdge',
              'fromNode',
            ),
            toNode: BuiltValueNullFieldError.checkNotNull(
              toNode,
              r'InfraEdge',
              'toNode',
            ),
            relation: BuiltValueNullFieldError.checkNotNull(
              relation,
              r'InfraEdge',
              'relation',
            ),
            method: BuiltValueNullFieldError.checkNotNull(
              method,
              r'InfraEdge',
              'method',
            ),
            label: BuiltValueNullFieldError.checkNotNull(
              label,
              r'InfraEdge',
              'label',
            ),
            score: BuiltValueNullFieldError.checkNotNull(
              score,
              r'InfraEdge',
              'score',
            ),
            ruleId: BuiltValueNullFieldError.checkNotNull(
              ruleId,
              r'InfraEdge',
              'ruleId',
            ),
            ruleVersion: BuiltValueNullFieldError.checkNotNull(
              ruleVersion,
              r'InfraEdge',
              'ruleVersion',
            ),
            params: _params?.build(),
            evidence: _evidence?.build(),
            licence: BuiltValueNullFieldError.checkNotNull(
              licence,
              r'InfraEdge',
              'licence',
            ),
            builtAt: builtAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        _params?.build();
        _$failedField = 'evidence';
        _evidence?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'InfraEdge',
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

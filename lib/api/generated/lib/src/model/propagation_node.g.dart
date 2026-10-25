// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'propagation_node.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PropagationNodeTypeEnum _$propagationNodeTypeEnum_post =
    const PropagationNodeTypeEnum._('post');
const PropagationNodeTypeEnum _$propagationNodeTypeEnum_evidenceGroup =
    const PropagationNodeTypeEnum._('evidenceGroup');
const PropagationNodeTypeEnum _$propagationNodeTypeEnum_newsArticle =
    const PropagationNodeTypeEnum._('newsArticle');
const PropagationNodeTypeEnum _$propagationNodeTypeEnum_officialRecord =
    const PropagationNodeTypeEnum._('officialRecord');
const PropagationNodeTypeEnum _$propagationNodeTypeEnum_unknownDefaultOpenApi =
    const PropagationNodeTypeEnum._('unknownDefaultOpenApi');

PropagationNodeTypeEnum _$propagationNodeTypeEnumValueOf(String name) {
  switch (name) {
    case 'post':
      return _$propagationNodeTypeEnum_post;
    case 'evidenceGroup':
      return _$propagationNodeTypeEnum_evidenceGroup;
    case 'newsArticle':
      return _$propagationNodeTypeEnum_newsArticle;
    case 'officialRecord':
      return _$propagationNodeTypeEnum_officialRecord;
    case 'unknownDefaultOpenApi':
      return _$propagationNodeTypeEnum_unknownDefaultOpenApi;
    default:
      return _$propagationNodeTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PropagationNodeTypeEnum> _$propagationNodeTypeEnumValues =
    BuiltSet<PropagationNodeTypeEnum>(const <PropagationNodeTypeEnum>[
      _$propagationNodeTypeEnum_post,
      _$propagationNodeTypeEnum_evidenceGroup,
      _$propagationNodeTypeEnum_newsArticle,
      _$propagationNodeTypeEnum_officialRecord,
      _$propagationNodeTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<PropagationNodeTypeEnum> _$propagationNodeTypeEnumSerializer =
    _$PropagationNodeTypeEnumSerializer();

class _$PropagationNodeTypeEnumSerializer
    implements PrimitiveSerializer<PropagationNodeTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'post': 'post',
    'evidenceGroup': 'evidence-group',
    'newsArticle': 'news-article',
    'officialRecord': 'official-record',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'post': 'post',
    'evidence-group': 'evidenceGroup',
    'news-article': 'newsArticle',
    'official-record': 'officialRecord',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PropagationNodeTypeEnum];
  @override
  final String wireName = 'PropagationNodeTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    PropagationNodeTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PropagationNodeTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PropagationNodeTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PropagationNode extends PropagationNode {
  @override
  final String id;
  @override
  final PropagationNodeTypeEnum type;
  @override
  final String? ref;
  @override
  final String? platform;
  @override
  final DateTime observedAt;
  @override
  final String? evidenceGroupId;
  @override
  final int? memberCount;
  @override
  final String? label;

  factory _$PropagationNode([void Function(PropagationNodeBuilder)? updates]) =>
      (PropagationNodeBuilder()..update(updates))._build();

  _$PropagationNode._({
    required this.id,
    required this.type,
    this.ref,
    this.platform,
    required this.observedAt,
    this.evidenceGroupId,
    this.memberCount,
    this.label,
  }) : super._();
  @override
  PropagationNode rebuild(void Function(PropagationNodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PropagationNodeBuilder toBuilder() => PropagationNodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PropagationNode &&
        id == other.id &&
        type == other.type &&
        ref == other.ref &&
        platform == other.platform &&
        observedAt == other.observedAt &&
        evidenceGroupId == other.evidenceGroupId &&
        memberCount == other.memberCount &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, evidenceGroupId.hashCode);
    _$hash = $jc(_$hash, memberCount.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PropagationNode')
          ..add('id', id)
          ..add('type', type)
          ..add('ref', ref)
          ..add('platform', platform)
          ..add('observedAt', observedAt)
          ..add('evidenceGroupId', evidenceGroupId)
          ..add('memberCount', memberCount)
          ..add('label', label))
        .toString();
  }
}

class PropagationNodeBuilder
    implements Builder<PropagationNode, PropagationNodeBuilder> {
  _$PropagationNode? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  PropagationNodeTypeEnum? _type;
  PropagationNodeTypeEnum? get type => _$this._type;
  set type(PropagationNodeTypeEnum? type) => _$this._type = type;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _platform;
  String? get platform => _$this._platform;
  set platform(String? platform) => _$this._platform = platform;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  String? _evidenceGroupId;
  String? get evidenceGroupId => _$this._evidenceGroupId;
  set evidenceGroupId(String? evidenceGroupId) =>
      _$this._evidenceGroupId = evidenceGroupId;

  int? _memberCount;
  int? get memberCount => _$this._memberCount;
  set memberCount(int? memberCount) => _$this._memberCount = memberCount;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  PropagationNodeBuilder() {
    PropagationNode._defaults(this);
  }

  PropagationNodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _ref = $v.ref;
      _platform = $v.platform;
      _observedAt = $v.observedAt;
      _evidenceGroupId = $v.evidenceGroupId;
      _memberCount = $v.memberCount;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PropagationNode other) {
    _$v = other as _$PropagationNode;
  }

  @override
  void update(void Function(PropagationNodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PropagationNode build() => _build();

  _$PropagationNode _build() {
    final _$result =
        _$v ??
        _$PropagationNode._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'PropagationNode',
            'id',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'PropagationNode',
            'type',
          ),
          ref: ref,
          platform: platform,
          observedAt: BuiltValueNullFieldError.checkNotNull(
            observedAt,
            r'PropagationNode',
            'observedAt',
          ),
          evidenceGroupId: evidenceGroupId,
          memberCount: memberCount,
          label: label,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

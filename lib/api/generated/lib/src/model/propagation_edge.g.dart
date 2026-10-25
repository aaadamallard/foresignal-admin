// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'propagation_edge.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PropagationEdgeTypeEnum _$propagationEdgeTypeEnum_repost =
    const PropagationEdgeTypeEnum._('repost');
const PropagationEdgeTypeEnum _$propagationEdgeTypeEnum_quote =
    const PropagationEdgeTypeEnum._('quote');
const PropagationEdgeTypeEnum _$propagationEdgeTypeEnum_reply =
    const PropagationEdgeTypeEnum._('reply');
const PropagationEdgeTypeEnum _$propagationEdgeTypeEnum_link =
    const PropagationEdgeTypeEnum._('link');
const PropagationEdgeTypeEnum _$propagationEdgeTypeEnum_textMatch =
    const PropagationEdgeTypeEnum._('textMatch');
const PropagationEdgeTypeEnum _$propagationEdgeTypeEnum_mediaMatch =
    const PropagationEdgeTypeEnum._('mediaMatch');
const PropagationEdgeTypeEnum _$propagationEdgeTypeEnum_crossPlatform =
    const PropagationEdgeTypeEnum._('crossPlatform');
const PropagationEdgeTypeEnum _$propagationEdgeTypeEnum_unknownDefaultOpenApi =
    const PropagationEdgeTypeEnum._('unknownDefaultOpenApi');

PropagationEdgeTypeEnum _$propagationEdgeTypeEnumValueOf(String name) {
  switch (name) {
    case 'repost':
      return _$propagationEdgeTypeEnum_repost;
    case 'quote':
      return _$propagationEdgeTypeEnum_quote;
    case 'reply':
      return _$propagationEdgeTypeEnum_reply;
    case 'link':
      return _$propagationEdgeTypeEnum_link;
    case 'textMatch':
      return _$propagationEdgeTypeEnum_textMatch;
    case 'mediaMatch':
      return _$propagationEdgeTypeEnum_mediaMatch;
    case 'crossPlatform':
      return _$propagationEdgeTypeEnum_crossPlatform;
    case 'unknownDefaultOpenApi':
      return _$propagationEdgeTypeEnum_unknownDefaultOpenApi;
    default:
      return _$propagationEdgeTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PropagationEdgeTypeEnum> _$propagationEdgeTypeEnumValues =
    BuiltSet<PropagationEdgeTypeEnum>(const <PropagationEdgeTypeEnum>[
      _$propagationEdgeTypeEnum_repost,
      _$propagationEdgeTypeEnum_quote,
      _$propagationEdgeTypeEnum_reply,
      _$propagationEdgeTypeEnum_link,
      _$propagationEdgeTypeEnum_textMatch,
      _$propagationEdgeTypeEnum_mediaMatch,
      _$propagationEdgeTypeEnum_crossPlatform,
      _$propagationEdgeTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<PropagationEdgeTypeEnum> _$propagationEdgeTypeEnumSerializer =
    _$PropagationEdgeTypeEnumSerializer();

class _$PropagationEdgeTypeEnumSerializer
    implements PrimitiveSerializer<PropagationEdgeTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'repost': 'repost',
    'quote': 'quote',
    'reply': 'reply',
    'link': 'link',
    'textMatch': 'text-match',
    'mediaMatch': 'media-match',
    'crossPlatform': 'cross-platform',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'repost': 'repost',
    'quote': 'quote',
    'reply': 'reply',
    'link': 'link',
    'text-match': 'textMatch',
    'media-match': 'mediaMatch',
    'cross-platform': 'crossPlatform',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PropagationEdgeTypeEnum];
  @override
  final String wireName = 'PropagationEdgeTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    PropagationEdgeTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PropagationEdgeTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PropagationEdgeTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PropagationEdge extends PropagationEdge {
  @override
  final String from;
  @override
  final String to;
  @override
  final PropagationEdgeTypeEnum type;
  @override
  final num deltaSeconds;
  @override
  final int? count;

  factory _$PropagationEdge([void Function(PropagationEdgeBuilder)? updates]) =>
      (PropagationEdgeBuilder()..update(updates))._build();

  _$PropagationEdge._({
    required this.from,
    required this.to,
    required this.type,
    required this.deltaSeconds,
    this.count,
  }) : super._();
  @override
  PropagationEdge rebuild(void Function(PropagationEdgeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PropagationEdgeBuilder toBuilder() => PropagationEdgeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PropagationEdge &&
        from == other.from &&
        to == other.to &&
        type == other.type &&
        deltaSeconds == other.deltaSeconds &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, deltaSeconds.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PropagationEdge')
          ..add('from', from)
          ..add('to', to)
          ..add('type', type)
          ..add('deltaSeconds', deltaSeconds)
          ..add('count', count))
        .toString();
  }
}

class PropagationEdgeBuilder
    implements Builder<PropagationEdge, PropagationEdgeBuilder> {
  _$PropagationEdge? _$v;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  PropagationEdgeTypeEnum? _type;
  PropagationEdgeTypeEnum? get type => _$this._type;
  set type(PropagationEdgeTypeEnum? type) => _$this._type = type;

  num? _deltaSeconds;
  num? get deltaSeconds => _$this._deltaSeconds;
  set deltaSeconds(num? deltaSeconds) => _$this._deltaSeconds = deltaSeconds;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  PropagationEdgeBuilder() {
    PropagationEdge._defaults(this);
  }

  PropagationEdgeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _type = $v.type;
      _deltaSeconds = $v.deltaSeconds;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PropagationEdge other) {
    _$v = other as _$PropagationEdge;
  }

  @override
  void update(void Function(PropagationEdgeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PropagationEdge build() => _build();

  _$PropagationEdge _build() {
    final _$result =
        _$v ??
        _$PropagationEdge._(
          from: BuiltValueNullFieldError.checkNotNull(
            from,
            r'PropagationEdge',
            'from',
          ),
          to: BuiltValueNullFieldError.checkNotNull(
            to,
            r'PropagationEdge',
            'to',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'PropagationEdge',
            'type',
          ),
          deltaSeconds: BuiltValueNullFieldError.checkNotNull(
            deltaSeconds,
            r'PropagationEdge',
            'deltaSeconds',
          ),
          count: count,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

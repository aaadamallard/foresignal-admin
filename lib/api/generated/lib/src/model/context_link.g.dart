// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ContextLinkVersionEnum _$contextLinkVersionEnum_number1 =
    const ContextLinkVersionEnum._('number1');

ContextLinkVersionEnum _$contextLinkVersionEnumValueOf(String name) {
  switch (name) {
    case 'number1':
      return _$contextLinkVersionEnum_number1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ContextLinkVersionEnum> _$contextLinkVersionEnumValues =
    BuiltSet<ContextLinkVersionEnum>(const <ContextLinkVersionEnum>[
      _$contextLinkVersionEnum_number1,
    ]);

Serializer<ContextLinkVersionEnum> _$contextLinkVersionEnumSerializer =
    _$ContextLinkVersionEnumSerializer();

class _$ContextLinkVersionEnumSerializer
    implements PrimitiveSerializer<ContextLinkVersionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number1': 1,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    1: 'number1',
  };

  @override
  final Iterable<Type> types = const <Type>[ContextLinkVersionEnum];
  @override
  final String wireName = 'ContextLinkVersionEnum';

  @override
  Object serialize(
    Serializers serializers,
    ContextLinkVersionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ContextLinkVersionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ContextLinkVersionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ContextLink extends ContextLink {
  @override
  final ContextLinkVersionEnum version;
  @override
  final String? workspaceId;
  @override
  final String payload;
  @override
  final String fragment;
  @override
  final int bytes;

  factory _$ContextLink([void Function(ContextLinkBuilder)? updates]) =>
      (ContextLinkBuilder()..update(updates))._build();

  _$ContextLink._({
    required this.version,
    this.workspaceId,
    required this.payload,
    required this.fragment,
    required this.bytes,
  }) : super._();
  @override
  ContextLink rebuild(void Function(ContextLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContextLinkBuilder toBuilder() => ContextLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContextLink &&
        version == other.version &&
        workspaceId == other.workspaceId &&
        payload == other.payload &&
        fragment == other.fragment &&
        bytes == other.bytes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, workspaceId.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jc(_$hash, fragment.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContextLink')
          ..add('version', version)
          ..add('workspaceId', workspaceId)
          ..add('payload', payload)
          ..add('fragment', fragment)
          ..add('bytes', bytes))
        .toString();
  }
}

class ContextLinkBuilder implements Builder<ContextLink, ContextLinkBuilder> {
  _$ContextLink? _$v;

  ContextLinkVersionEnum? _version;
  ContextLinkVersionEnum? get version => _$this._version;
  set version(ContextLinkVersionEnum? version) => _$this._version = version;

  String? _workspaceId;
  String? get workspaceId => _$this._workspaceId;
  set workspaceId(String? workspaceId) => _$this._workspaceId = workspaceId;

  String? _payload;
  String? get payload => _$this._payload;
  set payload(String? payload) => _$this._payload = payload;

  String? _fragment;
  String? get fragment => _$this._fragment;
  set fragment(String? fragment) => _$this._fragment = fragment;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  ContextLinkBuilder() {
    ContextLink._defaults(this);
  }

  ContextLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _workspaceId = $v.workspaceId;
      _payload = $v.payload;
      _fragment = $v.fragment;
      _bytes = $v.bytes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContextLink other) {
    _$v = other as _$ContextLink;
  }

  @override
  void update(void Function(ContextLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContextLink build() => _build();

  _$ContextLink _build() {
    final _$result =
        _$v ??
        _$ContextLink._(
          version: BuiltValueNullFieldError.checkNotNull(
            version,
            r'ContextLink',
            'version',
          ),
          workspaceId: workspaceId,
          payload: BuiltValueNullFieldError.checkNotNull(
            payload,
            r'ContextLink',
            'payload',
          ),
          fragment: BuiltValueNullFieldError.checkNotNull(
            fragment,
            r'ContextLink',
            'fragment',
          ),
          bytes: BuiltValueNullFieldError.checkNotNull(
            bytes,
            r'ContextLink',
            'bytes',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

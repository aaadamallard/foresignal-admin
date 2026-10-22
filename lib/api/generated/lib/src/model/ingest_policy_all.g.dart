// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_policy_all.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IngestPolicyAllModeEnum _$ingestPolicyAllModeEnum_ALL =
    const IngestPolicyAllModeEnum._('ALL');

IngestPolicyAllModeEnum _$ingestPolicyAllModeEnumValueOf(String name) {
  switch (name) {
    case 'ALL':
      return _$ingestPolicyAllModeEnum_ALL;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IngestPolicyAllModeEnum> _$ingestPolicyAllModeEnumValues =
    BuiltSet<IngestPolicyAllModeEnum>(const <IngestPolicyAllModeEnum>[
  _$ingestPolicyAllModeEnum_ALL,
]);

Serializer<IngestPolicyAllModeEnum> _$ingestPolicyAllModeEnumSerializer =
    _$IngestPolicyAllModeEnumSerializer();

class _$IngestPolicyAllModeEnumSerializer
    implements PrimitiveSerializer<IngestPolicyAllModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ALL': 'ALL',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ALL': 'ALL',
  };

  @override
  final Iterable<Type> types = const <Type>[IngestPolicyAllModeEnum];
  @override
  final String wireName = 'IngestPolicyAllModeEnum';

  @override
  Object serialize(Serializers serializers, IngestPolicyAllModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IngestPolicyAllModeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IngestPolicyAllModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IngestPolicyAll extends IngestPolicyAll {
  @override
  final IngestPolicyAllModeEnum mode;
  @override
  final String? keyframe;

  factory _$IngestPolicyAll([void Function(IngestPolicyAllBuilder)? updates]) =>
      (IngestPolicyAllBuilder()..update(updates))._build();

  _$IngestPolicyAll._({required this.mode, this.keyframe}) : super._();
  @override
  IngestPolicyAll rebuild(void Function(IngestPolicyAllBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngestPolicyAllBuilder toBuilder() => IngestPolicyAllBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestPolicyAll &&
        mode == other.mode &&
        keyframe == other.keyframe;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, keyframe.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngestPolicyAll')
          ..add('mode', mode)
          ..add('keyframe', keyframe))
        .toString();
  }
}

class IngestPolicyAllBuilder
    implements Builder<IngestPolicyAll, IngestPolicyAllBuilder> {
  _$IngestPolicyAll? _$v;

  IngestPolicyAllModeEnum? _mode;
  IngestPolicyAllModeEnum? get mode => _$this._mode;
  set mode(IngestPolicyAllModeEnum? mode) => _$this._mode = mode;

  String? _keyframe;
  String? get keyframe => _$this._keyframe;
  set keyframe(String? keyframe) => _$this._keyframe = keyframe;

  IngestPolicyAllBuilder() {
    IngestPolicyAll._defaults(this);
  }

  IngestPolicyAllBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mode = $v.mode;
      _keyframe = $v.keyframe;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestPolicyAll other) {
    _$v = other as _$IngestPolicyAll;
  }

  @override
  void update(void Function(IngestPolicyAllBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestPolicyAll build() => _build();

  _$IngestPolicyAll _build() {
    final _$result = _$v ??
        _$IngestPolicyAll._(
          mode: BuiltValueNullFieldError.checkNotNull(
              mode, r'IngestPolicyAll', 'mode'),
          keyframe: keyframe,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

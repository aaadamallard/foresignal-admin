// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_policy_latest.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IngestPolicyLatestModeEnum _$ingestPolicyLatestModeEnum_LATEST =
    const IngestPolicyLatestModeEnum._('LATEST');
const IngestPolicyLatestModeEnum
_$ingestPolicyLatestModeEnum_unknownDefaultOpenApi =
    const IngestPolicyLatestModeEnum._('unknownDefaultOpenApi');

IngestPolicyLatestModeEnum _$ingestPolicyLatestModeEnumValueOf(String name) {
  switch (name) {
    case 'LATEST':
      return _$ingestPolicyLatestModeEnum_LATEST;
    case 'unknownDefaultOpenApi':
      return _$ingestPolicyLatestModeEnum_unknownDefaultOpenApi;
    default:
      return _$ingestPolicyLatestModeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IngestPolicyLatestModeEnum> _$ingestPolicyLatestModeEnumValues =
    BuiltSet<IngestPolicyLatestModeEnum>(const <IngestPolicyLatestModeEnum>[
      _$ingestPolicyLatestModeEnum_LATEST,
      _$ingestPolicyLatestModeEnum_unknownDefaultOpenApi,
    ]);

Serializer<IngestPolicyLatestModeEnum> _$ingestPolicyLatestModeEnumSerializer =
    _$IngestPolicyLatestModeEnumSerializer();

class _$IngestPolicyLatestModeEnumSerializer
    implements PrimitiveSerializer<IngestPolicyLatestModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LATEST': 'LATEST',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LATEST': 'LATEST',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IngestPolicyLatestModeEnum];
  @override
  final String wireName = 'IngestPolicyLatestModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    IngestPolicyLatestModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IngestPolicyLatestModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IngestPolicyLatestModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IngestPolicyLatest extends IngestPolicyLatest {
  @override
  final IngestPolicyLatestModeEnum mode;
  @override
  final String? minInterval;
  @override
  final String? keyframe;
  @override
  final String? edgeMinInterval;

  factory _$IngestPolicyLatest([
    void Function(IngestPolicyLatestBuilder)? updates,
  ]) => (IngestPolicyLatestBuilder()..update(updates))._build();

  _$IngestPolicyLatest._({
    required this.mode,
    this.minInterval,
    this.keyframe,
    this.edgeMinInterval,
  }) : super._();
  @override
  IngestPolicyLatest rebuild(
    void Function(IngestPolicyLatestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IngestPolicyLatestBuilder toBuilder() =>
      IngestPolicyLatestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestPolicyLatest &&
        mode == other.mode &&
        minInterval == other.minInterval &&
        keyframe == other.keyframe &&
        edgeMinInterval == other.edgeMinInterval;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, minInterval.hashCode);
    _$hash = $jc(_$hash, keyframe.hashCode);
    _$hash = $jc(_$hash, edgeMinInterval.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngestPolicyLatest')
          ..add('mode', mode)
          ..add('minInterval', minInterval)
          ..add('keyframe', keyframe)
          ..add('edgeMinInterval', edgeMinInterval))
        .toString();
  }
}

class IngestPolicyLatestBuilder
    implements Builder<IngestPolicyLatest, IngestPolicyLatestBuilder> {
  _$IngestPolicyLatest? _$v;

  IngestPolicyLatestModeEnum? _mode;
  IngestPolicyLatestModeEnum? get mode => _$this._mode;
  set mode(IngestPolicyLatestModeEnum? mode) => _$this._mode = mode;

  String? _minInterval;
  String? get minInterval => _$this._minInterval;
  set minInterval(String? minInterval) => _$this._minInterval = minInterval;

  String? _keyframe;
  String? get keyframe => _$this._keyframe;
  set keyframe(String? keyframe) => _$this._keyframe = keyframe;

  String? _edgeMinInterval;
  String? get edgeMinInterval => _$this._edgeMinInterval;
  set edgeMinInterval(String? edgeMinInterval) =>
      _$this._edgeMinInterval = edgeMinInterval;

  IngestPolicyLatestBuilder() {
    IngestPolicyLatest._defaults(this);
  }

  IngestPolicyLatestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mode = $v.mode;
      _minInterval = $v.minInterval;
      _keyframe = $v.keyframe;
      _edgeMinInterval = $v.edgeMinInterval;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestPolicyLatest other) {
    _$v = other as _$IngestPolicyLatest;
  }

  @override
  void update(void Function(IngestPolicyLatestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestPolicyLatest build() => _build();

  _$IngestPolicyLatest _build() {
    final _$result =
        _$v ??
        _$IngestPolicyLatest._(
          mode: BuiltValueNullFieldError.checkNotNull(
            mode,
            r'IngestPolicyLatest',
            'mode',
          ),
          minInterval: minInterval,
          keyframe: keyframe,
          edgeMinInterval: edgeMinInterval,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

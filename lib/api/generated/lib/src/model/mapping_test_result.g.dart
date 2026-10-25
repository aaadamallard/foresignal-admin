// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapping_test_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MappingTestResultMappingSourceEnum
_$mappingTestResultMappingSourceEnum_stored =
    const MappingTestResultMappingSourceEnum._('stored');
const MappingTestResultMappingSourceEnum
_$mappingTestResultMappingSourceEnum_proposed =
    const MappingTestResultMappingSourceEnum._('proposed');
const MappingTestResultMappingSourceEnum
_$mappingTestResultMappingSourceEnum_unknownDefaultOpenApi =
    const MappingTestResultMappingSourceEnum._('unknownDefaultOpenApi');

MappingTestResultMappingSourceEnum _$mappingTestResultMappingSourceEnumValueOf(
  String name,
) {
  switch (name) {
    case 'stored':
      return _$mappingTestResultMappingSourceEnum_stored;
    case 'proposed':
      return _$mappingTestResultMappingSourceEnum_proposed;
    case 'unknownDefaultOpenApi':
      return _$mappingTestResultMappingSourceEnum_unknownDefaultOpenApi;
    default:
      return _$mappingTestResultMappingSourceEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<MappingTestResultMappingSourceEnum>
_$mappingTestResultMappingSourceEnumValues =
    BuiltSet<MappingTestResultMappingSourceEnum>(
      const <MappingTestResultMappingSourceEnum>[
        _$mappingTestResultMappingSourceEnum_stored,
        _$mappingTestResultMappingSourceEnum_proposed,
        _$mappingTestResultMappingSourceEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<MappingTestResultMappingSourceEnum>
_$mappingTestResultMappingSourceEnumSerializer =
    _$MappingTestResultMappingSourceEnumSerializer();

class _$MappingTestResultMappingSourceEnumSerializer
    implements PrimitiveSerializer<MappingTestResultMappingSourceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'stored': 'stored',
    'proposed': 'proposed',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'stored': 'stored',
    'proposed': 'proposed',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MappingTestResultMappingSourceEnum];
  @override
  final String wireName = 'MappingTestResultMappingSourceEnum';

  @override
  Object serialize(
    Serializers serializers,
    MappingTestResultMappingSourceEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MappingTestResultMappingSourceEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MappingTestResultMappingSourceEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$MappingTestResult extends MappingTestResult {
  @override
  final MappingTestResultMappingSourceEnum mappingSource;
  @override
  final BuiltList<MappingTestResultSamplesInner> samples;

  factory _$MappingTestResult([
    void Function(MappingTestResultBuilder)? updates,
  ]) => (MappingTestResultBuilder()..update(updates))._build();

  _$MappingTestResult._({required this.mappingSource, required this.samples})
    : super._();
  @override
  MappingTestResult rebuild(void Function(MappingTestResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MappingTestResultBuilder toBuilder() =>
      MappingTestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MappingTestResult &&
        mappingSource == other.mappingSource &&
        samples == other.samples;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mappingSource.hashCode);
    _$hash = $jc(_$hash, samples.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MappingTestResult')
          ..add('mappingSource', mappingSource)
          ..add('samples', samples))
        .toString();
  }
}

class MappingTestResultBuilder
    implements Builder<MappingTestResult, MappingTestResultBuilder> {
  _$MappingTestResult? _$v;

  MappingTestResultMappingSourceEnum? _mappingSource;
  MappingTestResultMappingSourceEnum? get mappingSource =>
      _$this._mappingSource;
  set mappingSource(MappingTestResultMappingSourceEnum? mappingSource) =>
      _$this._mappingSource = mappingSource;

  ListBuilder<MappingTestResultSamplesInner>? _samples;
  ListBuilder<MappingTestResultSamplesInner> get samples =>
      _$this._samples ??= ListBuilder<MappingTestResultSamplesInner>();
  set samples(ListBuilder<MappingTestResultSamplesInner>? samples) =>
      _$this._samples = samples;

  MappingTestResultBuilder() {
    MappingTestResult._defaults(this);
  }

  MappingTestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mappingSource = $v.mappingSource;
      _samples = $v.samples.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MappingTestResult other) {
    _$v = other as _$MappingTestResult;
  }

  @override
  void update(void Function(MappingTestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MappingTestResult build() => _build();

  _$MappingTestResult _build() {
    _$MappingTestResult _$result;
    try {
      _$result =
          _$v ??
          _$MappingTestResult._(
            mappingSource: BuiltValueNullFieldError.checkNotNull(
              mappingSource,
              r'MappingTestResult',
              'mappingSource',
            ),
            samples: samples.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'samples';
        samples.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MappingTestResult',
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

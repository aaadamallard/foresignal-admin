// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapping_preview_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MappingPreviewRequest extends MappingPreviewRequest {
  @override
  final RecordMapping mapping;
  @override
  final MappingSample sample;
  @override
  final String? sourceId;

  factory _$MappingPreviewRequest([
    void Function(MappingPreviewRequestBuilder)? updates,
  ]) => (MappingPreviewRequestBuilder()..update(updates))._build();

  _$MappingPreviewRequest._({
    required this.mapping,
    required this.sample,
    this.sourceId,
  }) : super._();
  @override
  MappingPreviewRequest rebuild(
    void Function(MappingPreviewRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MappingPreviewRequestBuilder toBuilder() =>
      MappingPreviewRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MappingPreviewRequest &&
        mapping == other.mapping &&
        sample == other.sample &&
        sourceId == other.sourceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mapping.hashCode);
    _$hash = $jc(_$hash, sample.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MappingPreviewRequest')
          ..add('mapping', mapping)
          ..add('sample', sample)
          ..add('sourceId', sourceId))
        .toString();
  }
}

class MappingPreviewRequestBuilder
    implements Builder<MappingPreviewRequest, MappingPreviewRequestBuilder> {
  _$MappingPreviewRequest? _$v;

  RecordMappingBuilder? _mapping;
  RecordMappingBuilder get mapping =>
      _$this._mapping ??= RecordMappingBuilder();
  set mapping(RecordMappingBuilder? mapping) => _$this._mapping = mapping;

  MappingSampleBuilder? _sample;
  MappingSampleBuilder get sample => _$this._sample ??= MappingSampleBuilder();
  set sample(MappingSampleBuilder? sample) => _$this._sample = sample;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  MappingPreviewRequestBuilder() {
    MappingPreviewRequest._defaults(this);
  }

  MappingPreviewRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mapping = $v.mapping.toBuilder();
      _sample = $v.sample.toBuilder();
      _sourceId = $v.sourceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MappingPreviewRequest other) {
    _$v = other as _$MappingPreviewRequest;
  }

  @override
  void update(void Function(MappingPreviewRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MappingPreviewRequest build() => _build();

  _$MappingPreviewRequest _build() {
    _$MappingPreviewRequest _$result;
    try {
      _$result =
          _$v ??
          _$MappingPreviewRequest._(
            mapping: mapping.build(),
            sample: sample.build(),
            sourceId: sourceId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mapping';
        mapping.build();
        _$failedField = 'sample';
        sample.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MappingPreviewRequest',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_relevance_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SourceRelevanceRequest extends SourceRelevanceRequest {
  @override
  final BuiltSet<String> sourceIds;

  factory _$SourceRelevanceRequest([
    void Function(SourceRelevanceRequestBuilder)? updates,
  ]) => (SourceRelevanceRequestBuilder()..update(updates))._build();

  _$SourceRelevanceRequest._({required this.sourceIds}) : super._();
  @override
  SourceRelevanceRequest rebuild(
    void Function(SourceRelevanceRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SourceRelevanceRequestBuilder toBuilder() =>
      SourceRelevanceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceRelevanceRequest && sourceIds == other.sourceIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'SourceRelevanceRequest',
    )..add('sourceIds', sourceIds)).toString();
  }
}

class SourceRelevanceRequestBuilder
    implements Builder<SourceRelevanceRequest, SourceRelevanceRequestBuilder> {
  _$SourceRelevanceRequest? _$v;

  SetBuilder<String>? _sourceIds;
  SetBuilder<String> get sourceIds =>
      _$this._sourceIds ??= SetBuilder<String>();
  set sourceIds(SetBuilder<String>? sourceIds) => _$this._sourceIds = sourceIds;

  SourceRelevanceRequestBuilder() {
    SourceRelevanceRequest._defaults(this);
  }

  SourceRelevanceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceIds = $v.sourceIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceRelevanceRequest other) {
    _$v = other as _$SourceRelevanceRequest;
  }

  @override
  void update(void Function(SourceRelevanceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceRelevanceRequest build() => _build();

  _$SourceRelevanceRequest _build() {
    _$SourceRelevanceRequest _$result;
    try {
      _$result =
          _$v ?? _$SourceRelevanceRequest._(sourceIds: sourceIds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sourceIds';
        sourceIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SourceRelevanceRequest',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_load_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReferenceLoadRequest extends ReferenceLoadRequest {
  @override
  final BuiltList<String> datasets;

  factory _$ReferenceLoadRequest([
    void Function(ReferenceLoadRequestBuilder)? updates,
  ]) => (ReferenceLoadRequestBuilder()..update(updates))._build();

  _$ReferenceLoadRequest._({required this.datasets}) : super._();
  @override
  ReferenceLoadRequest rebuild(
    void Function(ReferenceLoadRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReferenceLoadRequestBuilder toBuilder() =>
      ReferenceLoadRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReferenceLoadRequest && datasets == other.datasets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, datasets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ReferenceLoadRequest',
    )..add('datasets', datasets)).toString();
  }
}

class ReferenceLoadRequestBuilder
    implements Builder<ReferenceLoadRequest, ReferenceLoadRequestBuilder> {
  _$ReferenceLoadRequest? _$v;

  ListBuilder<String>? _datasets;
  ListBuilder<String> get datasets =>
      _$this._datasets ??= ListBuilder<String>();
  set datasets(ListBuilder<String>? datasets) => _$this._datasets = datasets;

  ReferenceLoadRequestBuilder() {
    ReferenceLoadRequest._defaults(this);
  }

  ReferenceLoadRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _datasets = $v.datasets.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReferenceLoadRequest other) {
    _$v = other as _$ReferenceLoadRequest;
  }

  @override
  void update(void Function(ReferenceLoadRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReferenceLoadRequest build() => _build();

  _$ReferenceLoadRequest _build() {
    _$ReferenceLoadRequest _$result;
    try {
      _$result = _$v ?? _$ReferenceLoadRequest._(datasets: datasets.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'datasets';
        datasets.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReferenceLoadRequest',
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

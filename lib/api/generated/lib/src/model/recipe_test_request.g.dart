// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_test_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecipeTestRequest extends RecipeTestRequest {
  @override
  final int fromSeq;
  @override
  final int toSeq;

  factory _$RecipeTestRequest(
          [void Function(RecipeTestRequestBuilder)? updates]) =>
      (RecipeTestRequestBuilder()..update(updates))._build();

  _$RecipeTestRequest._({required this.fromSeq, required this.toSeq})
      : super._();
  @override
  RecipeTestRequest rebuild(void Function(RecipeTestRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecipeTestRequestBuilder toBuilder() =>
      RecipeTestRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecipeTestRequest &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecipeTestRequest')
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq))
        .toString();
  }
}

class RecipeTestRequestBuilder
    implements Builder<RecipeTestRequest, RecipeTestRequestBuilder> {
  _$RecipeTestRequest? _$v;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  RecipeTestRequestBuilder() {
    RecipeTestRequest._defaults(this);
  }

  RecipeTestRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecipeTestRequest other) {
    _$v = other as _$RecipeTestRequest;
  }

  @override
  void update(void Function(RecipeTestRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecipeTestRequest build() => _build();

  _$RecipeTestRequest _build() {
    final _$result = _$v ??
        _$RecipeTestRequest._(
          fromSeq: BuiltValueNullFieldError.checkNotNull(
              fromSeq, r'RecipeTestRequest', 'fromSeq'),
          toSeq: BuiltValueNullFieldError.checkNotNull(
              toSeq, r'RecipeTestRequest', 'toSeq'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

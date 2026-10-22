// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_refs_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagRefsRequest extends TagRefsRequest {
  @override
  final BuiltList<String> refs;

  factory _$TagRefsRequest([void Function(TagRefsRequestBuilder)? updates]) =>
      (TagRefsRequestBuilder()..update(updates))._build();

  _$TagRefsRequest._({required this.refs}) : super._();
  @override
  TagRefsRequest rebuild(void Function(TagRefsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagRefsRequestBuilder toBuilder() => TagRefsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagRefsRequest && refs == other.refs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'TagRefsRequest',
    )..add('refs', refs)).toString();
  }
}

class TagRefsRequestBuilder
    implements Builder<TagRefsRequest, TagRefsRequestBuilder> {
  _$TagRefsRequest? _$v;

  ListBuilder<String>? _refs;
  ListBuilder<String> get refs => _$this._refs ??= ListBuilder<String>();
  set refs(ListBuilder<String>? refs) => _$this._refs = refs;

  TagRefsRequestBuilder() {
    TagRefsRequest._defaults(this);
  }

  TagRefsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refs = $v.refs.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagRefsRequest other) {
    _$v = other as _$TagRefsRequest;
  }

  @override
  void update(void Function(TagRefsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagRefsRequest build() => _build();

  _$TagRefsRequest _build() {
    _$TagRefsRequest _$result;
    try {
      _$result = _$v ?? _$TagRefsRequest._(refs: refs.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refs';
        refs.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TagRefsRequest',
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

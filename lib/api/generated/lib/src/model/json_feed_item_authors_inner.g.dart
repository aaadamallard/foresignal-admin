// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_feed_item_authors_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonFeedItemAuthorsInner extends JsonFeedItemAuthorsInner {
  @override
  final String? name;

  factory _$JsonFeedItemAuthorsInner([
    void Function(JsonFeedItemAuthorsInnerBuilder)? updates,
  ]) => (JsonFeedItemAuthorsInnerBuilder()..update(updates))._build();

  _$JsonFeedItemAuthorsInner._({this.name}) : super._();
  @override
  JsonFeedItemAuthorsInner rebuild(
    void Function(JsonFeedItemAuthorsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  JsonFeedItemAuthorsInnerBuilder toBuilder() =>
      JsonFeedItemAuthorsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonFeedItemAuthorsInner && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'JsonFeedItemAuthorsInner',
    )..add('name', name)).toString();
  }
}

class JsonFeedItemAuthorsInnerBuilder
    implements
        Builder<JsonFeedItemAuthorsInner, JsonFeedItemAuthorsInnerBuilder> {
  _$JsonFeedItemAuthorsInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  JsonFeedItemAuthorsInnerBuilder() {
    JsonFeedItemAuthorsInner._defaults(this);
  }

  JsonFeedItemAuthorsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonFeedItemAuthorsInner other) {
    _$v = other as _$JsonFeedItemAuthorsInner;
  }

  @override
  void update(void Function(JsonFeedItemAuthorsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonFeedItemAuthorsInner build() => _build();

  _$JsonFeedItemAuthorsInner _build() {
    final _$result = _$v ?? _$JsonFeedItemAuthorsInner._(name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

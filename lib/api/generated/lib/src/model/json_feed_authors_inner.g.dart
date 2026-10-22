// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_feed_authors_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonFeedAuthorsInner extends JsonFeedAuthorsInner {
  @override
  final String? name;

  factory _$JsonFeedAuthorsInner(
          [void Function(JsonFeedAuthorsInnerBuilder)? updates]) =>
      (JsonFeedAuthorsInnerBuilder()..update(updates))._build();

  _$JsonFeedAuthorsInner._({this.name}) : super._();
  @override
  JsonFeedAuthorsInner rebuild(
          void Function(JsonFeedAuthorsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonFeedAuthorsInnerBuilder toBuilder() =>
      JsonFeedAuthorsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonFeedAuthorsInner && name == other.name;
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
    return (newBuiltValueToStringHelper(r'JsonFeedAuthorsInner')
          ..add('name', name))
        .toString();
  }
}

class JsonFeedAuthorsInnerBuilder
    implements Builder<JsonFeedAuthorsInner, JsonFeedAuthorsInnerBuilder> {
  _$JsonFeedAuthorsInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  JsonFeedAuthorsInnerBuilder() {
    JsonFeedAuthorsInner._defaults(this);
  }

  JsonFeedAuthorsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonFeedAuthorsInner other) {
    _$v = other as _$JsonFeedAuthorsInner;
  }

  @override
  void update(void Function(JsonFeedAuthorsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonFeedAuthorsInner build() => _build();

  _$JsonFeedAuthorsInner _build() {
    final _$result = _$v ??
        _$JsonFeedAuthorsInner._(
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

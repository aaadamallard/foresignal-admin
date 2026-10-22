// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxii_api_root.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaxiiApiRoot extends TaxiiApiRoot {
  @override
  final String title;
  @override
  final String? description;
  @override
  final BuiltList<String> versions;
  @override
  final int maxContentLength;

  factory _$TaxiiApiRoot([void Function(TaxiiApiRootBuilder)? updates]) =>
      (TaxiiApiRootBuilder()..update(updates))._build();

  _$TaxiiApiRoot._({
    required this.title,
    this.description,
    required this.versions,
    required this.maxContentLength,
  }) : super._();
  @override
  TaxiiApiRoot rebuild(void Function(TaxiiApiRootBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaxiiApiRootBuilder toBuilder() => TaxiiApiRootBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaxiiApiRoot &&
        title == other.title &&
        description == other.description &&
        versions == other.versions &&
        maxContentLength == other.maxContentLength;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, versions.hashCode);
    _$hash = $jc(_$hash, maxContentLength.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaxiiApiRoot')
          ..add('title', title)
          ..add('description', description)
          ..add('versions', versions)
          ..add('maxContentLength', maxContentLength))
        .toString();
  }
}

class TaxiiApiRootBuilder
    implements Builder<TaxiiApiRoot, TaxiiApiRootBuilder> {
  _$TaxiiApiRoot? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _versions;
  ListBuilder<String> get versions =>
      _$this._versions ??= ListBuilder<String>();
  set versions(ListBuilder<String>? versions) => _$this._versions = versions;

  int? _maxContentLength;
  int? get maxContentLength => _$this._maxContentLength;
  set maxContentLength(int? maxContentLength) =>
      _$this._maxContentLength = maxContentLength;

  TaxiiApiRootBuilder() {
    TaxiiApiRoot._defaults(this);
  }

  TaxiiApiRootBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _versions = $v.versions.toBuilder();
      _maxContentLength = $v.maxContentLength;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaxiiApiRoot other) {
    _$v = other as _$TaxiiApiRoot;
  }

  @override
  void update(void Function(TaxiiApiRootBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaxiiApiRoot build() => _build();

  _$TaxiiApiRoot _build() {
    _$TaxiiApiRoot _$result;
    try {
      _$result =
          _$v ??
          _$TaxiiApiRoot._(
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'TaxiiApiRoot',
              'title',
            ),
            description: description,
            versions: versions.build(),
            maxContentLength: BuiltValueNullFieldError.checkNotNull(
              maxContentLength,
              r'TaxiiApiRoot',
              'maxContentLength',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'versions';
        versions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TaxiiApiRoot',
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

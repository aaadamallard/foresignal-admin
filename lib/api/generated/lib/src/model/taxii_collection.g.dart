// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxii_collection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaxiiCollection extends TaxiiCollection {
  @override
  final String id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final bool canRead;
  @override
  final bool canWrite;
  @override
  final BuiltList<String>? mediaTypes;

  factory _$TaxiiCollection([void Function(TaxiiCollectionBuilder)? updates]) =>
      (TaxiiCollectionBuilder()..update(updates))._build();

  _$TaxiiCollection._(
      {required this.id,
      required this.title,
      this.description,
      required this.canRead,
      required this.canWrite,
      this.mediaTypes})
      : super._();
  @override
  TaxiiCollection rebuild(void Function(TaxiiCollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaxiiCollectionBuilder toBuilder() => TaxiiCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaxiiCollection &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        canRead == other.canRead &&
        canWrite == other.canWrite &&
        mediaTypes == other.mediaTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, canRead.hashCode);
    _$hash = $jc(_$hash, canWrite.hashCode);
    _$hash = $jc(_$hash, mediaTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaxiiCollection')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('canRead', canRead)
          ..add('canWrite', canWrite)
          ..add('mediaTypes', mediaTypes))
        .toString();
  }
}

class TaxiiCollectionBuilder
    implements Builder<TaxiiCollection, TaxiiCollectionBuilder> {
  _$TaxiiCollection? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _canRead;
  bool? get canRead => _$this._canRead;
  set canRead(bool? canRead) => _$this._canRead = canRead;

  bool? _canWrite;
  bool? get canWrite => _$this._canWrite;
  set canWrite(bool? canWrite) => _$this._canWrite = canWrite;

  ListBuilder<String>? _mediaTypes;
  ListBuilder<String> get mediaTypes =>
      _$this._mediaTypes ??= ListBuilder<String>();
  set mediaTypes(ListBuilder<String>? mediaTypes) =>
      _$this._mediaTypes = mediaTypes;

  TaxiiCollectionBuilder() {
    TaxiiCollection._defaults(this);
  }

  TaxiiCollectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _canRead = $v.canRead;
      _canWrite = $v.canWrite;
      _mediaTypes = $v.mediaTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaxiiCollection other) {
    _$v = other as _$TaxiiCollection;
  }

  @override
  void update(void Function(TaxiiCollectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaxiiCollection build() => _build();

  _$TaxiiCollection _build() {
    _$TaxiiCollection _$result;
    try {
      _$result = _$v ??
          _$TaxiiCollection._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'TaxiiCollection', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'TaxiiCollection', 'title'),
            description: description,
            canRead: BuiltValueNullFieldError.checkNotNull(
                canRead, r'TaxiiCollection', 'canRead'),
            canWrite: BuiltValueNullFieldError.checkNotNull(
                canWrite, r'TaxiiCollection', 'canWrite'),
            mediaTypes: _mediaTypes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaTypes';
        _mediaTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TaxiiCollection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

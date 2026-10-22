// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_source_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdpSourceInfo extends EdpSourceInfo {
  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? version;
  @override
  final EdpSourceInfoPublisher publisher;
  @override
  final String? homepage;
  @override
  final EdpSourceInfoLicence? licence;
  @override
  final EdpSourceInfoTerms? terms;
  @override
  final EdpSourceInfoAccess? access;
  @override
  final EdpSourceInfoOriginator originator;
  @override
  final bool? private;

  factory _$EdpSourceInfo([void Function(EdpSourceInfoBuilder)? updates]) =>
      (EdpSourceInfoBuilder()..update(updates))._build();

  _$EdpSourceInfo._(
      {required this.id,
      required this.name,
      this.description,
      this.version,
      required this.publisher,
      this.homepage,
      this.licence,
      this.terms,
      this.access,
      required this.originator,
      this.private})
      : super._();
  @override
  EdpSourceInfo rebuild(void Function(EdpSourceInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpSourceInfoBuilder toBuilder() => EdpSourceInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpSourceInfo &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        version == other.version &&
        publisher == other.publisher &&
        homepage == other.homepage &&
        licence == other.licence &&
        terms == other.terms &&
        access == other.access &&
        originator == other.originator &&
        private == other.private;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, publisher.hashCode);
    _$hash = $jc(_$hash, homepage.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, terms.hashCode);
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jc(_$hash, originator.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpSourceInfo')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('version', version)
          ..add('publisher', publisher)
          ..add('homepage', homepage)
          ..add('licence', licence)
          ..add('terms', terms)
          ..add('access', access)
          ..add('originator', originator)
          ..add('private', private))
        .toString();
  }
}

class EdpSourceInfoBuilder
    implements Builder<EdpSourceInfo, EdpSourceInfoBuilder> {
  _$EdpSourceInfo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  EdpSourceInfoPublisherBuilder? _publisher;
  EdpSourceInfoPublisherBuilder get publisher =>
      _$this._publisher ??= EdpSourceInfoPublisherBuilder();
  set publisher(EdpSourceInfoPublisherBuilder? publisher) =>
      _$this._publisher = publisher;

  String? _homepage;
  String? get homepage => _$this._homepage;
  set homepage(String? homepage) => _$this._homepage = homepage;

  EdpSourceInfoLicenceBuilder? _licence;
  EdpSourceInfoLicenceBuilder get licence =>
      _$this._licence ??= EdpSourceInfoLicenceBuilder();
  set licence(EdpSourceInfoLicenceBuilder? licence) =>
      _$this._licence = licence;

  EdpSourceInfoTermsBuilder? _terms;
  EdpSourceInfoTermsBuilder get terms =>
      _$this._terms ??= EdpSourceInfoTermsBuilder();
  set terms(EdpSourceInfoTermsBuilder? terms) => _$this._terms = terms;

  EdpSourceInfoAccessBuilder? _access;
  EdpSourceInfoAccessBuilder get access =>
      _$this._access ??= EdpSourceInfoAccessBuilder();
  set access(EdpSourceInfoAccessBuilder? access) => _$this._access = access;

  EdpSourceInfoOriginatorBuilder? _originator;
  EdpSourceInfoOriginatorBuilder get originator =>
      _$this._originator ??= EdpSourceInfoOriginatorBuilder();
  set originator(EdpSourceInfoOriginatorBuilder? originator) =>
      _$this._originator = originator;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  EdpSourceInfoBuilder() {
    EdpSourceInfo._defaults(this);
  }

  EdpSourceInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _version = $v.version;
      _publisher = $v.publisher.toBuilder();
      _homepage = $v.homepage;
      _licence = $v.licence?.toBuilder();
      _terms = $v.terms?.toBuilder();
      _access = $v.access?.toBuilder();
      _originator = $v.originator.toBuilder();
      _private = $v.private;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpSourceInfo other) {
    _$v = other as _$EdpSourceInfo;
  }

  @override
  void update(void Function(EdpSourceInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpSourceInfo build() => _build();

  _$EdpSourceInfo _build() {
    _$EdpSourceInfo _$result;
    try {
      _$result = _$v ??
          _$EdpSourceInfo._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'EdpSourceInfo', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'EdpSourceInfo', 'name'),
            description: description,
            version: version,
            publisher: publisher.build(),
            homepage: homepage,
            licence: _licence?.build(),
            terms: _terms?.build(),
            access: _access?.build(),
            originator: originator.build(),
            private: private,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'publisher';
        publisher.build();

        _$failedField = 'licence';
        _licence?.build();
        _$failedField = 'terms';
        _terms?.build();
        _$failedField = 'access';
        _access?.build();
        _$failedField = 'originator';
        originator.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EdpSourceInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

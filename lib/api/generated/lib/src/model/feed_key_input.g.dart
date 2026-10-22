// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_key_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FeedKeyInput extends FeedKeyInput {
  @override
  final String name;
  @override
  final BuiltList<String> prefixes;
  @override
  final ReadRestriction restrictions;
  @override
  final DateTime expiresAt;
  @override
  final bool? privateAccess;

  factory _$FeedKeyInput([void Function(FeedKeyInputBuilder)? updates]) =>
      (FeedKeyInputBuilder()..update(updates))._build();

  _$FeedKeyInput._(
      {required this.name,
      required this.prefixes,
      required this.restrictions,
      required this.expiresAt,
      this.privateAccess})
      : super._();
  @override
  FeedKeyInput rebuild(void Function(FeedKeyInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedKeyInputBuilder toBuilder() => FeedKeyInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedKeyInput &&
        name == other.name &&
        prefixes == other.prefixes &&
        restrictions == other.restrictions &&
        expiresAt == other.expiresAt &&
        privateAccess == other.privateAccess;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, prefixes.hashCode);
    _$hash = $jc(_$hash, restrictions.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, privateAccess.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeedKeyInput')
          ..add('name', name)
          ..add('prefixes', prefixes)
          ..add('restrictions', restrictions)
          ..add('expiresAt', expiresAt)
          ..add('privateAccess', privateAccess))
        .toString();
  }
}

class FeedKeyInputBuilder
    implements Builder<FeedKeyInput, FeedKeyInputBuilder> {
  _$FeedKeyInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _prefixes;
  ListBuilder<String> get prefixes =>
      _$this._prefixes ??= ListBuilder<String>();
  set prefixes(ListBuilder<String>? prefixes) => _$this._prefixes = prefixes;

  ReadRestrictionBuilder? _restrictions;
  ReadRestrictionBuilder get restrictions =>
      _$this._restrictions ??= ReadRestrictionBuilder();
  set restrictions(ReadRestrictionBuilder? restrictions) =>
      _$this._restrictions = restrictions;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  bool? _privateAccess;
  bool? get privateAccess => _$this._privateAccess;
  set privateAccess(bool? privateAccess) =>
      _$this._privateAccess = privateAccess;

  FeedKeyInputBuilder() {
    FeedKeyInput._defaults(this);
  }

  FeedKeyInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _prefixes = $v.prefixes.toBuilder();
      _restrictions = $v.restrictions.toBuilder();
      _expiresAt = $v.expiresAt;
      _privateAccess = $v.privateAccess;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedKeyInput other) {
    _$v = other as _$FeedKeyInput;
  }

  @override
  void update(void Function(FeedKeyInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeedKeyInput build() => _build();

  _$FeedKeyInput _build() {
    _$FeedKeyInput _$result;
    try {
      _$result = _$v ??
          _$FeedKeyInput._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'FeedKeyInput', 'name'),
            prefixes: prefixes.build(),
            restrictions: restrictions.build(),
            expiresAt: BuiltValueNullFieldError.checkNotNull(
                expiresAt, r'FeedKeyInput', 'expiresAt'),
            privateAccess: privateAccess,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prefixes';
        prefixes.build();
        _$failedField = 'restrictions';
        restrictions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FeedKeyInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

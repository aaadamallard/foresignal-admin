// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_token_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegistrationTokenInput extends RegistrationTokenInput {
  @override
  final String name;
  @override
  final DateTime? expiresAt;
  @override
  final int? maxUses;
  @override
  final String? sourceIdPrefix;

  factory _$RegistrationTokenInput([
    void Function(RegistrationTokenInputBuilder)? updates,
  ]) => (RegistrationTokenInputBuilder()..update(updates))._build();

  _$RegistrationTokenInput._({
    required this.name,
    this.expiresAt,
    this.maxUses,
    this.sourceIdPrefix,
  }) : super._();
  @override
  RegistrationTokenInput rebuild(
    void Function(RegistrationTokenInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RegistrationTokenInputBuilder toBuilder() =>
      RegistrationTokenInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationTokenInput &&
        name == other.name &&
        expiresAt == other.expiresAt &&
        maxUses == other.maxUses &&
        sourceIdPrefix == other.sourceIdPrefix;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, maxUses.hashCode);
    _$hash = $jc(_$hash, sourceIdPrefix.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegistrationTokenInput')
          ..add('name', name)
          ..add('expiresAt', expiresAt)
          ..add('maxUses', maxUses)
          ..add('sourceIdPrefix', sourceIdPrefix))
        .toString();
  }
}

class RegistrationTokenInputBuilder
    implements Builder<RegistrationTokenInput, RegistrationTokenInputBuilder> {
  _$RegistrationTokenInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  int? _maxUses;
  int? get maxUses => _$this._maxUses;
  set maxUses(int? maxUses) => _$this._maxUses = maxUses;

  String? _sourceIdPrefix;
  String? get sourceIdPrefix => _$this._sourceIdPrefix;
  set sourceIdPrefix(String? sourceIdPrefix) =>
      _$this._sourceIdPrefix = sourceIdPrefix;

  RegistrationTokenInputBuilder() {
    RegistrationTokenInput._defaults(this);
  }

  RegistrationTokenInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _expiresAt = $v.expiresAt;
      _maxUses = $v.maxUses;
      _sourceIdPrefix = $v.sourceIdPrefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationTokenInput other) {
    _$v = other as _$RegistrationTokenInput;
  }

  @override
  void update(void Function(RegistrationTokenInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegistrationTokenInput build() => _build();

  _$RegistrationTokenInput _build() {
    final _$result =
        _$v ??
        _$RegistrationTokenInput._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'RegistrationTokenInput',
            'name',
          ),
          expiresAt: expiresAt,
          maxUses: maxUses,
          sourceIdPrefix: sourceIdPrefix,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

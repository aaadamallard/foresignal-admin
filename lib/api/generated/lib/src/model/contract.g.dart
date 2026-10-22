// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Contract extends Contract {
  @override
  final String contractVersion;
  @override
  final BuiltList<String> objectTypes;
  @override
  final BuiltList<String> relationTypes;
  @override
  final int contextSchemaVersion;
  @override
  final int deepLinkVersion;

  factory _$Contract([void Function(ContractBuilder)? updates]) =>
      (ContractBuilder()..update(updates))._build();

  _$Contract._(
      {required this.contractVersion,
      required this.objectTypes,
      required this.relationTypes,
      required this.contextSchemaVersion,
      required this.deepLinkVersion})
      : super._();
  @override
  Contract rebuild(void Function(ContractBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContractBuilder toBuilder() => ContractBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Contract &&
        contractVersion == other.contractVersion &&
        objectTypes == other.objectTypes &&
        relationTypes == other.relationTypes &&
        contextSchemaVersion == other.contextSchemaVersion &&
        deepLinkVersion == other.deepLinkVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contractVersion.hashCode);
    _$hash = $jc(_$hash, objectTypes.hashCode);
    _$hash = $jc(_$hash, relationTypes.hashCode);
    _$hash = $jc(_$hash, contextSchemaVersion.hashCode);
    _$hash = $jc(_$hash, deepLinkVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Contract')
          ..add('contractVersion', contractVersion)
          ..add('objectTypes', objectTypes)
          ..add('relationTypes', relationTypes)
          ..add('contextSchemaVersion', contextSchemaVersion)
          ..add('deepLinkVersion', deepLinkVersion))
        .toString();
  }
}

class ContractBuilder implements Builder<Contract, ContractBuilder> {
  _$Contract? _$v;

  String? _contractVersion;
  String? get contractVersion => _$this._contractVersion;
  set contractVersion(String? contractVersion) =>
      _$this._contractVersion = contractVersion;

  ListBuilder<String>? _objectTypes;
  ListBuilder<String> get objectTypes =>
      _$this._objectTypes ??= ListBuilder<String>();
  set objectTypes(ListBuilder<String>? objectTypes) =>
      _$this._objectTypes = objectTypes;

  ListBuilder<String>? _relationTypes;
  ListBuilder<String> get relationTypes =>
      _$this._relationTypes ??= ListBuilder<String>();
  set relationTypes(ListBuilder<String>? relationTypes) =>
      _$this._relationTypes = relationTypes;

  int? _contextSchemaVersion;
  int? get contextSchemaVersion => _$this._contextSchemaVersion;
  set contextSchemaVersion(int? contextSchemaVersion) =>
      _$this._contextSchemaVersion = contextSchemaVersion;

  int? _deepLinkVersion;
  int? get deepLinkVersion => _$this._deepLinkVersion;
  set deepLinkVersion(int? deepLinkVersion) =>
      _$this._deepLinkVersion = deepLinkVersion;

  ContractBuilder() {
    Contract._defaults(this);
  }

  ContractBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contractVersion = $v.contractVersion;
      _objectTypes = $v.objectTypes.toBuilder();
      _relationTypes = $v.relationTypes.toBuilder();
      _contextSchemaVersion = $v.contextSchemaVersion;
      _deepLinkVersion = $v.deepLinkVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Contract other) {
    _$v = other as _$Contract;
  }

  @override
  void update(void Function(ContractBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Contract build() => _build();

  _$Contract _build() {
    _$Contract _$result;
    try {
      _$result = _$v ??
          _$Contract._(
            contractVersion: BuiltValueNullFieldError.checkNotNull(
                contractVersion, r'Contract', 'contractVersion'),
            objectTypes: objectTypes.build(),
            relationTypes: relationTypes.build(),
            contextSchemaVersion: BuiltValueNullFieldError.checkNotNull(
                contextSchemaVersion, r'Contract', 'contextSchemaVersion'),
            deepLinkVersion: BuiltValueNullFieldError.checkNotNull(
                deepLinkVersion, r'Contract', 'deepLinkVersion'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'objectTypes';
        objectTypes.build();
        _$failedField = 'relationTypes';
        relationTypes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Contract', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

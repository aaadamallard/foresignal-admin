// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_device_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngestDeviceInput extends IngestDeviceInput {
  @override
  final String externalId;
  @override
  final String name;

  factory _$IngestDeviceInput([
    void Function(IngestDeviceInputBuilder)? updates,
  ]) => (IngestDeviceInputBuilder()..update(updates))._build();

  _$IngestDeviceInput._({required this.externalId, required this.name})
    : super._();
  @override
  IngestDeviceInput rebuild(void Function(IngestDeviceInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngestDeviceInputBuilder toBuilder() =>
      IngestDeviceInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestDeviceInput &&
        externalId == other.externalId &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngestDeviceInput')
          ..add('externalId', externalId)
          ..add('name', name))
        .toString();
  }
}

class IngestDeviceInputBuilder
    implements Builder<IngestDeviceInput, IngestDeviceInputBuilder> {
  _$IngestDeviceInput? _$v;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  IngestDeviceInputBuilder() {
    IngestDeviceInput._defaults(this);
  }

  IngestDeviceInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _externalId = $v.externalId;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestDeviceInput other) {
    _$v = other as _$IngestDeviceInput;
  }

  @override
  void update(void Function(IngestDeviceInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestDeviceInput build() => _build();

  _$IngestDeviceInput _build() {
    final _$result =
        _$v ??
        _$IngestDeviceInput._(
          externalId: BuiltValueNullFieldError.checkNotNull(
            externalId,
            r'IngestDeviceInput',
            'externalId',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'IngestDeviceInput',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_recipient.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PackageRecipient extends PackageRecipient {
  @override
  final String instanceId;
  @override
  final BuiltList<String> principals;

  factory _$PackageRecipient([
    void Function(PackageRecipientBuilder)? updates,
  ]) => (PackageRecipientBuilder()..update(updates))._build();

  _$PackageRecipient._({required this.instanceId, required this.principals})
    : super._();
  @override
  PackageRecipient rebuild(void Function(PackageRecipientBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PackageRecipientBuilder toBuilder() =>
      PackageRecipientBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PackageRecipient &&
        instanceId == other.instanceId &&
        principals == other.principals;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, principals.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PackageRecipient')
          ..add('instanceId', instanceId)
          ..add('principals', principals))
        .toString();
  }
}

class PackageRecipientBuilder
    implements Builder<PackageRecipient, PackageRecipientBuilder> {
  _$PackageRecipient? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  ListBuilder<String>? _principals;
  ListBuilder<String> get principals =>
      _$this._principals ??= ListBuilder<String>();
  set principals(ListBuilder<String>? principals) =>
      _$this._principals = principals;

  PackageRecipientBuilder() {
    PackageRecipient._defaults(this);
  }

  PackageRecipientBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _principals = $v.principals.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PackageRecipient other) {
    _$v = other as _$PackageRecipient;
  }

  @override
  void update(void Function(PackageRecipientBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PackageRecipient build() => _build();

  _$PackageRecipient _build() {
    _$PackageRecipient _$result;
    try {
      _$result =
          _$v ??
          _$PackageRecipient._(
            instanceId: BuiltValueNullFieldError.checkNotNull(
              instanceId,
              r'PackageRecipient',
              'instanceId',
            ),
            principals: principals.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'principals';
        principals.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PackageRecipient',
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

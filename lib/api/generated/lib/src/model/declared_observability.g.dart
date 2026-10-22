// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'declared_observability.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeclaredObservability extends DeclaredObservability {
  @override
  final BuiltMap<String, DeclaredObservabilityKindsValue> kinds;

  factory _$DeclaredObservability([
    void Function(DeclaredObservabilityBuilder)? updates,
  ]) => (DeclaredObservabilityBuilder()..update(updates))._build();

  _$DeclaredObservability._({required this.kinds}) : super._();
  @override
  DeclaredObservability rebuild(
    void Function(DeclaredObservabilityBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeclaredObservabilityBuilder toBuilder() =>
      DeclaredObservabilityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeclaredObservability && kinds == other.kinds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'DeclaredObservability',
    )..add('kinds', kinds)).toString();
  }
}

class DeclaredObservabilityBuilder
    implements Builder<DeclaredObservability, DeclaredObservabilityBuilder> {
  _$DeclaredObservability? _$v;

  MapBuilder<String, DeclaredObservabilityKindsValue>? _kinds;
  MapBuilder<String, DeclaredObservabilityKindsValue> get kinds =>
      _$this._kinds ??= MapBuilder<String, DeclaredObservabilityKindsValue>();
  set kinds(MapBuilder<String, DeclaredObservabilityKindsValue>? kinds) =>
      _$this._kinds = kinds;

  DeclaredObservabilityBuilder() {
    DeclaredObservability._defaults(this);
  }

  DeclaredObservabilityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kinds = $v.kinds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeclaredObservability other) {
    _$v = other as _$DeclaredObservability;
  }

  @override
  void update(void Function(DeclaredObservabilityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeclaredObservability build() => _build();

  _$DeclaredObservability _build() {
    _$DeclaredObservability _$result;
    try {
      _$result = _$v ?? _$DeclaredObservability._(kinds: kinds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'kinds';
        kinds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DeclaredObservability',
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

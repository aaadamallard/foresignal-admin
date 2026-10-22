// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_resolve_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectResolveRequest extends ObjectResolveRequest {
  @override
  final BuiltList<String> refs;
  @override
  final DateTime? asOf;

  factory _$ObjectResolveRequest([
    void Function(ObjectResolveRequestBuilder)? updates,
  ]) => (ObjectResolveRequestBuilder()..update(updates))._build();

  _$ObjectResolveRequest._({required this.refs, this.asOf}) : super._();
  @override
  ObjectResolveRequest rebuild(
    void Function(ObjectResolveRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ObjectResolveRequestBuilder toBuilder() =>
      ObjectResolveRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectResolveRequest &&
        refs == other.refs &&
        asOf == other.asOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refs.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectResolveRequest')
          ..add('refs', refs)
          ..add('asOf', asOf))
        .toString();
  }
}

class ObjectResolveRequestBuilder
    implements Builder<ObjectResolveRequest, ObjectResolveRequestBuilder> {
  _$ObjectResolveRequest? _$v;

  ListBuilder<String>? _refs;
  ListBuilder<String> get refs => _$this._refs ??= ListBuilder<String>();
  set refs(ListBuilder<String>? refs) => _$this._refs = refs;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  ObjectResolveRequestBuilder() {
    ObjectResolveRequest._defaults(this);
  }

  ObjectResolveRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refs = $v.refs.toBuilder();
      _asOf = $v.asOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectResolveRequest other) {
    _$v = other as _$ObjectResolveRequest;
  }

  @override
  void update(void Function(ObjectResolveRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectResolveRequest build() => _build();

  _$ObjectResolveRequest _build() {
    _$ObjectResolveRequest _$result;
    try {
      _$result =
          _$v ?? _$ObjectResolveRequest._(refs: refs.build(), asOf: asOf);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refs';
        refs.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ObjectResolveRequest',
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

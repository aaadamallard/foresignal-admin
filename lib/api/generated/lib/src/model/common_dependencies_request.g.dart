// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_dependencies_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CommonDependenciesRequest extends CommonDependenciesRequest {
  @override
  final BuiltList<String> refs;
  @override
  final DateTime? asOf;

  factory _$CommonDependenciesRequest(
          [void Function(CommonDependenciesRequestBuilder)? updates]) =>
      (CommonDependenciesRequestBuilder()..update(updates))._build();

  _$CommonDependenciesRequest._({required this.refs, this.asOf}) : super._();
  @override
  CommonDependenciesRequest rebuild(
          void Function(CommonDependenciesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommonDependenciesRequestBuilder toBuilder() =>
      CommonDependenciesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommonDependenciesRequest &&
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
    return (newBuiltValueToStringHelper(r'CommonDependenciesRequest')
          ..add('refs', refs)
          ..add('asOf', asOf))
        .toString();
  }
}

class CommonDependenciesRequestBuilder
    implements
        Builder<CommonDependenciesRequest, CommonDependenciesRequestBuilder> {
  _$CommonDependenciesRequest? _$v;

  ListBuilder<String>? _refs;
  ListBuilder<String> get refs => _$this._refs ??= ListBuilder<String>();
  set refs(ListBuilder<String>? refs) => _$this._refs = refs;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  CommonDependenciesRequestBuilder() {
    CommonDependenciesRequest._defaults(this);
  }

  CommonDependenciesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refs = $v.refs.toBuilder();
      _asOf = $v.asOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommonDependenciesRequest other) {
    _$v = other as _$CommonDependenciesRequest;
  }

  @override
  void update(void Function(CommonDependenciesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommonDependenciesRequest build() => _build();

  _$CommonDependenciesRequest _build() {
    _$CommonDependenciesRequest _$result;
    try {
      _$result = _$v ??
          _$CommonDependenciesRequest._(
            refs: refs.build(),
            asOf: asOf,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refs';
        refs.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CommonDependenciesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

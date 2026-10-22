// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_intel_calibration200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIntelCalibration200Response extends GetIntelCalibration200Response {
  @override
  final BuiltList<IntelCalibration> scopes;

  factory _$GetIntelCalibration200Response(
          [void Function(GetIntelCalibration200ResponseBuilder)? updates]) =>
      (GetIntelCalibration200ResponseBuilder()..update(updates))._build();

  _$GetIntelCalibration200Response._({required this.scopes}) : super._();
  @override
  GetIntelCalibration200Response rebuild(
          void Function(GetIntelCalibration200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIntelCalibration200ResponseBuilder toBuilder() =>
      GetIntelCalibration200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIntelCalibration200Response && scopes == other.scopes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, scopes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetIntelCalibration200Response')
          ..add('scopes', scopes))
        .toString();
  }
}

class GetIntelCalibration200ResponseBuilder
    implements
        Builder<GetIntelCalibration200Response,
            GetIntelCalibration200ResponseBuilder> {
  _$GetIntelCalibration200Response? _$v;

  ListBuilder<IntelCalibration>? _scopes;
  ListBuilder<IntelCalibration> get scopes =>
      _$this._scopes ??= ListBuilder<IntelCalibration>();
  set scopes(ListBuilder<IntelCalibration>? scopes) => _$this._scopes = scopes;

  GetIntelCalibration200ResponseBuilder() {
    GetIntelCalibration200Response._defaults(this);
  }

  GetIntelCalibration200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scopes = $v.scopes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIntelCalibration200Response other) {
    _$v = other as _$GetIntelCalibration200Response;
  }

  @override
  void update(void Function(GetIntelCalibration200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIntelCalibration200Response build() => _build();

  _$GetIntelCalibration200Response _build() {
    _$GetIntelCalibration200Response _$result;
    try {
      _$result = _$v ??
          _$GetIntelCalibration200Response._(
            scopes: scopes.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scopes';
        scopes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetIntelCalibration200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

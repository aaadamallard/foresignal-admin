// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_token_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UpdateTokenRequestLicencePolicyEnum
_$updateTokenRequestLicencePolicyEnum_noNc =
    const UpdateTokenRequestLicencePolicyEnum._('noNc');
const UpdateTokenRequestLicencePolicyEnum
_$updateTokenRequestLicencePolicyEnum_noSa =
    const UpdateTokenRequestLicencePolicyEnum._('noSa');
const UpdateTokenRequestLicencePolicyEnum
_$updateTokenRequestLicencePolicyEnum_redistributable =
    const UpdateTokenRequestLicencePolicyEnum._('redistributable');
const UpdateTokenRequestLicencePolicyEnum
_$updateTokenRequestLicencePolicyEnum_unknownDefaultOpenApi =
    const UpdateTokenRequestLicencePolicyEnum._('unknownDefaultOpenApi');

UpdateTokenRequestLicencePolicyEnum
_$updateTokenRequestLicencePolicyEnumValueOf(String name) {
  switch (name) {
    case 'noNc':
      return _$updateTokenRequestLicencePolicyEnum_noNc;
    case 'noSa':
      return _$updateTokenRequestLicencePolicyEnum_noSa;
    case 'redistributable':
      return _$updateTokenRequestLicencePolicyEnum_redistributable;
    case 'unknownDefaultOpenApi':
      return _$updateTokenRequestLicencePolicyEnum_unknownDefaultOpenApi;
    default:
      return _$updateTokenRequestLicencePolicyEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<UpdateTokenRequestLicencePolicyEnum>
_$updateTokenRequestLicencePolicyEnumValues =
    BuiltSet<UpdateTokenRequestLicencePolicyEnum>(
      const <UpdateTokenRequestLicencePolicyEnum>[
        _$updateTokenRequestLicencePolicyEnum_noNc,
        _$updateTokenRequestLicencePolicyEnum_noSa,
        _$updateTokenRequestLicencePolicyEnum_redistributable,
        _$updateTokenRequestLicencePolicyEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<UpdateTokenRequestLicencePolicyEnum>
_$updateTokenRequestLicencePolicyEnumSerializer =
    _$UpdateTokenRequestLicencePolicyEnumSerializer();

class _$UpdateTokenRequestLicencePolicyEnumSerializer
    implements PrimitiveSerializer<UpdateTokenRequestLicencePolicyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'noNc': 'no-nc',
    'noSa': 'no-sa',
    'redistributable': 'redistributable',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'no-nc': 'noNc',
    'no-sa': 'noSa',
    'redistributable': 'redistributable',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    UpdateTokenRequestLicencePolicyEnum,
  ];
  @override
  final String wireName = 'UpdateTokenRequestLicencePolicyEnum';

  @override
  Object serialize(
    Serializers serializers,
    UpdateTokenRequestLicencePolicyEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  UpdateTokenRequestLicencePolicyEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => UpdateTokenRequestLicencePolicyEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$UpdateTokenRequest extends UpdateTokenRequest {
  @override
  final BuiltList<UpdateTokenRequestLicencePolicyEnum>? licencePolicy;

  factory _$UpdateTokenRequest([
    void Function(UpdateTokenRequestBuilder)? updates,
  ]) => (UpdateTokenRequestBuilder()..update(updates))._build();

  _$UpdateTokenRequest._({this.licencePolicy}) : super._();
  @override
  UpdateTokenRequest rebuild(
    void Function(UpdateTokenRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateTokenRequestBuilder toBuilder() =>
      UpdateTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTokenRequest && licencePolicy == other.licencePolicy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, licencePolicy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'UpdateTokenRequest',
    )..add('licencePolicy', licencePolicy)).toString();
  }
}

class UpdateTokenRequestBuilder
    implements Builder<UpdateTokenRequest, UpdateTokenRequestBuilder> {
  _$UpdateTokenRequest? _$v;

  ListBuilder<UpdateTokenRequestLicencePolicyEnum>? _licencePolicy;
  ListBuilder<UpdateTokenRequestLicencePolicyEnum> get licencePolicy =>
      _$this._licencePolicy ??=
          ListBuilder<UpdateTokenRequestLicencePolicyEnum>();
  set licencePolicy(
    ListBuilder<UpdateTokenRequestLicencePolicyEnum>? licencePolicy,
  ) => _$this._licencePolicy = licencePolicy;

  UpdateTokenRequestBuilder() {
    UpdateTokenRequest._defaults(this);
  }

  UpdateTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _licencePolicy = $v.licencePolicy?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTokenRequest other) {
    _$v = other as _$UpdateTokenRequest;
  }

  @override
  void update(void Function(UpdateTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTokenRequest build() => _build();

  _$UpdateTokenRequest _build() {
    _$UpdateTokenRequest _$result;
    try {
      _$result =
          _$v ?? _$UpdateTokenRequest._(licencePolicy: _licencePolicy?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'licencePolicy';
        _licencePolicy?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UpdateTokenRequest',
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

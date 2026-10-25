// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'licence_terms.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LicenceTermsCommercialUseEnum _$licenceTermsCommercialUseEnum_ALLOWED =
    const LicenceTermsCommercialUseEnum._('ALLOWED');
const LicenceTermsCommercialUseEnum _$licenceTermsCommercialUseEnum_FORBIDDEN =
    const LicenceTermsCommercialUseEnum._('FORBIDDEN');
const LicenceTermsCommercialUseEnum _$licenceTermsCommercialUseEnum_UNKNOWN =
    const LicenceTermsCommercialUseEnum._('UNKNOWN');
const LicenceTermsCommercialUseEnum
_$licenceTermsCommercialUseEnum_unknownDefaultOpenApi =
    const LicenceTermsCommercialUseEnum._('unknownDefaultOpenApi');

LicenceTermsCommercialUseEnum _$licenceTermsCommercialUseEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ALLOWED':
      return _$licenceTermsCommercialUseEnum_ALLOWED;
    case 'FORBIDDEN':
      return _$licenceTermsCommercialUseEnum_FORBIDDEN;
    case 'UNKNOWN':
      return _$licenceTermsCommercialUseEnum_UNKNOWN;
    case 'unknownDefaultOpenApi':
      return _$licenceTermsCommercialUseEnum_unknownDefaultOpenApi;
    default:
      return _$licenceTermsCommercialUseEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<LicenceTermsCommercialUseEnum>
_$licenceTermsCommercialUseEnumValues = BuiltSet<LicenceTermsCommercialUseEnum>(
  const <LicenceTermsCommercialUseEnum>[
    _$licenceTermsCommercialUseEnum_ALLOWED,
    _$licenceTermsCommercialUseEnum_FORBIDDEN,
    _$licenceTermsCommercialUseEnum_UNKNOWN,
    _$licenceTermsCommercialUseEnum_unknownDefaultOpenApi,
  ],
);

const LicenceTermsRedistributionEnum _$licenceTermsRedistributionEnum_ALLOWED =
    const LicenceTermsRedistributionEnum._('ALLOWED');
const LicenceTermsRedistributionEnum
_$licenceTermsRedistributionEnum_LOCAL_ONLY =
    const LicenceTermsRedistributionEnum._('LOCAL_ONLY');
const LicenceTermsRedistributionEnum
_$licenceTermsRedistributionEnum_FORBIDDEN =
    const LicenceTermsRedistributionEnum._('FORBIDDEN');
const LicenceTermsRedistributionEnum _$licenceTermsRedistributionEnum_UNKNOWN =
    const LicenceTermsRedistributionEnum._('UNKNOWN');
const LicenceTermsRedistributionEnum
_$licenceTermsRedistributionEnum_unknownDefaultOpenApi =
    const LicenceTermsRedistributionEnum._('unknownDefaultOpenApi');

LicenceTermsRedistributionEnum _$licenceTermsRedistributionEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ALLOWED':
      return _$licenceTermsRedistributionEnum_ALLOWED;
    case 'LOCAL_ONLY':
      return _$licenceTermsRedistributionEnum_LOCAL_ONLY;
    case 'FORBIDDEN':
      return _$licenceTermsRedistributionEnum_FORBIDDEN;
    case 'UNKNOWN':
      return _$licenceTermsRedistributionEnum_UNKNOWN;
    case 'unknownDefaultOpenApi':
      return _$licenceTermsRedistributionEnum_unknownDefaultOpenApi;
    default:
      return _$licenceTermsRedistributionEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<LicenceTermsRedistributionEnum>
_$licenceTermsRedistributionEnumValues =
    BuiltSet<LicenceTermsRedistributionEnum>(
      const <LicenceTermsRedistributionEnum>[
        _$licenceTermsRedistributionEnum_ALLOWED,
        _$licenceTermsRedistributionEnum_LOCAL_ONLY,
        _$licenceTermsRedistributionEnum_FORBIDDEN,
        _$licenceTermsRedistributionEnum_UNKNOWN,
        _$licenceTermsRedistributionEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<LicenceTermsCommercialUseEnum>
_$licenceTermsCommercialUseEnumSerializer =
    _$LicenceTermsCommercialUseEnumSerializer();
Serializer<LicenceTermsRedistributionEnum>
_$licenceTermsRedistributionEnumSerializer =
    _$LicenceTermsRedistributionEnumSerializer();

class _$LicenceTermsCommercialUseEnumSerializer
    implements PrimitiveSerializer<LicenceTermsCommercialUseEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ALLOWED': 'ALLOWED',
    'FORBIDDEN': 'FORBIDDEN',
    'UNKNOWN': 'UNKNOWN',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ALLOWED': 'ALLOWED',
    'FORBIDDEN': 'FORBIDDEN',
    'UNKNOWN': 'UNKNOWN',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[LicenceTermsCommercialUseEnum];
  @override
  final String wireName = 'LicenceTermsCommercialUseEnum';

  @override
  Object serialize(
    Serializers serializers,
    LicenceTermsCommercialUseEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LicenceTermsCommercialUseEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LicenceTermsCommercialUseEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$LicenceTermsRedistributionEnumSerializer
    implements PrimitiveSerializer<LicenceTermsRedistributionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ALLOWED': 'ALLOWED',
    'LOCAL_ONLY': 'LOCAL_ONLY',
    'FORBIDDEN': 'FORBIDDEN',
    'UNKNOWN': 'UNKNOWN',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ALLOWED': 'ALLOWED',
    'LOCAL_ONLY': 'LOCAL_ONLY',
    'FORBIDDEN': 'FORBIDDEN',
    'UNKNOWN': 'UNKNOWN',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[LicenceTermsRedistributionEnum];
  @override
  final String wireName = 'LicenceTermsRedistributionEnum';

  @override
  Object serialize(
    Serializers serializers,
    LicenceTermsRedistributionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LicenceTermsRedistributionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LicenceTermsRedistributionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$LicenceTerms extends LicenceTerms {
  @override
  final String id;
  @override
  final String name;
  @override
  final LicenceTermsCommercialUseEnum commercialUse;
  @override
  final bool shareAlike;
  @override
  final bool attributionRequired;
  @override
  final LicenceTermsRedistributionEnum redistribution;
  @override
  final String? attributionText;
  @override
  final String? termsUrl;

  factory _$LicenceTerms([void Function(LicenceTermsBuilder)? updates]) =>
      (LicenceTermsBuilder()..update(updates))._build();

  _$LicenceTerms._({
    required this.id,
    required this.name,
    required this.commercialUse,
    required this.shareAlike,
    required this.attributionRequired,
    required this.redistribution,
    this.attributionText,
    this.termsUrl,
  }) : super._();
  @override
  LicenceTerms rebuild(void Function(LicenceTermsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LicenceTermsBuilder toBuilder() => LicenceTermsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LicenceTerms &&
        id == other.id &&
        name == other.name &&
        commercialUse == other.commercialUse &&
        shareAlike == other.shareAlike &&
        attributionRequired == other.attributionRequired &&
        redistribution == other.redistribution &&
        attributionText == other.attributionText &&
        termsUrl == other.termsUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, commercialUse.hashCode);
    _$hash = $jc(_$hash, shareAlike.hashCode);
    _$hash = $jc(_$hash, attributionRequired.hashCode);
    _$hash = $jc(_$hash, redistribution.hashCode);
    _$hash = $jc(_$hash, attributionText.hashCode);
    _$hash = $jc(_$hash, termsUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LicenceTerms')
          ..add('id', id)
          ..add('name', name)
          ..add('commercialUse', commercialUse)
          ..add('shareAlike', shareAlike)
          ..add('attributionRequired', attributionRequired)
          ..add('redistribution', redistribution)
          ..add('attributionText', attributionText)
          ..add('termsUrl', termsUrl))
        .toString();
  }
}

class LicenceTermsBuilder
    implements Builder<LicenceTerms, LicenceTermsBuilder> {
  _$LicenceTerms? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  LicenceTermsCommercialUseEnum? _commercialUse;
  LicenceTermsCommercialUseEnum? get commercialUse => _$this._commercialUse;
  set commercialUse(LicenceTermsCommercialUseEnum? commercialUse) =>
      _$this._commercialUse = commercialUse;

  bool? _shareAlike;
  bool? get shareAlike => _$this._shareAlike;
  set shareAlike(bool? shareAlike) => _$this._shareAlike = shareAlike;

  bool? _attributionRequired;
  bool? get attributionRequired => _$this._attributionRequired;
  set attributionRequired(bool? attributionRequired) =>
      _$this._attributionRequired = attributionRequired;

  LicenceTermsRedistributionEnum? _redistribution;
  LicenceTermsRedistributionEnum? get redistribution => _$this._redistribution;
  set redistribution(LicenceTermsRedistributionEnum? redistribution) =>
      _$this._redistribution = redistribution;

  String? _attributionText;
  String? get attributionText => _$this._attributionText;
  set attributionText(String? attributionText) =>
      _$this._attributionText = attributionText;

  String? _termsUrl;
  String? get termsUrl => _$this._termsUrl;
  set termsUrl(String? termsUrl) => _$this._termsUrl = termsUrl;

  LicenceTermsBuilder() {
    LicenceTerms._defaults(this);
  }

  LicenceTermsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _commercialUse = $v.commercialUse;
      _shareAlike = $v.shareAlike;
      _attributionRequired = $v.attributionRequired;
      _redistribution = $v.redistribution;
      _attributionText = $v.attributionText;
      _termsUrl = $v.termsUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LicenceTerms other) {
    _$v = other as _$LicenceTerms;
  }

  @override
  void update(void Function(LicenceTermsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LicenceTerms build() => _build();

  _$LicenceTerms _build() {
    final _$result =
        _$v ??
        _$LicenceTerms._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'LicenceTerms', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'LicenceTerms',
            'name',
          ),
          commercialUse: BuiltValueNullFieldError.checkNotNull(
            commercialUse,
            r'LicenceTerms',
            'commercialUse',
          ),
          shareAlike: BuiltValueNullFieldError.checkNotNull(
            shareAlike,
            r'LicenceTerms',
            'shareAlike',
          ),
          attributionRequired: BuiltValueNullFieldError.checkNotNull(
            attributionRequired,
            r'LicenceTerms',
            'attributionRequired',
          ),
          redistribution: BuiltValueNullFieldError.checkNotNull(
            redistribution,
            r'LicenceTerms',
            'redistribution',
          ),
          attributionText: attributionText,
          termsUrl: termsUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emwin_warning_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EmwinWarningPayloadAuthoritativeSourceEnum
_$emwinWarningPayloadAuthoritativeSourceEnum_nwsAlerts =
    const EmwinWarningPayloadAuthoritativeSourceEnum._('nwsAlerts');

EmwinWarningPayloadAuthoritativeSourceEnum
_$emwinWarningPayloadAuthoritativeSourceEnumValueOf(String name) {
  switch (name) {
    case 'nwsAlerts':
      return _$emwinWarningPayloadAuthoritativeSourceEnum_nwsAlerts;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EmwinWarningPayloadAuthoritativeSourceEnum>
_$emwinWarningPayloadAuthoritativeSourceEnumValues =
    BuiltSet<EmwinWarningPayloadAuthoritativeSourceEnum>(
      const <EmwinWarningPayloadAuthoritativeSourceEnum>[
        _$emwinWarningPayloadAuthoritativeSourceEnum_nwsAlerts,
      ],
    );

const EmwinWarningPayloadReceivedViaEnum
_$emwinWarningPayloadReceivedViaEnum_receivedViaGOESHRITEMWIN =
    const EmwinWarningPayloadReceivedViaEnum._('receivedViaGOESHRITEMWIN');

EmwinWarningPayloadReceivedViaEnum _$emwinWarningPayloadReceivedViaEnumValueOf(
  String name,
) {
  switch (name) {
    case 'receivedViaGOESHRITEMWIN':
      return _$emwinWarningPayloadReceivedViaEnum_receivedViaGOESHRITEMWIN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EmwinWarningPayloadReceivedViaEnum>
_$emwinWarningPayloadReceivedViaEnumValues =
    BuiltSet<EmwinWarningPayloadReceivedViaEnum>(
      const <EmwinWarningPayloadReceivedViaEnum>[
        _$emwinWarningPayloadReceivedViaEnum_receivedViaGOESHRITEMWIN,
      ],
    );

Serializer<EmwinWarningPayloadAuthoritativeSourceEnum>
_$emwinWarningPayloadAuthoritativeSourceEnumSerializer =
    _$EmwinWarningPayloadAuthoritativeSourceEnumSerializer();
Serializer<EmwinWarningPayloadReceivedViaEnum>
_$emwinWarningPayloadReceivedViaEnumSerializer =
    _$EmwinWarningPayloadReceivedViaEnumSerializer();

class _$EmwinWarningPayloadAuthoritativeSourceEnumSerializer
    implements PrimitiveSerializer<EmwinWarningPayloadAuthoritativeSourceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'nwsAlerts': 'nws-alerts',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'nws-alerts': 'nwsAlerts',
  };

  @override
  final Iterable<Type> types = const <Type>[
    EmwinWarningPayloadAuthoritativeSourceEnum,
  ];
  @override
  final String wireName = 'EmwinWarningPayloadAuthoritativeSourceEnum';

  @override
  Object serialize(
    Serializers serializers,
    EmwinWarningPayloadAuthoritativeSourceEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EmwinWarningPayloadAuthoritativeSourceEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EmwinWarningPayloadAuthoritativeSourceEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EmwinWarningPayloadReceivedViaEnumSerializer
    implements PrimitiveSerializer<EmwinWarningPayloadReceivedViaEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'receivedViaGOESHRITEMWIN': 'Received via GOES HRIT EMWIN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Received via GOES HRIT EMWIN': 'receivedViaGOESHRITEMWIN',
  };

  @override
  final Iterable<Type> types = const <Type>[EmwinWarningPayloadReceivedViaEnum];
  @override
  final String wireName = 'EmwinWarningPayloadReceivedViaEnum';

  @override
  Object serialize(
    Serializers serializers,
    EmwinWarningPayloadReceivedViaEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EmwinWarningPayloadReceivedViaEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EmwinWarningPayloadReceivedViaEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EmwinWarningPayload extends EmwinWarningPayload {
  @override
  final String action;
  @override
  final String phenomena;
  @override
  final String significance;
  @override
  final String office;
  @override
  final int etn;
  @override
  final DateTime validFrom;
  @override
  final DateTime validUntil;
  @override
  final String? headline;
  @override
  final bool fallback;
  @override
  final EmwinWarningPayloadAuthoritativeSourceEnum authoritativeSource;
  @override
  final EmwinWarningPayloadDuplicateOf? duplicateOf;
  @override
  final EmwinWarningPayloadReceivedViaEnum? receivedVia;

  factory _$EmwinWarningPayload([
    void Function(EmwinWarningPayloadBuilder)? updates,
  ]) => (EmwinWarningPayloadBuilder()..update(updates))._build();

  _$EmwinWarningPayload._({
    required this.action,
    required this.phenomena,
    required this.significance,
    required this.office,
    required this.etn,
    required this.validFrom,
    required this.validUntil,
    this.headline,
    required this.fallback,
    required this.authoritativeSource,
    this.duplicateOf,
    this.receivedVia,
  }) : super._();
  @override
  EmwinWarningPayload rebuild(
    void Function(EmwinWarningPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EmwinWarningPayloadBuilder toBuilder() =>
      EmwinWarningPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmwinWarningPayload &&
        action == other.action &&
        phenomena == other.phenomena &&
        significance == other.significance &&
        office == other.office &&
        etn == other.etn &&
        validFrom == other.validFrom &&
        validUntil == other.validUntil &&
        headline == other.headline &&
        fallback == other.fallback &&
        authoritativeSource == other.authoritativeSource &&
        duplicateOf == other.duplicateOf &&
        receivedVia == other.receivedVia;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, phenomena.hashCode);
    _$hash = $jc(_$hash, significance.hashCode);
    _$hash = $jc(_$hash, office.hashCode);
    _$hash = $jc(_$hash, etn.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, headline.hashCode);
    _$hash = $jc(_$hash, fallback.hashCode);
    _$hash = $jc(_$hash, authoritativeSource.hashCode);
    _$hash = $jc(_$hash, duplicateOf.hashCode);
    _$hash = $jc(_$hash, receivedVia.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmwinWarningPayload')
          ..add('action', action)
          ..add('phenomena', phenomena)
          ..add('significance', significance)
          ..add('office', office)
          ..add('etn', etn)
          ..add('validFrom', validFrom)
          ..add('validUntil', validUntil)
          ..add('headline', headline)
          ..add('fallback', fallback)
          ..add('authoritativeSource', authoritativeSource)
          ..add('duplicateOf', duplicateOf)
          ..add('receivedVia', receivedVia))
        .toString();
  }
}

class EmwinWarningPayloadBuilder
    implements Builder<EmwinWarningPayload, EmwinWarningPayloadBuilder> {
  _$EmwinWarningPayload? _$v;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  String? _phenomena;
  String? get phenomena => _$this._phenomena;
  set phenomena(String? phenomena) => _$this._phenomena = phenomena;

  String? _significance;
  String? get significance => _$this._significance;
  set significance(String? significance) => _$this._significance = significance;

  String? _office;
  String? get office => _$this._office;
  set office(String? office) => _$this._office = office;

  int? _etn;
  int? get etn => _$this._etn;
  set etn(int? etn) => _$this._etn = etn;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  DateTime? _validUntil;
  DateTime? get validUntil => _$this._validUntil;
  set validUntil(DateTime? validUntil) => _$this._validUntil = validUntil;

  String? _headline;
  String? get headline => _$this._headline;
  set headline(String? headline) => _$this._headline = headline;

  bool? _fallback;
  bool? get fallback => _$this._fallback;
  set fallback(bool? fallback) => _$this._fallback = fallback;

  EmwinWarningPayloadAuthoritativeSourceEnum? _authoritativeSource;
  EmwinWarningPayloadAuthoritativeSourceEnum? get authoritativeSource =>
      _$this._authoritativeSource;
  set authoritativeSource(
    EmwinWarningPayloadAuthoritativeSourceEnum? authoritativeSource,
  ) => _$this._authoritativeSource = authoritativeSource;

  EmwinWarningPayloadDuplicateOfBuilder? _duplicateOf;
  EmwinWarningPayloadDuplicateOfBuilder get duplicateOf =>
      _$this._duplicateOf ??= EmwinWarningPayloadDuplicateOfBuilder();
  set duplicateOf(EmwinWarningPayloadDuplicateOfBuilder? duplicateOf) =>
      _$this._duplicateOf = duplicateOf;

  EmwinWarningPayloadReceivedViaEnum? _receivedVia;
  EmwinWarningPayloadReceivedViaEnum? get receivedVia => _$this._receivedVia;
  set receivedVia(EmwinWarningPayloadReceivedViaEnum? receivedVia) =>
      _$this._receivedVia = receivedVia;

  EmwinWarningPayloadBuilder() {
    EmwinWarningPayload._defaults(this);
  }

  EmwinWarningPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _phenomena = $v.phenomena;
      _significance = $v.significance;
      _office = $v.office;
      _etn = $v.etn;
      _validFrom = $v.validFrom;
      _validUntil = $v.validUntil;
      _headline = $v.headline;
      _fallback = $v.fallback;
      _authoritativeSource = $v.authoritativeSource;
      _duplicateOf = $v.duplicateOf?.toBuilder();
      _receivedVia = $v.receivedVia;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmwinWarningPayload other) {
    _$v = other as _$EmwinWarningPayload;
  }

  @override
  void update(void Function(EmwinWarningPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmwinWarningPayload build() => _build();

  _$EmwinWarningPayload _build() {
    _$EmwinWarningPayload _$result;
    try {
      _$result =
          _$v ??
          _$EmwinWarningPayload._(
            action: BuiltValueNullFieldError.checkNotNull(
              action,
              r'EmwinWarningPayload',
              'action',
            ),
            phenomena: BuiltValueNullFieldError.checkNotNull(
              phenomena,
              r'EmwinWarningPayload',
              'phenomena',
            ),
            significance: BuiltValueNullFieldError.checkNotNull(
              significance,
              r'EmwinWarningPayload',
              'significance',
            ),
            office: BuiltValueNullFieldError.checkNotNull(
              office,
              r'EmwinWarningPayload',
              'office',
            ),
            etn: BuiltValueNullFieldError.checkNotNull(
              etn,
              r'EmwinWarningPayload',
              'etn',
            ),
            validFrom: BuiltValueNullFieldError.checkNotNull(
              validFrom,
              r'EmwinWarningPayload',
              'validFrom',
            ),
            validUntil: BuiltValueNullFieldError.checkNotNull(
              validUntil,
              r'EmwinWarningPayload',
              'validUntil',
            ),
            headline: headline,
            fallback: BuiltValueNullFieldError.checkNotNull(
              fallback,
              r'EmwinWarningPayload',
              'fallback',
            ),
            authoritativeSource: BuiltValueNullFieldError.checkNotNull(
              authoritativeSource,
              r'EmwinWarningPayload',
              'authoritativeSource',
            ),
            duplicateOf: _duplicateOf?.build(),
            receivedVia: receivedVia,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'duplicateOf';
        _duplicateOf?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EmwinWarningPayload',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_received_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PackageReceivedEventTypeEnum _$packageReceivedEventTypeEnum_report =
    const PackageReceivedEventTypeEnum._('report');
const PackageReceivedEventTypeEnum
_$packageReceivedEventTypeEnum_investigation =
    const PackageReceivedEventTypeEnum._('investigation');
const PackageReceivedEventTypeEnum
_$packageReceivedEventTypeEnum_chronicleExtract =
    const PackageReceivedEventTypeEnum._('chronicleExtract');
const PackageReceivedEventTypeEnum _$packageReceivedEventTypeEnum_evidence =
    const PackageReceivedEventTypeEnum._('evidence');

PackageReceivedEventTypeEnum _$packageReceivedEventTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'report':
      return _$packageReceivedEventTypeEnum_report;
    case 'investigation':
      return _$packageReceivedEventTypeEnum_investigation;
    case 'chronicleExtract':
      return _$packageReceivedEventTypeEnum_chronicleExtract;
    case 'evidence':
      return _$packageReceivedEventTypeEnum_evidence;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PackageReceivedEventTypeEnum>
_$packageReceivedEventTypeEnumValues =
    BuiltSet<PackageReceivedEventTypeEnum>(const <PackageReceivedEventTypeEnum>[
      _$packageReceivedEventTypeEnum_report,
      _$packageReceivedEventTypeEnum_investigation,
      _$packageReceivedEventTypeEnum_chronicleExtract,
      _$packageReceivedEventTypeEnum_evidence,
    ]);

const PackageReceivedEventSignatureStatusEnum
_$packageReceivedEventSignatureStatusEnum_valid =
    const PackageReceivedEventSignatureStatusEnum._('valid');
const PackageReceivedEventSignatureStatusEnum
_$packageReceivedEventSignatureStatusEnum_invalid =
    const PackageReceivedEventSignatureStatusEnum._('invalid');
const PackageReceivedEventSignatureStatusEnum
_$packageReceivedEventSignatureStatusEnum_unknownKey =
    const PackageReceivedEventSignatureStatusEnum._('unknownKey');

PackageReceivedEventSignatureStatusEnum
_$packageReceivedEventSignatureStatusEnumValueOf(String name) {
  switch (name) {
    case 'valid':
      return _$packageReceivedEventSignatureStatusEnum_valid;
    case 'invalid':
      return _$packageReceivedEventSignatureStatusEnum_invalid;
    case 'unknownKey':
      return _$packageReceivedEventSignatureStatusEnum_unknownKey;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PackageReceivedEventSignatureStatusEnum>
_$packageReceivedEventSignatureStatusEnumValues =
    BuiltSet<PackageReceivedEventSignatureStatusEnum>(
      const <PackageReceivedEventSignatureStatusEnum>[
        _$packageReceivedEventSignatureStatusEnum_valid,
        _$packageReceivedEventSignatureStatusEnum_invalid,
        _$packageReceivedEventSignatureStatusEnum_unknownKey,
      ],
    );

Serializer<PackageReceivedEventTypeEnum>
_$packageReceivedEventTypeEnumSerializer =
    _$PackageReceivedEventTypeEnumSerializer();
Serializer<PackageReceivedEventSignatureStatusEnum>
_$packageReceivedEventSignatureStatusEnumSerializer =
    _$PackageReceivedEventSignatureStatusEnumSerializer();

class _$PackageReceivedEventTypeEnumSerializer
    implements PrimitiveSerializer<PackageReceivedEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'report': 'report',
    'investigation': 'investigation',
    'chronicleExtract': 'chronicle-extract',
    'evidence': 'evidence',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'report': 'report',
    'investigation': 'investigation',
    'chronicle-extract': 'chronicleExtract',
    'evidence': 'evidence',
  };

  @override
  final Iterable<Type> types = const <Type>[PackageReceivedEventTypeEnum];
  @override
  final String wireName = 'PackageReceivedEventTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    PackageReceivedEventTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PackageReceivedEventTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PackageReceivedEventTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PackageReceivedEventSignatureStatusEnumSerializer
    implements PrimitiveSerializer<PackageReceivedEventSignatureStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'valid': 'valid',
    'invalid': 'invalid',
    'unknownKey': 'unknown-key',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'valid': 'valid',
    'invalid': 'invalid',
    'unknown-key': 'unknownKey',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PackageReceivedEventSignatureStatusEnum,
  ];
  @override
  final String wireName = 'PackageReceivedEventSignatureStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    PackageReceivedEventSignatureStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PackageReceivedEventSignatureStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PackageReceivedEventSignatureStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PackageReceivedEvent extends PackageReceivedEvent {
  @override
  final String receivedId;
  @override
  final String packageId;
  @override
  final PackageReceivedEventTypeEnum type;
  @override
  final String senderInstanceId;
  @override
  final String? title;
  @override
  final String tlp;
  @override
  final PackageReceivedEventSignatureStatusEnum? signatureStatus;
  @override
  final DateTime at;

  factory _$PackageReceivedEvent([
    void Function(PackageReceivedEventBuilder)? updates,
  ]) => (PackageReceivedEventBuilder()..update(updates))._build();

  _$PackageReceivedEvent._({
    required this.receivedId,
    required this.packageId,
    required this.type,
    required this.senderInstanceId,
    this.title,
    required this.tlp,
    this.signatureStatus,
    required this.at,
  }) : super._();
  @override
  PackageReceivedEvent rebuild(
    void Function(PackageReceivedEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PackageReceivedEventBuilder toBuilder() =>
      PackageReceivedEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PackageReceivedEvent &&
        receivedId == other.receivedId &&
        packageId == other.packageId &&
        type == other.type &&
        senderInstanceId == other.senderInstanceId &&
        title == other.title &&
        tlp == other.tlp &&
        signatureStatus == other.signatureStatus &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, receivedId.hashCode);
    _$hash = $jc(_$hash, packageId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, senderInstanceId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, signatureStatus.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PackageReceivedEvent')
          ..add('receivedId', receivedId)
          ..add('packageId', packageId)
          ..add('type', type)
          ..add('senderInstanceId', senderInstanceId)
          ..add('title', title)
          ..add('tlp', tlp)
          ..add('signatureStatus', signatureStatus)
          ..add('at', at))
        .toString();
  }
}

class PackageReceivedEventBuilder
    implements Builder<PackageReceivedEvent, PackageReceivedEventBuilder> {
  _$PackageReceivedEvent? _$v;

  String? _receivedId;
  String? get receivedId => _$this._receivedId;
  set receivedId(String? receivedId) => _$this._receivedId = receivedId;

  String? _packageId;
  String? get packageId => _$this._packageId;
  set packageId(String? packageId) => _$this._packageId = packageId;

  PackageReceivedEventTypeEnum? _type;
  PackageReceivedEventTypeEnum? get type => _$this._type;
  set type(PackageReceivedEventTypeEnum? type) => _$this._type = type;

  String? _senderInstanceId;
  String? get senderInstanceId => _$this._senderInstanceId;
  set senderInstanceId(String? senderInstanceId) =>
      _$this._senderInstanceId = senderInstanceId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  PackageReceivedEventSignatureStatusEnum? _signatureStatus;
  PackageReceivedEventSignatureStatusEnum? get signatureStatus =>
      _$this._signatureStatus;
  set signatureStatus(
    PackageReceivedEventSignatureStatusEnum? signatureStatus,
  ) => _$this._signatureStatus = signatureStatus;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  PackageReceivedEventBuilder() {
    PackageReceivedEvent._defaults(this);
  }

  PackageReceivedEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _receivedId = $v.receivedId;
      _packageId = $v.packageId;
      _type = $v.type;
      _senderInstanceId = $v.senderInstanceId;
      _title = $v.title;
      _tlp = $v.tlp;
      _signatureStatus = $v.signatureStatus;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PackageReceivedEvent other) {
    _$v = other as _$PackageReceivedEvent;
  }

  @override
  void update(void Function(PackageReceivedEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PackageReceivedEvent build() => _build();

  _$PackageReceivedEvent _build() {
    final _$result =
        _$v ??
        _$PackageReceivedEvent._(
          receivedId: BuiltValueNullFieldError.checkNotNull(
            receivedId,
            r'PackageReceivedEvent',
            'receivedId',
          ),
          packageId: BuiltValueNullFieldError.checkNotNull(
            packageId,
            r'PackageReceivedEvent',
            'packageId',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'PackageReceivedEvent',
            'type',
          ),
          senderInstanceId: BuiltValueNullFieldError.checkNotNull(
            senderInstanceId,
            r'PackageReceivedEvent',
            'senderInstanceId',
          ),
          title: title,
          tlp: BuiltValueNullFieldError.checkNotNull(
            tlp,
            r'PackageReceivedEvent',
            'tlp',
          ),
          signatureStatus: signatureStatus,
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'PackageReceivedEvent',
            'at',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

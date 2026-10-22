// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'received_package.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReceivedPackageTypeEnum _$receivedPackageTypeEnum_report =
    const ReceivedPackageTypeEnum._('report');
const ReceivedPackageTypeEnum _$receivedPackageTypeEnum_investigation =
    const ReceivedPackageTypeEnum._('investigation');
const ReceivedPackageTypeEnum _$receivedPackageTypeEnum_chronicleExtract =
    const ReceivedPackageTypeEnum._('chronicleExtract');
const ReceivedPackageTypeEnum _$receivedPackageTypeEnum_evidence =
    const ReceivedPackageTypeEnum._('evidence');

ReceivedPackageTypeEnum _$receivedPackageTypeEnumValueOf(String name) {
  switch (name) {
    case 'report':
      return _$receivedPackageTypeEnum_report;
    case 'investigation':
      return _$receivedPackageTypeEnum_investigation;
    case 'chronicleExtract':
      return _$receivedPackageTypeEnum_chronicleExtract;
    case 'evidence':
      return _$receivedPackageTypeEnum_evidence;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReceivedPackageTypeEnum> _$receivedPackageTypeEnumValues =
    BuiltSet<ReceivedPackageTypeEnum>(const <ReceivedPackageTypeEnum>[
      _$receivedPackageTypeEnum_report,
      _$receivedPackageTypeEnum_investigation,
      _$receivedPackageTypeEnum_chronicleExtract,
      _$receivedPackageTypeEnum_evidence,
    ]);

const ReceivedPackageSignatureStatusEnum
_$receivedPackageSignatureStatusEnum_valid =
    const ReceivedPackageSignatureStatusEnum._('valid');
const ReceivedPackageSignatureStatusEnum
_$receivedPackageSignatureStatusEnum_invalid =
    const ReceivedPackageSignatureStatusEnum._('invalid');
const ReceivedPackageSignatureStatusEnum
_$receivedPackageSignatureStatusEnum_unknownKey =
    const ReceivedPackageSignatureStatusEnum._('unknownKey');

ReceivedPackageSignatureStatusEnum _$receivedPackageSignatureStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'valid':
      return _$receivedPackageSignatureStatusEnum_valid;
    case 'invalid':
      return _$receivedPackageSignatureStatusEnum_invalid;
    case 'unknownKey':
      return _$receivedPackageSignatureStatusEnum_unknownKey;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReceivedPackageSignatureStatusEnum>
_$receivedPackageSignatureStatusEnumValues =
    BuiltSet<ReceivedPackageSignatureStatusEnum>(
      const <ReceivedPackageSignatureStatusEnum>[
        _$receivedPackageSignatureStatusEnum_valid,
        _$receivedPackageSignatureStatusEnum_invalid,
        _$receivedPackageSignatureStatusEnum_unknownKey,
      ],
    );

const ReceivedPackageKeySourceEnum _$receivedPackageKeySourceEnum_peerJwks =
    const ReceivedPackageKeySourceEnum._('peerJwks');
const ReceivedPackageKeySourceEnum _$receivedPackageKeySourceEnum_pinned =
    const ReceivedPackageKeySourceEnum._('pinned');

ReceivedPackageKeySourceEnum _$receivedPackageKeySourceEnumValueOf(
  String name,
) {
  switch (name) {
    case 'peerJwks':
      return _$receivedPackageKeySourceEnum_peerJwks;
    case 'pinned':
      return _$receivedPackageKeySourceEnum_pinned;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReceivedPackageKeySourceEnum>
_$receivedPackageKeySourceEnumValues = BuiltSet<ReceivedPackageKeySourceEnum>(
  const <ReceivedPackageKeySourceEnum>[
    _$receivedPackageKeySourceEnum_peerJwks,
    _$receivedPackageKeySourceEnum_pinned,
  ],
);

const ReceivedPackageReceivedViaEnum _$receivedPackageReceivedViaEnum_peer =
    const ReceivedPackageReceivedViaEnum._('peer');
const ReceivedPackageReceivedViaEnum _$receivedPackageReceivedViaEnum_import_ =
    const ReceivedPackageReceivedViaEnum._('import_');

ReceivedPackageReceivedViaEnum _$receivedPackageReceivedViaEnumValueOf(
  String name,
) {
  switch (name) {
    case 'peer':
      return _$receivedPackageReceivedViaEnum_peer;
    case 'import_':
      return _$receivedPackageReceivedViaEnum_import_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReceivedPackageReceivedViaEnum>
_$receivedPackageReceivedViaEnumValues =
    BuiltSet<ReceivedPackageReceivedViaEnum>(
      const <ReceivedPackageReceivedViaEnum>[
        _$receivedPackageReceivedViaEnum_peer,
        _$receivedPackageReceivedViaEnum_import_,
      ],
    );

Serializer<ReceivedPackageTypeEnum> _$receivedPackageTypeEnumSerializer =
    _$ReceivedPackageTypeEnumSerializer();
Serializer<ReceivedPackageSignatureStatusEnum>
_$receivedPackageSignatureStatusEnumSerializer =
    _$ReceivedPackageSignatureStatusEnumSerializer();
Serializer<ReceivedPackageKeySourceEnum>
_$receivedPackageKeySourceEnumSerializer =
    _$ReceivedPackageKeySourceEnumSerializer();
Serializer<ReceivedPackageReceivedViaEnum>
_$receivedPackageReceivedViaEnumSerializer =
    _$ReceivedPackageReceivedViaEnumSerializer();

class _$ReceivedPackageTypeEnumSerializer
    implements PrimitiveSerializer<ReceivedPackageTypeEnum> {
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
  final Iterable<Type> types = const <Type>[ReceivedPackageTypeEnum];
  @override
  final String wireName = 'ReceivedPackageTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ReceivedPackageTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReceivedPackageTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReceivedPackageTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ReceivedPackageSignatureStatusEnumSerializer
    implements PrimitiveSerializer<ReceivedPackageSignatureStatusEnum> {
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
  final Iterable<Type> types = const <Type>[ReceivedPackageSignatureStatusEnum];
  @override
  final String wireName = 'ReceivedPackageSignatureStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ReceivedPackageSignatureStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReceivedPackageSignatureStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReceivedPackageSignatureStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ReceivedPackageKeySourceEnumSerializer
    implements PrimitiveSerializer<ReceivedPackageKeySourceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'peerJwks': 'peer-jwks',
    'pinned': 'pinned',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'peer-jwks': 'peerJwks',
    'pinned': 'pinned',
  };

  @override
  final Iterable<Type> types = const <Type>[ReceivedPackageKeySourceEnum];
  @override
  final String wireName = 'ReceivedPackageKeySourceEnum';

  @override
  Object serialize(
    Serializers serializers,
    ReceivedPackageKeySourceEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReceivedPackageKeySourceEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReceivedPackageKeySourceEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ReceivedPackageReceivedViaEnumSerializer
    implements PrimitiveSerializer<ReceivedPackageReceivedViaEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'peer': 'peer',
    'import_': 'import',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'peer': 'peer',
    'import': 'import_',
  };

  @override
  final Iterable<Type> types = const <Type>[ReceivedPackageReceivedViaEnum];
  @override
  final String wireName = 'ReceivedPackageReceivedViaEnum';

  @override
  Object serialize(
    Serializers serializers,
    ReceivedPackageReceivedViaEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReceivedPackageReceivedViaEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReceivedPackageReceivedViaEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ReceivedPackage extends ReceivedPackage {
  @override
  final String id;
  @override
  final String packageId;
  @override
  final ReceivedPackageTypeEnum type;
  @override
  final String objectRef;
  @override
  final String title;
  @override
  final ReceivedPackageSender sender;
  @override
  final BuiltList<PackageManifestAuthorsInner> authors;
  @override
  final String tlp;
  @override
  final ReceivedPackageSignatureStatusEnum signatureStatus;
  @override
  final ReceivedPackageKeySourceEnum? keySource;
  @override
  final bool hashesVerified;
  @override
  final ReceivedPackageReceivedViaEnum receivedVia;
  @override
  final DateTime receivedAt;
  @override
  final BuiltList<String>? recipients;
  @override
  final String? message;
  @override
  final DateTime? acknowledgedAt;
  @override
  final BuiltList<ProvenanceChainEntry>? provenanceChain;
  @override
  final BuiltList<ReceivedPackageContentsInner>? contents;

  factory _$ReceivedPackage([void Function(ReceivedPackageBuilder)? updates]) =>
      (ReceivedPackageBuilder()..update(updates))._build();

  _$ReceivedPackage._({
    required this.id,
    required this.packageId,
    required this.type,
    required this.objectRef,
    required this.title,
    required this.sender,
    required this.authors,
    required this.tlp,
    required this.signatureStatus,
    this.keySource,
    required this.hashesVerified,
    required this.receivedVia,
    required this.receivedAt,
    this.recipients,
    this.message,
    this.acknowledgedAt,
    this.provenanceChain,
    this.contents,
  }) : super._();
  @override
  ReceivedPackage rebuild(void Function(ReceivedPackageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReceivedPackageBuilder toBuilder() => ReceivedPackageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReceivedPackage &&
        id == other.id &&
        packageId == other.packageId &&
        type == other.type &&
        objectRef == other.objectRef &&
        title == other.title &&
        sender == other.sender &&
        authors == other.authors &&
        tlp == other.tlp &&
        signatureStatus == other.signatureStatus &&
        keySource == other.keySource &&
        hashesVerified == other.hashesVerified &&
        receivedVia == other.receivedVia &&
        receivedAt == other.receivedAt &&
        recipients == other.recipients &&
        message == other.message &&
        acknowledgedAt == other.acknowledgedAt &&
        provenanceChain == other.provenanceChain &&
        contents == other.contents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, packageId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, objectRef.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, sender.hashCode);
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, signatureStatus.hashCode);
    _$hash = $jc(_$hash, keySource.hashCode);
    _$hash = $jc(_$hash, hashesVerified.hashCode);
    _$hash = $jc(_$hash, receivedVia.hashCode);
    _$hash = $jc(_$hash, receivedAt.hashCode);
    _$hash = $jc(_$hash, recipients.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, acknowledgedAt.hashCode);
    _$hash = $jc(_$hash, provenanceChain.hashCode);
    _$hash = $jc(_$hash, contents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReceivedPackage')
          ..add('id', id)
          ..add('packageId', packageId)
          ..add('type', type)
          ..add('objectRef', objectRef)
          ..add('title', title)
          ..add('sender', sender)
          ..add('authors', authors)
          ..add('tlp', tlp)
          ..add('signatureStatus', signatureStatus)
          ..add('keySource', keySource)
          ..add('hashesVerified', hashesVerified)
          ..add('receivedVia', receivedVia)
          ..add('receivedAt', receivedAt)
          ..add('recipients', recipients)
          ..add('message', message)
          ..add('acknowledgedAt', acknowledgedAt)
          ..add('provenanceChain', provenanceChain)
          ..add('contents', contents))
        .toString();
  }
}

class ReceivedPackageBuilder
    implements Builder<ReceivedPackage, ReceivedPackageBuilder> {
  _$ReceivedPackage? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _packageId;
  String? get packageId => _$this._packageId;
  set packageId(String? packageId) => _$this._packageId = packageId;

  ReceivedPackageTypeEnum? _type;
  ReceivedPackageTypeEnum? get type => _$this._type;
  set type(ReceivedPackageTypeEnum? type) => _$this._type = type;

  String? _objectRef;
  String? get objectRef => _$this._objectRef;
  set objectRef(String? objectRef) => _$this._objectRef = objectRef;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ReceivedPackageSenderBuilder? _sender;
  ReceivedPackageSenderBuilder get sender =>
      _$this._sender ??= ReceivedPackageSenderBuilder();
  set sender(ReceivedPackageSenderBuilder? sender) => _$this._sender = sender;

  ListBuilder<PackageManifestAuthorsInner>? _authors;
  ListBuilder<PackageManifestAuthorsInner> get authors =>
      _$this._authors ??= ListBuilder<PackageManifestAuthorsInner>();
  set authors(ListBuilder<PackageManifestAuthorsInner>? authors) =>
      _$this._authors = authors;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  ReceivedPackageSignatureStatusEnum? _signatureStatus;
  ReceivedPackageSignatureStatusEnum? get signatureStatus =>
      _$this._signatureStatus;
  set signatureStatus(ReceivedPackageSignatureStatusEnum? signatureStatus) =>
      _$this._signatureStatus = signatureStatus;

  ReceivedPackageKeySourceEnum? _keySource;
  ReceivedPackageKeySourceEnum? get keySource => _$this._keySource;
  set keySource(ReceivedPackageKeySourceEnum? keySource) =>
      _$this._keySource = keySource;

  bool? _hashesVerified;
  bool? get hashesVerified => _$this._hashesVerified;
  set hashesVerified(bool? hashesVerified) =>
      _$this._hashesVerified = hashesVerified;

  ReceivedPackageReceivedViaEnum? _receivedVia;
  ReceivedPackageReceivedViaEnum? get receivedVia => _$this._receivedVia;
  set receivedVia(ReceivedPackageReceivedViaEnum? receivedVia) =>
      _$this._receivedVia = receivedVia;

  DateTime? _receivedAt;
  DateTime? get receivedAt => _$this._receivedAt;
  set receivedAt(DateTime? receivedAt) => _$this._receivedAt = receivedAt;

  ListBuilder<String>? _recipients;
  ListBuilder<String> get recipients =>
      _$this._recipients ??= ListBuilder<String>();
  set recipients(ListBuilder<String>? recipients) =>
      _$this._recipients = recipients;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DateTime? _acknowledgedAt;
  DateTime? get acknowledgedAt => _$this._acknowledgedAt;
  set acknowledgedAt(DateTime? acknowledgedAt) =>
      _$this._acknowledgedAt = acknowledgedAt;

  ListBuilder<ProvenanceChainEntry>? _provenanceChain;
  ListBuilder<ProvenanceChainEntry> get provenanceChain =>
      _$this._provenanceChain ??= ListBuilder<ProvenanceChainEntry>();
  set provenanceChain(ListBuilder<ProvenanceChainEntry>? provenanceChain) =>
      _$this._provenanceChain = provenanceChain;

  ListBuilder<ReceivedPackageContentsInner>? _contents;
  ListBuilder<ReceivedPackageContentsInner> get contents =>
      _$this._contents ??= ListBuilder<ReceivedPackageContentsInner>();
  set contents(ListBuilder<ReceivedPackageContentsInner>? contents) =>
      _$this._contents = contents;

  ReceivedPackageBuilder() {
    ReceivedPackage._defaults(this);
  }

  ReceivedPackageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _packageId = $v.packageId;
      _type = $v.type;
      _objectRef = $v.objectRef;
      _title = $v.title;
      _sender = $v.sender.toBuilder();
      _authors = $v.authors.toBuilder();
      _tlp = $v.tlp;
      _signatureStatus = $v.signatureStatus;
      _keySource = $v.keySource;
      _hashesVerified = $v.hashesVerified;
      _receivedVia = $v.receivedVia;
      _receivedAt = $v.receivedAt;
      _recipients = $v.recipients?.toBuilder();
      _message = $v.message;
      _acknowledgedAt = $v.acknowledgedAt;
      _provenanceChain = $v.provenanceChain?.toBuilder();
      _contents = $v.contents?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReceivedPackage other) {
    _$v = other as _$ReceivedPackage;
  }

  @override
  void update(void Function(ReceivedPackageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReceivedPackage build() => _build();

  _$ReceivedPackage _build() {
    _$ReceivedPackage _$result;
    try {
      _$result =
          _$v ??
          _$ReceivedPackage._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'ReceivedPackage',
              'id',
            ),
            packageId: BuiltValueNullFieldError.checkNotNull(
              packageId,
              r'ReceivedPackage',
              'packageId',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ReceivedPackage',
              'type',
            ),
            objectRef: BuiltValueNullFieldError.checkNotNull(
              objectRef,
              r'ReceivedPackage',
              'objectRef',
            ),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'ReceivedPackage',
              'title',
            ),
            sender: sender.build(),
            authors: authors.build(),
            tlp: BuiltValueNullFieldError.checkNotNull(
              tlp,
              r'ReceivedPackage',
              'tlp',
            ),
            signatureStatus: BuiltValueNullFieldError.checkNotNull(
              signatureStatus,
              r'ReceivedPackage',
              'signatureStatus',
            ),
            keySource: keySource,
            hashesVerified: BuiltValueNullFieldError.checkNotNull(
              hashesVerified,
              r'ReceivedPackage',
              'hashesVerified',
            ),
            receivedVia: BuiltValueNullFieldError.checkNotNull(
              receivedVia,
              r'ReceivedPackage',
              'receivedVia',
            ),
            receivedAt: BuiltValueNullFieldError.checkNotNull(
              receivedAt,
              r'ReceivedPackage',
              'receivedAt',
            ),
            recipients: _recipients?.build(),
            message: message,
            acknowledgedAt: acknowledgedAt,
            provenanceChain: _provenanceChain?.build(),
            contents: _contents?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sender';
        sender.build();
        _$failedField = 'authors';
        authors.build();

        _$failedField = 'recipients';
        _recipients?.build();

        _$failedField = 'provenanceChain';
        _provenanceChain?.build();
        _$failedField = 'contents';
        _contents?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReceivedPackage',
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
